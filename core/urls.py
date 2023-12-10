from django.urls import path
from .views import FilmeListView, FilmeCreateView, FilmeUpdateView, FilmeDeleteView

urlpatterns = [
    path('', FilmeListView.as_view(), name='filme_list'),
    path('novo/', FilmeCreateView.as_view(), name='filme_new'),
    path('editar/<int:pk>/', FilmeUpdateView.as_view(), name='filme_edit'),
    path('deletar/<int:pk>/', FilmeDeleteView.as_view(), name='filme_delete'),
]
