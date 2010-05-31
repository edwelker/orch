from django.db import models

# Create your models here.
class Piece(models.Model):
    title = models.CharField(max_length=250)
    movement = models.CharField(max_length=100, help_text="Optional")


class Composer(models.Model):
    first_name = models.CharField(blank=True,null=True,max_length=100)
    middle_name = models.CharField(blank=True,null=True,max_length=100)
    last_name = models.CharField(blank=True,null=True,max_length=100)

    other_composer = models.CharField(blank=True,null=True,max_length=100, help_text="For cases where composer is 'Traditional' or something like that")

    url = models.URLField(blank=True,null=True)

    piece = models.ForeignKey(Piece)
