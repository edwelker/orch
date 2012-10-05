from django.db import models
from imagekit.models import ImageModel

# Create your models here.
class Piece(models.Model):
    title = models.CharField(max_length=250)
    movement = models.CharField(blank=True,null=True,max_length=100, help_text="Optional")
    composer = models.ForeignKey("Composer")
    soloist = models.ManyToManyField("soloists.Soloist", blank=True, null=True)
    notes = models.TextField(blank=True, null=True, help_text="Piece Notes (Optional). Please wrap paragraphs in '&lt;p&gt;....&lt;/p&gt;'.")
    
    def __unicode__(self):
        if self.movement:
            return u"%s - %s, %s" % (self.composer, self.title, self.movement,)
        else:
            return u"%s - %s" % (self.composer, self.title,)

    def disp(self):
        c = self.composer.disp()

        if c == " ":
            return u"%s" % (self.title,)
        elif self.movement:
            return u"%s - %s, %s" % (self.composer.disp(), self.title, self.movement,)
        else:
            return u"%s - %s" % (self.composer.disp(), self.title,)

    def pretty(self):
        c = self.composer.disp()

        if c == " ":
            return u"%s" % (self.title,)
        elif self.movement:
            return u"%s, %s, by %s" % (self.title, self.movement, self.composer.disp(), )
        else:
            return u"%s, by %s" % (self.title, self.composer.disp(),)

    # TODO: fix horrible hack
    def audioclips(self):
        if self.id == 373:  # chapela inguesu
            return [ '/uploads/2012-13/audio/Inguesu.mp3' ]
        if self.id == 366:  # beethoven 8th
            return [ '/uploads/2012-13/audio/Beethoven1mvtexposition.mp3', '/uploads/2012-13/audio/Beethoven3mvtundance.mp3', '/uploads/2012-13/audio/Beethoven4mvtHaydn.mp3']
        if self.id == 374:  # bernstein 1st
            return [ '/uploads/2012-13/audio/Bernstein1.mp3', '/uploads/2012-13/audio/Bernstein2stings.mp3', '/uploads/2012-13/audio/Bernstein3mezzo.mp3']
        return None

    class Meta:
        ordering = ['composer']

class Composer(ImageModel):
    first_name = models.CharField(blank=True,null=True,max_length=100)
    middle_name = models.CharField(blank=True,null=True,max_length=100)
    last_name = models.CharField(blank=True,null=True,max_length=100)

    bio = models.TextField(blank=True,null=True,help_text="Optional, but please wrap paragraphs in '&lt;p&gt;...&lt;/p&gt;'.")

    other_composer = models.CharField(blank=True,null=True,max_length=100, help_text="For cases where composer is 'Traditional' or something not following the First Middle Last name pattern.")

    photo = models.ImageField(blank=True,null=True,default='',upload_to='src_imgs/composers',help_text="Optional.")
    num_views = models.PositiveIntegerField(null=True,editable=False, default=0)

    class IKOptions:
        spec_module = 'pieces.composer_specs'
        image_field = 'photo'
        save_count_as = 'num_views'
        cache_dir = 'model_imgs'

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

       
