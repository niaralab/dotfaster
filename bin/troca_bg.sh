#!/bin/bash
# Scrip para mudar background de arquivos html
#Criado: Sex 30/Dez/2005 hs 22:12
#ultima modifica��o: Qui 12 Jan 2006 09:13:05 BRST
#Autor: S�rgio Luiz Ara�jo Silva

#=================================================#
#  este script com alguma modifica��o � capaz de  #
#  modificar o fundo de v�rios arquivos html de   #
#  forma n�o interativa                           #
#=================================================#


for i in *.htm
  do
   cat $i | sed 's/bgcolor="#white"/bgcolor="#eeeeee"/' > ~/tmp/$i
  done


for i in *.html
  do
   cat $i | sed 's/bgcolor="#white"/bgcolor="#eeeeee"/' > ~/tmp/$i
  done
