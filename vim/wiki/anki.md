# O que é o Anki?  - Last Change: 2017 dez 21 07:28

E um programa de aprendizado baseado na repetição espaçada

# Como busar cartões com tags distintas

``` markdown
tag:TvSeries* or tag:movies
tag:movies or tag:TvSeries or tag:RealEnglish or tag:DomineIngles.Com.Br
```

# Defining css style:

Obs: outside .card definition, ok?

		b, strong { color: purple;  }

# Counting how mani cards do I have selected

just look at the top of the browser window

# Searching for specific terms
+ https://apps.ankiweb.net/docs/manual.html#find-and-replace

		deck:English 'sat up'
		deck:English 'sat up' or 'come up'

# Novo processo de instalação:
+ https://apps.ankiweb.net/#linux

Anki not picking up GTK theme on Gnome/Linux

You can work around this issue by explicitly telling Anki what the GTK theme is. Run the following commands in a terminal:

theme=$(gsettings get org.gnome.desktop.interface gtk-theme)
echo "gtk-theme-name=$theme" >> ~/.gtkrc-2.0
echo "export GTK2_RC_FILES=$HOME/.gtkrc-2.0" >> ~/.profile

# How delete tag on anki
+ https://www.youtube.com/watch?v=D46FR00UR_M

# Decks que podem ser importados do site do anki

as 1000 primeiras frases em ingles
https://ankiweb.net/shared/info/2009669666

    Awesome TTS text to speech  301952613
    Bigger Show Answer Button  1867966335
    Expand and Collapse Decks 2554066128
    Flip cards with shortcut key "0". 844452602
    zoom 1956318463

# Como mudar a pasta padrão do anki
a referência para esta dica veio daqui:
http://danielhnyk.cz/change-default-folder-anki-space-repetition/

Basicamente o local para editar as preferências do anki é na
pasta:

    /usr/share/anki/aqt

Mas se pode fazer de outra forma também:

     crie em --> /usr/local/bin

 um arquivo  chamado 'anki', sem aspas contendo o seguinte:

``` sh
#!/usr/bin/bash
/usr/bin/anki -b $HOME/docs/anki
```

## Depois atribua SETUID para o arquivo com o comando

       chmod a+sx anki

Outra solução possível seria:
Go to the folder where ANKI is installed, in my case:

    /usr/share/anki

Edit file in aqt folder called profiles.py, you have to find category Helpers
and edit appropriate line (it depends which OS you use: Win, Mac, Linux..) you
wish:

``` python
def _defaultBase(self):
    if isWin:
    if False: #qtmajor >= 5:
    loc = QStandardPaths.writeableLocation(QStandardPaths.DocumentsLocation)
    else:
        loc = QDesktopServices.storageLocation(QDesktopServices.DocumentsLocation)
        return os.path.join(loc, "Anki")
        elif isMac:
        return os.path.expanduser("~/Documents/Anki")
        else:
        return os.path.expanduser("~/Anki")
```

##  e.g I edited last line to this:

    return os.path.expanduser("~/edu/Anki")

    to change my default folder to ~/edu/Anki.

O Anki é um software de repetição espaçada, a Repetiação espaçada
surge como uma descoberta da Neurociência, é de conhecimento
científico que repetições em intervalos de tempo específicos
aumentam o nível de retenção do conhecimento. Nos foruns em Inglês
eles usam a Sigla SRS, ou spaced repetition system.

# Como instalar o Anki
No site do mairo vergara você encontrará um manual que
lhe mostra como instalar o Anki.
http://www.mairovergara.com/como-instalar-e-usar-o-anki/

# como anexar arquivos de audio aos flashcards

Esta parte é super importante pois o manual de instalação do Mairo
vergara não mostra, é com este simples passo que você se permitir
praticar de uma só vez vocabulário e pronúncia de uma forma
prática e eficiente

Para anexar audio aos seus flashcards do Anki coloque o audio
correspondente à sua frase na pasta:

    Meus Documentos\Anki\collection.media

Crie o seu deck (baralho) e na hora de adicionar uma frase
que tenha um audio relacionado use a seguinte notação:

    [sound:file.mp3]

