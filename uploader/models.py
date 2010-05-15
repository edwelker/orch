from django.db import models
from django.contrib import admin
import datetime
import os
here = lambda *x: os.path.join(os.path.abspath(os.path.dirname(__file__)), *x)

# Create your models here.
class File(models.Model):
    file = models.FileField(upload_to='uploads/%Y/', help_text="Please remove ALL spaces in the file name. Change them to '_' underscores.<br/><br/>File will be uploaded to '/uploads/year/my_filename.xxx'. <br/><br/> This can be used in a link as &lt;a href='/uploads/year/my_filename.xxx'&gt;link to myfilename.xxx&lt;/a&gt;<br/><br/>Year is in yyyy format, for example, '2010'.")
    date = models.DateTimeField(default=datetime.datetime.now, editable=False)
    
    class Meta:
        verbose_name_plural = "File"
        
    def __unicode__(self):
        return self.file.name

admin.site.register(File)
