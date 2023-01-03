# digital-electronics-1
## Lab 1 : Fist use of Git and EDA Playground
J'ai crée mon environnement Github afin de stocker mes sessions de labs; Les deux commandes les plus importantes sont :
  * git clone https://github.com/Romain-Fresneau/digital-electronics-1.git dans l'environnement Git du PC pour cloner mon Github
   git init(crée le fichier caché dans le repertoire git)
  * - $ git status
    - $ git add -A (prépare le commit en indexant le fichier)
    - $ git status
    - $ git commit -m "[LAB] Creating 01-gates lab"
    - $ git status
    - $ git push
    - $ git status

Premierement nous devons simuler nos systemes sur EDA playground avant d utiliser le hardware, Le deuxieme exercice que nous faisons est d'utiliser la fonction de De Morgan afin de simuler.

* Pour afficher l’historique des modifications nous pouvons utiliser la commande 
   * - $ git log

* Cette version correspond à un livrable du code, pour donner un tag à la derniere version nous pouvons utiliser la fonction :
  * - $ git tag v0.1 (par exemple)

* Pour vérifier la version locale et les changements par rapport à la version commmit nous utilisons :
 git diff
 <br>
* Revenir à la version marquée avec le tag v0.1. nous utilisons:
 * - $ git checkout v0.1
 <br>
* Pour revnir au dernier commit :
* - $ git master
<br>
* Pour voir tous mes tags je fais :
 * - $ git tag
 <br>
* Consulter graphiquement le dépôt : « git gui » :
 * - $ git gui
 <br>
 * Pour créer une nouvelle branche, tapez la commande qui suit.
* - $ git branch nouvelle
 <br>
 * Vérifions que la branche a bien été créée.

* - $ git branch
 <br>
Nous constatons que notre branche nouvelle a bien été créée par contre, comme nous l’indique le *, nous sommes toujours dans la branche master.
