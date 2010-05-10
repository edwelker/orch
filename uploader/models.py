from django.db import models
from django.contrib import admin
import datetime

# Create your models here.
class File(models.Model):
    file = models.FileField(upload_to='uploads')
    date = models.DateTimeField(default=datetime.datetime.now, editable=False)
    
    class Meta:
        verbose_name_plural = "File"
        
    def __unicode__(self):
        return self.file.name

admin.site.register(File)