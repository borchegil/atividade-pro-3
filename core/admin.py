from django.contrib import admin

from .models import Diretor, Ator, Cinema, Filme, FilmeEstrangeiro, Sessao, Atuacao


# Opcionalmente, você pode criar classes admin personalizadas para modificar a exibição no admin.

@admin.register(Diretor)
class DiretorAdmin(admin.ModelAdmin):
    list_display = ('id', 'nome', 'nacionalidade', 'idade')


@admin.register(Ator)
class AtorAdmin(admin.ModelAdmin):
    list_display = ('id', 'nome', 'nacionalidade', 'idade')


@admin.register(Cinema)
class CinemaAdmin(admin.ModelAdmin):
    list_display = ('id', 'localizacao', 'capacidade')

    def get_readonly_fields(self, request, obj=None):
        if not request.user.groups.filter(name='gerentes').exists():
            return [f.name for f in self.model._meta.fields]
        return super().get_readonly_fields(request, obj)

    def has_add_permission(self, request):
        return request.user.groups.filter(name='gerentes').exists()

    def has_change_permission(self, request, obj=None):
        return request.user.groups.filter(name='gerentes').exists()

    def has_delete_permission(self, request, obj=None):
        return request.user.groups.filter(name='gerentes').exists()


@admin.register(Filme)
class FilmeAdmin(admin.ModelAdmin):
    list_display = ('id', 'titulo', 'genero', 'duracao', 'diretor')


@admin.register(FilmeEstrangeiro)
class FilmeEstrangeiroAdmin(admin.ModelAdmin):
    list_display = ('id', 'titulo', 'titulo_ingles', 'pais_origem')


@admin.register(Sessao)
class SessaoAdmin(admin.ModelAdmin):
    list_display = ('id', 'horario', 'publico', 'cinema', 'filme')


@admin.register(Atuacao)
class AtuacaoAdmin(admin.ModelAdmin):
    list_display = ('id', 'ator', 'filme', 'papel', 'classe')
