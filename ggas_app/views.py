from django.shortcuts import render, redirect, get_object_or_404
from django.template import loader
from django.db.models import Q
from django.http import HttpResponse, HttpResponseRedirect
from .models import StellarGenres

# Create your views here.


def homepage(request):
    template = loader.get_template('homepage.html')
    return HttpResponse(template.render())

def starlist(request):
    starcategories = StellarGenres.objects.all().values()
    template = loader.get_template('starlist.html')
    context = {'starcategories': starcategories}
    return HttpResponse(template.render(context, request))

def details(request, id):
    starcategories = StellarGenres.objects.get(id=id)

    # Get next and previous stars by ID
    next_star = StellarGenres.objects.filter(id__gt=id).order_by('id').first()
    prev_star = StellarGenres.objects.filter(id__lt=id).order_by('-id').first()

    template = loader.get_template('details.html')
    context = {
        'starcategories': starcategories,
        'next_star': next_star,
        'prev_star': prev_star,
    }
    return HttpResponse(template.render(context, request))

def photogallery(request):
    template = loader.get_template('photogallery.html')
    return HttpResponse(template.render())


def home(request):
    return HttpResponse("Greetings from Gaseous Goodness!")

def tooltips(request):
    template = loader.get_template('tooltips.html')
    return HttpResponse(template.render())

def buttonstyles(request):
    template = loader.get_template('buttonstyles.html')
    return HttpResponse(template.render())

def gridcontainer(request):
    template = loader.get_template('gridcontainer.html')
    return HttpResponse(template.render())


def responsivewebdesign(request):
    template = loader.get_template('responsivewebdesign.html')
    return HttpResponse(template.render())



def star_search_view(request):
    query = request.GET.get('q', '').strip()

    if query:
        # Look for stars that contain the text (case-insensitive)
        results = StellarGenres.objects.filter(name__icontains=query)

        # Smart Shortcut: If exactly ONE star matches, skip the results list
        # and take them directly to that star's details page!
        if results.count() == 1:
            exact_match = results.first()
            return redirect('details', id=exact_match.id)  # Adjust 'pk' or 'slug' to match your routing

        # If multiple stars match, send them to a results page
        return render(request, 'star_search_results.html', {'results': results, 'query': query})

    # If the search field was empty, just send them back to the main list
    return redirect('starlist')


def star_search_view(request):
    query = request.GET.get('q', '').strip()

    if query:
        # Look for stars that contain the text (case-insensitive)
        results = StellarGenres.objects.filter(star_name__icontains=query)

        # Smart Shortcut: If exactly ONE star matches, skip the results list
        if results.count() == 1:
            exact_match = results.first()
            return redirect('details', id=exact_match.id)

        # If multiple stars match (or zero matches), send them to a results page
        return render(request, 'star_search_results.html', {'results': results, 'query': query})

    # FIX: If the search field was empty, just send them back to the main list
    return redirect('starlist')
