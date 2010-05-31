from django.db import models

# Create your models here.
class Piece(models.Model):
    title = models.CharField(max_length=250)
    movement = models.CharField(blank=True,null=True,max_length=100, help_text="Optional")
    composer = models.ForeignKey("Composer")
    soloist = models.ManyToManyField("soloists.Soloist", blank=True, null=True)
    
    def __unicode__(self):
        if self.movement:
            return u"%s - %s, %s" % (self.composer, self.title, self.movement,)
        else:
            return u"%s - %s" % (self.composer, self.title,)

    def disp(self):
        if self.movement:
            return u"%s - %s, %s" % (self.composer.disp(), self.title, self.movement,)
        else:
            return u"%s - %s" % (self.composer.disp(), self.title,)

    class Meta:
        ordering = ['composer']

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
            return u"%s" % self.other_composer
        else:
            return u"%s, %s %s" % (self.last_name, self.first_name, self.middle_name, )


    def disp(self):
         if self.other_composer:
            return u"%s" % self.other_composer
         else:
            return u"%s %s %s" % (self.first_name, self.middle_name, self.last_name, )

       
