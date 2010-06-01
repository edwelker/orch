import os, sys, site

#add virtualenv
site.addsitedir('/home/gbyo/vir/col/lib/python2.5/site-packages')

#fix errors
sys.stdout = sys.stderr

#new way to add sys.path
#project = os.path.dirname(__file__)
#workspace = os.path.dirname(project)
#sys.path.append(workspace)

sys.path = ['/home/gbyo/webapps/columbia_orchestra', '/home/gbyo/webapps/columbia_orchestra/orch', '/home/gbyo/webapps/columbia_orchestra/orch/lib/python2.5'] + sys.path

from django.core.handlers.wsgi import WSGIHandler

os.environ['DJANGO_SETTINGS_MODULE'] = 'orch.settings'
application = WSGIHandler()
