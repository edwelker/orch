from datetime import datetime
from django.conf import settings
from django.core.cache import cache
import twitter, feedparser
import re
from dateutil.parser import parse
from django.http import HttpResponseServerError

pattern = r'''\b((?:(?:http)://|www\.)[-a-zA-Z0-9+&@#/%=~_|$?!:,.]*[a-zA-Z0-9+&@#/%=~_|$])'''
replacement = '<a href="\\1">\\1</a>'
httpreplacement = '<a href="http://\\1">\\1</a>'
httpwwwreplacement = '<a href="http://www.\\1">\\1</a>'

def latest_tweets( request ):
    tweets = cache.get( 'tweets' )
    
    if tweets:
        return {"tweets": tweets}

    dates = []

    api = twitter.Api()
    try:
        tweets = api.GetUserTimeline( settings.TWITTER_USER, count=2 )
        for t in tweets:
            t.date = datetime.strptime( t.created_at, "%a %b %d %H:%M:%S +0000 %Y" )
            if re.search(pattern, t.text) and re.search(pattern, t.text).expand('\\1').startswith('www'):
                t.text = re.sub(pattern, httpreplacement, t.text)
            elif re.search(pattern, t.text) and re.search(pattern, t.text).expand('\\1').startswith('columbiaorchestra.org'):
                t.text = re.sub(pattern, httpwwwreplacement, t.text)
            else:
                t.text = re.sub(pattern, replacement, t.text)
    except:
        return HttpResponseServerError('Twitter failure')
    
    cache.set( 'tweets', tweets, settings.TWITTER_TIMEOUT )

    return {"tweets": tweets, "dates": dates}


def latest_facebook( request ):
    fb = cache.get( 'fb' )
    
    if fb: 
        return {'fb': fb}

    try:
        feed = feedparser.parse('http://www.facebook.com/feeds/page.php?format=atom10&id=211864312316')    
        fb = feed['entries'][0:1]
        #dates = [parse(d.published) for d in fb]
    
        for entry in fb:
            entry['published'] = parse(entry.published)
            entry['title'] = re.sub(pattern, replacement, entry.title)
            
    except:
        return HttpResponseServerError('Facebook failure')
    
    cache.set( 'fb', fb, settings.TWITTER_TIMEOUT )    
    
    return { 'fb': fb }
