from django.contrib import admin
from .models import StellarGenres

# Register your models here.

class StellarGenresAdmin(admin.ModelAdmin):
    list_display = (
        'star_name',
        'star_classification',
        'luminosity_classification',
        'temperature',
        'mass',
        'elemental_composition',
        'description',
        'birth',
        'life',
        'death',
        'reincarnation',
        'example',
    )
    prepopulated_fields = {"slug": ("star_name",)}

admin.site.register(StellarGenres, StellarGenresAdmin)
