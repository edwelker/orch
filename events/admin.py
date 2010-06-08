from orch.events.models import Season, Event, Location, PreConcertDiscussion
from django.contrib import admin

class SeasonAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ['name']}
    list_display = ('name', 'startdate', 'enddate', 'description')

admin.site.register(Season, SeasonAdmin)

class LocationAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ['name']}
    list_display = ('name', 'city', 'zip')
    
admin.site.register(Location, LocationAdmin)

class EventAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ['name']}
    list_display = ('name', 'date', 'location', 'season')
    list_filter = ('location', 'season')
    ordering = ['-date']
    filter_horizontal = ('pieces',)    

    fieldsets = (
            ("Basic", {'fields': ('name','date','location','season','description','slug','pieces')}),
            ("Advanced", {'classes':('collapse',),'fields':('ticket_link','alt_time','alt_date','soloists','image','preconcert_discussion')})
            )

admin.site.register(Event, EventAdmin)

class PreConcertDiscussionAdmin(admin.ModelAdmin):
    pass

admin.site.register(PreConcertDiscussion)