Um cartão do anki com audio ficaria então assim:

This is the English phrase[sound:nome-do-audio.mp3]
Esta é uma frase em Inglês

# Estilo css para o anki

# Backup old style

 ``` css
 .card {font-familiy: arial; font-size: 40px; text-align: center; color:black; background-color: white;  }
 ```

# New style
``` css

@font-face {
  font-family: junicode;
  src: url('_junicode.ttf');
}

// this code #FF1493 is pink color
b, strong { color: #FF1493;  }

ruby rt {
 visibility: hidden;
}

ruby:hover rt {
 visibility: visible;
}

.card {
 font-family: Noto Sans CJK JP Regular;
 font-size: 50px;
 text-align: center;
 color: black;
 background: url("bg.jpg");
}

.android .card {
 font-family: Noto Sans CJK JP Regular;
 font-size: 30px;
 text-align: center;
 color: black;
 background: url("bg.jpg");
}

.frontbg {
 background-color: #18adab;
 border-radius: 7px;
 color: #fff;
 position: relative;
 left: 0;
}

.engdefbg {
 font-family: Raleway;
 font-style: italic;
 padding: 15px;
 margin-left: -5px;
 margin-top: -15px;
 color: #18adab;
 font-size: 15px;
}

.android .engdefbg {
 font-family: Raleway;
 font-style: italic;
 padding: 15px;
 margin-left: -15px;
 margin-top: -20px;
 color: #18adab;
 font-size: 10px;
}

.others {
 position: relative;
 top: 15px;
 border: 1px dotted #72c8e1;
 color: #18adab;
 font-size: 20px;
 width: auto;
 padding-top: 15px;
 padding-left: 20px;
 padding-bottom: 15px;
 padding-right: 20px;
 margin-bottom: 35px;
}

.android .others {
 position: relative;
 top: 10px;
 border: 1px dotted #72c8e1;
 color: #18adab;
 font-size: 17px;
 width: auto;
 padding-top: 8px;
 padding-left: 15px;
 padding-bottom: 8px;
 padding-right: 15px;
 margin-bottom: 20px;
}

.sentence {
 font-size: 25px;
 margin-top: -20px;
 margin-bottom: 5px;
}

.android .sentence {
 font-size: 17px;
 margin-top: -15px;
}

.backbg {
 position: relative;
 top: -3px;
 background-color: #fff;
 padding: 15px;
 padding-bottom: 15px;
 padding-left: 30px;
 padding-right: 30px;
 border-radius: 0px 0px 10px 10px;
 color: #016ea6;
 font-size: 28px;
 text-align: left;
}

.android .backbg {
 position: relative;
 top: -5px;
 background-color: #fff;
 padding: 15px;
 padding-bottom: 15px;
 padding-left: 15px;
 padding-right: 15px;
 border-radius: 0px 0px 10px 10px;
 color: #016ea6;
 font-size: 20px;
 text-align: left;
}

.hira {
 font-size: 25px;
 line-height: 5px;
 padding-bottom: 40px;
}

.android .hira {
 font-size: 18px;
 line-height: 5px;
 padding-bottom: 25px;
}

hr {
 height: 2px;
 font-size: 30px;
 border: 0;
 background: #72c8e1;
}

u {
 text-decoration: none;
 border-bottom: 1px dotted;
}

/* This line is Added by Cloze Furigana Tools to make its various features work. CFT.260.00*/.hidden {visibility: hidden; font-size: 0;} .hidden .cloze, .cloze .hidden {visibility: visible; background-color: white;font-size: 0.8rem;} @-moz-document url-prefix() {ruby {position: relative;display: inline-block;} ruby rt {position: absolute;display: block;font-size: 0.5em;left: -50%;bottom: 115%;width: 210%;padding: 0;text-align: center;line-height:1em}} .hidden .basemaru {position:relative;} .hidden .basemaru:after {content: "◯"; visibility: visible; position:absolute; left:0;} .hidden .cloze .basemaru:after, .cloze .hidden .basemaru:after {visibility: hidden;} div{line-height: 2em;} .cloze_container .hidden {visibility: visible; background-color: white;}
```
