#pieces/composer_specs.py

from imagekit.specs import ImageSpec
from imagekit import processors

class ResizeThumb(processors.Resize):
    width = 180
    height = 180
    crop = True
	
class ResizeDisplay(processors.Resize):
    width = 420
    
	
class EnchanceThumb(processors.Adjustment):
    sharpness = 1.2
	
class Thumbnail(ImageSpec):
    access_as = 'thumb'
    pre_cache = True
    processors = [ResizeThumb, EnchanceThumb]
	
class Display(ImageSpec):
    increment_count = True
    processors = [ResizeDisplay]
