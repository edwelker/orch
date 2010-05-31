from orch.pieces.models import Composer, Piece
from django.contrib import admin

class ComposerInline(admin.TabularInline):
    model = Composer

class PieceAdmin(admin.ModelAdmin):
    inlines = [ ComposerInline, ]

admin.site.register(Composer)
admin.site.register(Piece, PieceAdmin)

