from soloists.models import Soloist
from orch.events.views import get_current_season
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.

#NEED: to be fixed so that soloist_events and season_soloists are in one iterable list.    
def all_soloists(request):
    curSeason = get_current_season()
    season_soloists = Soloist.objects.filter(season=curSeason).order_by('event')
    return render_to_response('soloists.html', { 'soloists': season_soloists, 'season': curSeason })
    
def single_soloist(request, slug):
    soloist = get_object_or_404(Soloist, slug=slug)
    #array of events... becuase Soloists can do more than one concert
    events = soloist.event_set.all()
    return render_to_response('single_soloist.html', { 'soloist': soloist, 'events': events })
 
