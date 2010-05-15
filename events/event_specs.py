# events/event_specs.py

from imagekit.specs import ImageSpec
from imagekit import processors

class ResizeThumb(processors.Resize):
	width = 160
	height = 160
	crop = True
	
class ResizeDisplay(processors.Resize):
    width = 420
    
	
class EnchanceThumb(processors.Adjustment):
	contrast = 1.2
	sharpness = 1.2
	
class Thumbnail(ImageSpec):
	access_as = 'thumb'
	pre_cache = True
	processors = [ResizeThumb, EnchanceThumb]
	
class Display(ImageSpec):
	increment_count = True
	processors = [ResizeDisplay]
