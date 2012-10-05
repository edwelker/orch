from django.db import models
from imagekit.models import ImageModel
from orch.pieces.models import Piece
from sortedm2m.fields import SortedManyToManyField

# Create your models here.
class Season(models.Model):
    name = models.CharField(max_length=100, unique=True, help_text="Season name. For example: '2008-2009 Season'")
    startdate = models.DateField( help_text="A day before season's first event (including rehearsals, etc.).")
    enddate = models.DateField( help_text="A day after the last season's last event.")
    description = models.CharField(max_length=200, blank=True, null=True, help_text="Season description. May be displayed occasionally when it's an anniversary year, etc.")
    slug = models.SlugField(unique=True, help_text='Suggested value is automatically generated from season name. Must be unique.')

    def __unicode__(self):
        return self.name
    
    class Meta:
        ordering = ["-startdate"]

    def get_absolute_url(self):
        return "/seasons/%s/" % self.slug
    



class Location(models.Model):
    name = models.CharField(max_length=100, help_text="Name of the place, for example, 'Meyerhoff Symphony Hall'")
    address = models.CharField(max_length=50, help_text="First line of address. Does not include City, State, or Zip.")
    city = models.CharField(max_length=60)
    state = models.CharField(max_length=50)
    zip = models.CharField(max_length=10)
    url = models.URLField(max_length=500, help_text="Required. Google maps directions to the location.")
    alt_url = models.URLField( blank=True, null=True, help_text="Optional. Alternate link to directions (like through an official website [the BSO's link to the Meyerhoff, etc.])")
    slug = models.SlugField(unique=True, help_text='Suggested value is automatically generated from location name. Must be unique.')
    
    def __unicode__(self):
        return self.name
        
    def get_absolute_url(self):
        return "/locations/%s/" % self.slug.lower()
    
    def search_result(self):
        return self.__unicode__()
    
    def type(self):
        return "Location"




class Event(ImageModel):
    name = models.CharField(max_length=100, help_text="Name of the Event. Must be unique, even across seasons (so if you're doing 'Holiday Concert', make it '2009 Holiday Concert', etc.)")
    date = models.DateTimeField(blank=True,null=True)
    alt_time = models.TimeField(blank=True,null=True, verbose_name="Alternate Time", help_text="Optional")
    alt_date = models.DateTimeField(blank=True, null=True, verbose_name="Alternate Date", help_text="Optional")
    location = models.ForeignKey(Location)
    ticket_link = models.URLField( blank=True, null=True, help_text="Link to purchase tickets online.")
    season = models.ForeignKey(Season)
    description = models.TextField(help_text="Description paragraphs (required). Please wrap all paragraphs in '&lt;p&gt;....&lt;/p&gt;'.")    
    slug = models.SlugField(unique=True, help_text='Suggested value is automatically generated from event name. Must be unique.')
    preconcert_discussion = models.OneToOneField('PreConcertDiscussion', blank=True, null=True)
    
    pieces = SortedManyToManyField('pieces.Piece',blank=True,null=True)
    soloists = models.ManyToManyField('soloists.Soloist',blank=True,null=True,help_text="ONLY use this when a soloist is not performing a specific piece listed on event... for example, random pops pieces, etc.")
    
    image = models.ImageField(blank=True,null=True,default='',upload_to='src_imgs/events',help_text="Optional. Soloist and composer images will take presidence over this image.")
    num_views = models.PositiveIntegerField(editable=False, default=0)
	
    class IKOptions:
        spec_module = 'events.event_specs'
        image_field = 'image'
        save_count_as = 'num_views'
        cache_dir = 'model_imgs'
    
    STATUS=(
            (1, "Orchestra"),
            (2, "Chamber"),
            )
    
    status = models.IntegerField(choices=STATUS, default=1, help_text="Primary events are major and require an image as they will always appear first on the homepage. Secondary include chamber concerts, etc.")

    def __unicode__(self):
        return self.name

    class Meta:
        ordering = ["date"]

    def get_absolute_url(self):
        return "/season/events/%s/" % self.slug
    
    def search_result(self):
        return self.__unicode__()

    def type(self):
        return "Concert"

    # hack -- remove once "conductor" has been added to the Event model
    def conductor(self):
        if self.id in [161,162,163,166,170,165]:
            return { 'name':'Jason Love', 'get_absolute_url':'/members/jason_love/'}
        return None

    # hack -- remove once "youtube" has been added to the Event model
    def youtube(self):
        if self.id == 161:
            return 'H7YhASkIb3I'
        return None


class PreConcertDiscussion(models.Model):
    time = models.TimeField()
    speaker = models.CharField(max_length=100)
    talk_location = models.CharField(max_length=200, help_text="Will be used in a sentence, '...at (time) in the (talk location).'")
    sponsor = models.CharField(max_length=150, blank=True, null=True, help_text="Optional. When added will add 'Brought to you by (sponsor name)' line to the Pre-concert discussion mention.")
    youtube_embed_code = models.TextField(blank=True, null=True, help_text="Just copy and paste the embed code from Youtube.")    
    def __unicode__(self):
        return self.event.name
    
