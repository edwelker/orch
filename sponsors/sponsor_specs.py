#sponsors/sponsor_specs.py

from imagekit.specs import ImageSpec
from imagekit import processors

class ResizeThumb(processors.Resize):
    width = 250
    height = 100

class ResizeDisplay(processors.Resize):
    width = 450
    height = 250

class Thumbnail(ImageSpec):
    access_as = 'thumb'
    pre_cache = True
    processors = [ResizeThumb]

class Display(ImageSpec):
    increment_count = True
    processors = [ResizeDisplay]
