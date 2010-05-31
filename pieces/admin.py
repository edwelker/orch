from orch.pieces.models import Composer, Piece
from django.contrib import admin

class PieceInline(admin.StackedInline):
    model = Piece 
    extra = 1

class ComposerAdmin(admin.ModelAdmin):
    inlines = [ PieceInline, ]

    fieldsets = (
            ("Standard Composer", { 'fields': (('first_name', 'middle_name', 'last_name'), 'url')}),
            ("Advanced", { 'classes' : ('collapse',), 'fields': ('other_composer',)}),
            )
    list_display = ('__unicode__',)
    search_fields = ('last_name', 'first_name', 'middle_name', 'other_composer',)
    list_per_page = 50

admin.site.register(Composer, ComposerAdmin)
admin.site.register(Piece)

