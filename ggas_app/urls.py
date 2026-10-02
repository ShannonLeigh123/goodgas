from django.urls import path
from . import views

urlpatterns = [
    path('', views.homepage, name='homepage'),
    path('starlist/', views.starlist, name='starlist'),
    path('details/<int:id>', views.details, name='details'),
    path('photogallery', views.photogallery, name='photogallery'),
    path('starsearch/', views.star_search_view, name='star_search'),


]
