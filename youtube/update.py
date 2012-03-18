#!/Users/ewelker/env/orch/bin/python
# encoding: utf-8
"""Auto-populate the youtube model using the youtube api

todo: make this into a custom django-admin command
output log when something is added
"""
import sys, os, re

home = os.path.expanduser('~')

os.environ['VIRTUAL_ENV'] = home + '/env/orch'
venv = home + '/env/orch/bin/activate_this.py'
execfile(venv, dict(__file__=venv))

sys.path.append('../')
os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'
from django.conf import settings

from youtube.models import YouTubeVideo

#todo: move this to django settings
uri = 'http://gdata.youtube.com/feeds/api/users/colorch/uploads'

with open('youtube_developer_key.ini', 'r') as f:
    yt_api_key = f.read().rstrip()


def entry_to_dict(e):
    #get all of the class attributes (non-private, thus not startswith('_') not that it helps, but just for fun
    keys = tuple([attr for attr in vars(YouTubeVideo()).keys() if not (attr.startswith('_'))])

    d = dict.fromkeys(keys)
    d['title'] = e.media.title.text
    d['published'] = e.published.text.replace("T", ' ').replace(".000Z", "")
    d['desc'] = e.media.description.text
    d['embed_url'] = e.GetSwfUrl()
    import datetime
    d['length'] = datetime.timedelta(seconds= int(e.media.duration.seconds) )
    d['thumbnail'] = e.media.thumbnail[0].url
    
    return d

if __name__ == '__main__':
    from client import YouTubeClient
    client = YouTubeClient(yt_api_key)
    entries = client.get_uploads(uri)

    for external in entries.entry:
        if not external.GetSwfUrl() in [local.embed_url for local in YouTubeVideo.objects.all()]:
            d = entry_to_dict(external)
            print "Adding video: %s" %  d['title']
            m = YouTubeVideo(**d)
            m.save()
