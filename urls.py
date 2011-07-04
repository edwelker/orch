from django.conf.urls.defaults import *
from django.conf import settings
from events.models import Season, Location, Event, PreConcertDiscussion
from soloists.models import Soloist

from django.contrib import databrowse
from django.contrib.admin.views.decorators import staff_member_required

from django.http import HttpResponsePermanentRedirect

import os
here = lambda *x: os.path.join(os.path.abspath(os.path.dirname(__file__)), *x)

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Example:
    # (r'^orch/', include('orch.foo.urls')),
    (r'^$', 'orch.homepage_viewer.views.home'),
    
    (r'^members/$', 'orch.roster.views.all_members'),
    (r'^members/(?P<first_name>.*)_(?P<last_name>.*)/$', 'orch.roster.views.member'),
    
    (r'^season/$', 'events.views.view_current_season'),
    (r'^seasons/$', 'events.views.all_seasons'),
    (r'^seasons/(?P<slug>[-\w]+)/$', 'events.views.view_season'),
    (r'^season/events/(?P<slug>[-\w]+)/$', 'events.views.view_specific_event'),
    (r'^locations/$', 'events.views.all_locations'),
    (r'^locations/(?P<slug>[-\w]+)/$', 'events.views.single_location'),

    (r'^artists/$', 'soloists.views.all_soloists'),
    (r'^artists/(?P<slug>[-\w]+)/$', 'soloists.views.single_soloist'),

    (r'^sponsors/$', 'sponsors.views.all'),
    
    (r'^search/', include('haystack.urls')),

    (r'^youngartists\.shtml', lambda request: HttpResponsePermanentRedirect('/young_artist_competition')),
    (r'^index\.shtml', lambda request: HttpResponsePermanentRedirect('/')),
    (r'^compcomp\.shtml', lambda request: HttpResponsePermanentRedirect('/composer_competition')),
    (r'^donation\.shtml', lambda request: HttpResponsePermanentRedirect('/donate')),

    # Uncomment the admin/doc line below and add 'django.contrib.admindocs' 
    # to INSTALLED_APPS to enable admin documentation:
    #(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    (r'^admin/', include(admin.site.urls)),
    (r'^databrowse/(.*)', staff_member_required(databrowse.site.root)),
)

if settings.DEBUG:
    urlpatterns += patterns('',
        (r'^site_media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': here('site_media') }),
        (r'^images/(?P<path>.*)$', 'django.views.static.serve', {'document_root': here("site_media/images") }),
        
        (r'^uploads/(?P<path>.*)$', 'django.views.static.serve', {'document_root': here("site_media/uploads") }),
        (r'^model_imgs/(?P<path>.*)$', 'django.views.static.serve', {'document_root': here("site_media/model_imgs") }),
    )
