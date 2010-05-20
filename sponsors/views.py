from django.shortcuts import render_to_response
from sponsors.models import Sponsor

# Create your views here.
def all(request):
    a = Sponsor.objects.all()
    return render_to_response('sponsors.html', {'sponsors': a })
