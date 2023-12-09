from django.db import models


class Pessoa(models.Model):
    nome = models.CharField(max_length=100)
    nacionalidade = models.CharField(max_length=100)
    idade = models.IntegerField()

    def __str__(self):
        return self.nome

    class Meta:
        abstract = True


class Diretor(Pessoa):

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = "Diretor"
        verbose_name_plural = "Diretores"


class Ator(Pessoa):

    def __str__(self):
        return self.nome

    class Meta:
        verbose_name = "Ator"
        verbose_name_plural = "Atores"


class Cinema(models.Model):
    nome = models.CharField(max_length=100)
    localizacao = models.CharField(max_length=200)
    capacidade = models.IntegerField()

    def __str__(self):
        return self.nome


class Filme(models.Model):
    titulo = models.CharField(max_length=200)
    genero = models.CharField(max_length=100)
    duracao = models.IntegerField()
    diretor = models.ForeignKey(Diretor, on_delete=models.CASCADE, related_name='filmes')

    def __str__(self):
        return self.titulo


class FilmeEstrangeiro(Filme):
    titulo_ingles = models.CharField(max_length=200)
    pais_origem = models.CharField(max_length=100)

    def __str__(self):
        return self.titulo

    class Meta:
        verbose_name = "Filme Estrangeiro"
        verbose_name_plural = "Filmes Estrangeiros"


class Sessao(models.Model):
    horario = models.DateTimeField()
    publico = models.BooleanField(default=False)
    cinema = models.ForeignKey(Cinema, on_delete=models.CASCADE, related_name='sessoes')
    filme = models.ForeignKey(Filme, on_delete=models.CASCADE, related_name='sessoes')

    class Meta:
        verbose_name = "Sessão"
        verbose_name_plural = "Sessões"


class Atuacao(models.Model):
    ator = models.ForeignKey(Ator, on_delete=models.CASCADE, related_name='atuacoes')
    filme = models.ForeignKey(Filme, on_delete=models.CASCADE, related_name='atuacoes')
    papel = models.CharField(max_length=100)
    classe = models.CharField(max_length=100)

    def __str__(self):
        return self.papel

    class Meta:
        verbose_name = "Atuação"
        verbose_name_plural = "Atuações"
