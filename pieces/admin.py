from orch.pieces.models import Composer, Piece
from django.contrib import admin

class ComposerInline(admin.StackedInline):
    model = Composer

class PieceAdmin(admin.ModelAdmin):
    inlines = [ ComposerInline, ]

class ComposerAdmin(admin.ModelAdmin):
#    fieldsets = (
#            ("Standard Composer", { 'fields': (('first_name', 'middle_name', 'last_name'), 'url')}),
#            (None, { 'fields': ('other_composer')}),
#            )
    pass

admin.site.register(Composer, ComposerAdmin)
admin.site.register(Piece, PieceAdmin)

