from django.db import models
from django.contrib.auth.models import User

# Create your models here.
class StellarGenres(models.Model):

    star_name = models.CharField(max_length=255)
    star_classification = models.CharField(
        max_length=50,
        help_text="Spectral class (O, B, A, F, G, K, M, etc.)"
    )
    luminosity_classification = models.CharField(max_length=50,   null=True, blank=True)
    temperature = models.IntegerField(
        default=0,
        verbose_name="Temperature (K)"
    )
    mass = models.TextField(null=True, blank=True)
    elemental_composition = models.CharField(max_length=255)
    description = models.TextField()
    birth = models.TextField(null=True, blank=True)
    life = models.TextField(null=True, blank=True)
    death = models.TextField(null=True, blank=True)
    reincarnation = models.TextField(null=True, blank=True)
    example = models.TextField(null=True, blank=True)
    slug = models.SlugField(default="")
    sort_order = models.IntegerField(default=0)   # 👈 new field

    class Meta:
        ordering = ["sort_order"]




    def __str__(self):
        return self.star_name

