from django.db import models

#New Model
class News(models.Model):
	title = models.CharField(blank=True, max_length=250, help_text="Optional. Should almost never be displayed, but is very useful to sort through news.")
	display_title = models.BooleanField(help_text='Check if the title should be displayed.')
	body = models.TextField(help_text='Required. HTML field, please wrap paragraphs with &lt;p&gt; ... &lt;/p&gt;')
	#url = models.TextField(blank=True)
	post_date = models.DateTimeField(blank=True, null=True, help_text='When to start displaying this news item.  Optional.')
	unpost_date = models.DateTimeField(blank=True, null=True, help_text='When to stop displaying this news item.  Optional.')
	order = models.IntegerField(unique=True, help_text='Required. Determines the display order of news items.')
	create_date = models.DateTimeField(auto_now_add=True)
	modified_date = models.DateTimeField(auto_now=True)

	class Meta:
		ordering = ['-order', '-post_date']
		verbose_name_plural = 'news'

