from django.db import models

# Create your models here.
class YouTubeVideo(models.Model):
    title = models.CharField(max_length=255)
    published = models.DateTimeField()
    desc = models.TextField(blank=True, null=True)
    embed_url = models.CharField(max_length=255)
    length = models.TimeField()
    thumbnail = models.CharField(max_length=255)

    def __unicode__(self):
        return self.title

    def embed_code(self):
        return '<iframe width="470" height="383" src="%s" frameborder="0" allowfullscreen></iframe>'  % self.embed_url
