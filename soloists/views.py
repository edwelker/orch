from soloists.models import Soloist
from orch.events.views import get_current_season
from django.shortcuts import render_to_response, get_object_or_404

# Create your views here.

def all_soloists(request):
    curSeason = get_current_season()
    
    events = curSeason.event_set.all()

    #get all of the non-piece soloists
    s = [event.soloists.all() for event in events if event.soloists]
    #unpack
    s = [soloist for sub in s for soloist in sub]

    #get all of the pieces in events if there are any
    pieces = [event.pieces.all() for event in events if event.pieces]
    
    #unpack the subarrays
    pieces = [piece for subarray in pieces for piece in subarray]

    #get all of the soloists for pieces if there are any
    soloists = [piece.soloist.all() for piece in pieces if piece.soloist.all()]

    #unpack the subarrays again
    soloists = [soloist for subarray in soloists for soloist in subarray]

    #add event.soloists to piece.soloists
    soloists.extend(s)
    soloists.sort(reverse=True)
    
    return render_to_response('soloists.html', { 'soloists': soloists, 'season': curSeason })
    
def single_soloist(request, slug):
    soloist = get_object_or_404(Soloist, slug=slug)
    
    pieces = soloist.piece_set.all()
    events = [piece.event_set.all() for piece in pieces] #get 'em
    events = [event for subarray in events for event in subarray] #unpack

    #seasons = [event.season for event in events]
    
    return render_to_response('single_soloist.html', { 'soloist': soloist, 'pieces': pieces, 'events': events })
