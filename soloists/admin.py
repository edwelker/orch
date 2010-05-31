from orch.soloists.models import Soloist
from django.contrib import admin

class SoloistAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug': ['name']}
    list_display = ('name', 'instrument', 'work')
    list_filter = ('instrument',)

admin.site.register(Soloist, SoloistAdmin)
