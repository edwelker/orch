from django.db import models
from imagekit.models import ImageModel

# Create your models here.

class Soloist(ImageModel):
    name = models.CharField(max_length=100, help_text="Artist Name.")
    instrument = models.CharField(max_length=100, help_text="Artist Instrument.")
    work = models.CharField(max_length=100, blank=True, null=True, help_text="The piece they're playing. Optional.")
    bio = models.TextField(blank=True, null=True, help_text="Artist Biography (Optional). Please wrap paragraphs in '&lt;p&gt;....&lt;/p&gt;'.")
    slug = models.SlugField( unique=True, help_text='Suggested value is automatically generated from soloist name. Must be unique.')
    image = models.ImageField(blank=True,null=True,upload_to='src_imgs/soloists',help_text="Upload an image for this artist. Optional.")
    num_views = models.PositiveIntegerField(editable=False, default=0)
	
    class IKOptions:
        spec_module = 'soloists.soloist_specs'
        image_field = 'image'
        save_count_as = 'num_views'
        cache_dir = 'model_imgs'
    
    def __unicode__(self):
        return self.name
        
    def get_absolute_url(self):
        return "/artists/%s/" % self.slug
    
    def search_result(self):
        return self.__unicode__()

    def type(self):
        return "Soloist"
