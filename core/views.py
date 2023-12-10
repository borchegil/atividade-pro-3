from django.shortcuts import render, get_object_or_404, redirect
from .models import Filme, FilmeEstrangeiro

from .forms import FilmeForm, FilmeEstrangeiroForm
from django.views.generic import ListView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy


class FilmeListView(ListView):
    model = Filme
    template_name = 'filme_list.html'


class FilmeCreateView(CreateView):
    model = Filme
    form_class = FilmeForm
    template_name = 'core/filme_form.html'
    success_url = reverse_lazy('filme_list')


class FilmeUpdateView(UpdateView):
    model = Filme
    form_class = FilmeForm
    template_name = 'core/filme_form.html'
    success_url = reverse_lazy('filme_list')


class FilmeDeleteView(DeleteView):
    model = Filme
    template_name = 'core/filme_confirm_delete.html'
    success_url = reverse_lazy('filme_list')
