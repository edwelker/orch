from django.db import models
from django.contrib import admin
from imagekit.models import ImageModel

# Create your models here.
class Instrument(models.Model):
    name = models.CharField(max_length=120)

    order = models.IntegerField(help_text="The order in which this instrument should display on the members page... so violin 1 = 1, violin 2 = 2, cello=3, etc.",default=0)
    
    def __unicode__(self):
        return "%s" % self.name

    class Meta:
        ordering = ['order']

class OrchestraMember(ImageModel):  

    first_name = models.CharField(max_length=100)
    middle_name = models.CharField(max_length=100, blank=True)
    last_name = models.CharField(max_length=100)

    #instrument = models.IntegerField(max_length=10, choices=INSTRUMENTS)
    instrument = models.ForeignKey(Instrument)
    principal = models.BooleanField()
    concertmaster = models.BooleanField()
    concertmistress = models.BooleanField()

    bio = models.TextField(blank=True,help_text="Wrap paragraphs in '&lt;p&gt;...&lt;/p&gt;'")

    photo = models.ImageField(blank=True,null=True,default='',upload_to='src_imgs/members')
    num_views = models.PositiveIntegerField(editable=False, default=0)
	
    class IKOptions:
        spec_module = 'roster.member_specs'
        image_field = 'photo'
        save_count_as = 'num_views'
        cache_dir = 'model_imgs'
    
    noncurrent_member = models.BooleanField(help_text="Use to mark a member as former or not-current to temporarily remove from roster.")

    class Meta: 
        ordering = ["last_name"]

    def __unicode__(self):
        return "%s %s %s" % (self.first_name, self.middle_name, self.last_name)
    
    def withinstrument(self):
        return "%s %s %s, %s" % (self.first_name, self.middle_name, self.last_name, self.instrument)
    
    def withoutinstrument(self):
        name = "%s %s %s" % (self.first_name, self.middle_name, self.last_name)
        if self.principal:
            name = name + ", Principal"
        elif self.concertmaster:
            name = name + ", Concertmaster"
        elif self.concertmistress:
            name = name + ", Concertmistress"
        return name
    
    def fullmember(self):
        if self.concertmaster or self.concertmistress:
            n = self.withoutinstrument()
        elif self.principal:
            n = "%s %s %s, Principal %s" % (self.first_name, self.middle_name, self.last_name, self.instrument)
        else:
            n = self.withinstrument()
        return n
    
    def search_result(self):
        return self.withinstrument()
    
    def type(self):
        return "Orchestra Member"

    def get_absolute_url(self):
        return "/members/%s_%s/" % (self.first_name.lower(), self.last_name.lower())
    
class OrchestraMemberAdmin(admin.ModelAdmin):
    list_display = ('__unicode__', 'last_name', 'first_name', 'instrument', 'noncurrent_member')
    list_filter = ('instrument','principal','noncurrent_member')
    search_fields = ('first_name', 'last_name', 'middle_name')
    list_per_page = 30

admin.site.disable_action('delete_selected')
admin.site.register(Instrument)
admin.site.register(OrchestraMember, OrchestraMemberAdmin)
