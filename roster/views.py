from django.http import HttpResponse
from django.shortcuts import render_to_response, get_object_or_404
from orch.roster.models import OrchestraMember
from orch.roster.models import Instrument

# Create your views here.
def all_members(request):
    members = OrchestraMember.objects.exclude(noncurrent_member=True).order_by('instrument', '-principal', 'last_name')

    order  = Instrument.objects.order_by('order')

    m = []

    for i in order:
        for x in members:
            if i.pk == x.instrument.pk:
                m.append(x)      

    return render_to_response('members.html', {'members': m})

def member(request, first_name, last_name):
    m = get_object_or_404(OrchestraMember, first_name__iexact=first_name, last_name__iexact=last_name)
    return render_to_response('member.html', {'member': m})
