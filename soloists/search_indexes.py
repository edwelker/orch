from haystack.indexes import *
from haystack import site
from orch.soloists.models import Soloist

class SoloistIndex(SearchIndex):
    text = CharField(document=True, use_template=True)
    name = CharField(model_attr='name')
    bio = CharField(model_attr='bio')
    
site.register(Soloist, SoloistIndex)

