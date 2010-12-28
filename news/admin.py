from news.models import News
from django.contrib import admin

class NewsAdmin(admin.ModelAdmin):
    list_display = ('title', 'post_date', 'unpost_date', 'order')

admin.site.register(News, NewsAdmin)
