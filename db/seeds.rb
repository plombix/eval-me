Allowed.delete_all
Answer.delete_all
Question.delete_all
Eval.delete_all
User.delete_all
Allowed.create!([
                  { email: 'plombix@gmail.com' },
                  { email: 'test@test.com' },
                  { email: 'guillaume.colombel@supdeweb-paris.com' },
                  { email: 'alexandre.colombel@supdeweb-paris.com' },
                  { email: 'fabiola.guilloux@supdeweb-paris.com' },
                  { email: 'florian.hernandez@supdeweb-paris.com' },
                  { email: 'caroline.hetelay@supdeweb-paris.com' },
                  { email: 'raphael.mimran@supdeweb-paris.com' },
                  { email: 'davina.navarro-lecat@supdeweb-paris.com' },
                  { email: 'raphaelle.nisolle@supdeweb-paris.com' },
                  { email: 'huijie.ye@supdeweb-paris.com' }
                ])
User.create!([

               { email: 'plombix@gmail.com', password: 'Soul66k!', password_confirmation: 'Soul66k!' }
             ])
a = Eval.create!(name: 'Shell / Unix lvl1', intro: 'Commandes basiques', viewable: true)
Question.create!([
                   { statement: 'Quelle est la commande qui permet de créer un <b>nouveau</b> dossier nomme comme suit : "<b>magick_folder</b>"', eval_id: a.id },
                   { statement: 'Quelle est la difference entre les operateurs "<b>&gt;&gt;</b>" et "<b>&gt;</b>"', eval_id: a.id },
                   { statement: 'Quelle est la fonction  de "<b> `</b>&nbsp;" ?', eval_id: a.id },
                   { statement: 'Que veux dire : "<b>..</b>" ?', eval_id: a.id },
                   { statement: 'A quoi sert la commande "<b>stat</b>" ?', eval_id: a.id },
                   { statement: 'Comment appelle -t- on les caractères juste derrière le curseur a chaque nouvelle ligne du terminal ? ', eval_id: a.id },
                   { statement: 'Comment appelle-t-on un fichier qui contiens des commandes shell &nbsp;pour être exécutées en une fois ? ', eval_id: a.id },
                   { statement: "Si on vous demande :<br>&nbsp; [1] de créer un dossier nomme \"<b>magick_folder_2</b>\"<br>&nbsp; [2] d' y créer (a l' intérieur du dossier ) 3 fichiers, respectivement nomes : 1.txt ,2.mp3  et 3.avi<br> &nbsp;[3] Et de dupliquer le dossier \"<b>magick_folder_2</b>\" (avec son contenu) en renommant la copie : \"magick_folder_2_backup\"\<br>Quelles sont les commandes a effectuer? <i>(inscrivez les commandes séparées  par \";\")<br></i>", eval_id: a.id },
                   { statement: "L' emulateur de terminal , est il un acces<br>   &nbsp;au <b>noyeau</b> (kernel) ? <br>   au <b>système d'exploitation</b> (OS)? <br>   ou a <b>internet</b>?", eval_id: a.id },
                   { statement: "Considerez  l' expression suivante :<b> /usr/bin/data/proc</b> Comment l'appelle-t-on  ?", eval_id: a.id },
                   { statement: "Construisez la commande qui affiche le contenu du fichier<b> text.log &nbsp;</b>(s'il existais )<b></b>.", eval_id: a.id },
                   { statement: 'Construisez la commande qui liste le contenu du <b>repertoire courant</b> en affichant les fichiers <b>cachés</b> .', eval_id: a.id },
                   { statement: "Quelle fonctionnalité ajoute l' option \"<b>-U</b>\" a la commande<b> ls&nbsp;</b>?", eval_id: a.id },
                   { statement: 'Quel(s) editeur(s) de texte sont disponibles au sein du terminal ?\<br>Listez ceux que vous connaissez :', eval_id: a.id },
                   { statement: "Comment s' appelle le caractère    \"<b>|</b>\" comme dans la commande : \"<b>ls | wc</b>\"  ?", eval_id: a.id },
                   { statement: "Comment peut-on créer un nom de fichier ou dossier comprenant des caractères spéciaux comme '<b>nom_d\"e_fichier.ext</b>'", eval_id: a.id },
                   { statement: "Quell est l' effet de la commande : \"<b>alias ls='ls -lhG'</b>\"", eval_id: a.id },
                   { statement: "Quelle est la commande qui permet de <b>lister</b> toutes les &nbsp;images (disons les fichier avec l' extension: \".jpg\") ?", eval_id: a.id },
                   { statement: "Considérez la commande &nbsp;\" <b>ls -r &nbsp;/some_place </b>\"<br>Comment se nomme les membre d' expression:<br>       &nbsp;\"<b>-r</b>\"<br>      et \"<b>/some_place</b>\" ?<br><br>", eval_id: a.id },
                   { statement: 'Considérant les formidables outils que sont Atom, Sublime text , ou même Notepad .&nbsp;Quelle est l’utilité des éditeurs de texte dans le terminal ? <br><br>', eval_id: a.id }
                 ])
