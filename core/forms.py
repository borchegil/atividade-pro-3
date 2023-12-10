from django import forms
from .models import Filme, FilmeEstrangeiro


class FilmeForm(forms.ModelForm):
    class Meta:
        model = Filme
        fields = ['titulo', 'genero', 'duracao', 'diretor']
        widgets = {
            'titulo': forms.TextInput(attrs={'class': 'form-control'}),
            'genero': forms.TextInput(attrs={'class': 'form-control'}),
            'duracao': forms.NumberInput(attrs={'class': 'form-control'}),
            'diretor': forms.Select(attrs={'class': 'form-control'}),
        }


class FilmeEstrangeiroForm(forms.ModelForm):
    class Meta:
        model = FilmeEstrangeiro
        fields = ['titulo', 'genero', 'duracao', 'diretor', 'titulo_ingles', 'pais_origem']
        widgets = {
            'titulo': forms.TextInput(attrs={'class': 'form-control'}),
            'genero': forms.TextInput(attrs={'class': 'form-control'}),
            'duracao': forms.NumberInput(attrs={'class': 'form-control'}),
            'diretor': forms.Select(attrs={'class': 'form-control'}),
            'titulo_ingles': forms.TextInput(attrs={'class': 'form-control'}),
            'pais_origem': forms.TextInput(attrs={'class': 'form-control'}),
        }
