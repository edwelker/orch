# events/soloist_specs.py

from imagekit.specs import ImageSpec
from imagekit import processors

class ResizeThumb(processors.Resize):
	width = 200
	height = 200
	crop = True
	
class ResizeDisplay(processors.Resize):
	width = 460
	
class EnchanceThumb(processors.Adjustment):
	contrast = 1.2
	sharpness = 1.2
	
class EnchanceDisplay(processors.Adjustment):
	contrast = 1.2
	sharpness = 1.2
	
class Thumbnail(ImageSpec):
	access_as = 'thumb'
	pre_cache = True
	processors = [ResizeThumb, EnchanceThumb]
	
class Display(ImageSpec):
	increment_count = True
	processors = [ResizeDisplay, EnchanceThumb]