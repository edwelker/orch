from django.db import models
from imagekit.models import ImageModel

# Create your models here.

class Sponsor(ImageModel):
    name = models.CharField(max_length=200)
    url = models.URLField(max_length=500, blank=True, null=True, help_text="Optional, but highly recommended")
    slug = models.SlugField(unique=True, help_text='Auto generated from sponsor name.')

    image = models.ImageField(blank=True, null=True, default='', upload_to='src_imgs/sponsors')
    num_views = models.PositiveIntegerField(editable=False, default=0)

    class IKOptions:
        spec_module = 'sponsors.sponsor_specs'
        image_field = 'image'
        save_count_as = 'num_views'
        cache_dir = 'model_imgs'

    def __unicode__(self):
        return "%s" % self.name
    
    def get_absolute_url(self):
        return "/sponsors/%s/" % self.slug.lower()

