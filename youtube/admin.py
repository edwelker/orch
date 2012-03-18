from orch.youtube.models import YouTubeVideo
from django.contrib import admin

class YouTubeVideoAdmin(admin.ModelAdmin):
    list_display = ('title', 'published')
    ordering = ['-published']

#admin.site.register(YouTubeVideo, YouTubeVideoAdmin)
