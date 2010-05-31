from django.db import models

# Create your models here.
class Piece(models.Model):
    title = models.CharField(max_length=250)
    movement = models.CharField(blank=True,null=True,max_length=100, help_text="Optional")
    composer = models.ForeignKey("Composer")
    def __unicode__(self):
        return "%s" % self.title

class Composer(models.Model):
    first_name = models.CharField(blank=True,null=True,max_length=100)
    middle_name = models.CharField(blank=True,null=True,max_length=100)
    last_name = models.CharField(blank=True,null=True,max_length=100)

    other_composer = models.CharField(blank=True,null=True,max_length=100, help_text="For cases where composer is 'Traditional' or something not following the First Middle Last name pattern.")

    url = models.URLField(blank=True,null=True)

    class Meta:
        ordering = ["last_name"]

    def __unicode__(self):
        if self.other_composer:
            return "%s" % self.other_composer
        else:
            return "%s, %s %s" % (self.last_name, self.first_name, self.middle_name)
