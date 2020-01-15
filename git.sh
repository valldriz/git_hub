https://git-scm.com/book/es/v2

#========== INSTALAR GIT ============|

sudo apt-get install git 


#========== CREAR UN COMMIT ============|
--Vamos a crear un repositorio y enviar la primera version.
-- primero creamos la carpeta donde vamos a tener el repositorio 

> git init 

-- para ver el estatus 

> git status

-- ahora crearemos un archivo 
-- y le diremos a git que hemos hecho un cambio en el archivo para que lo vigile 

> git add archivo.txt
> git status 
-----------------------------------------------------------
        On branch master

        No commits yet

        Changes to be committed:
        (use "git rm --cached <file>..." to unstage)

                new file:   prueba.txt
-----------------------------------------------------------

-- Una vez realizado el cambio y agregado, podemos hacer commit 

> git commit

-----------------------------------------------------------
*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.

fatal: unable to auto-detect email address (got 'sidra@mvmcloud.(none)')'
-----------------------------------------------------------

-- para esto hay que configurar correctamente el correo que usamos para github por ejemplo

> git config --global user.email "hmvallecillo@gmail.com"
> git config --global user.name "valldriz"
> git config -l --> para saber si quedo correcto

-- Una vez hecho correcto, volvemos a hacer commit y se abrira un editor
-- agregamos en texto el cambio que se realizo y guardamos 
-- si el commit se hizo correctamente entonces no deberian haber commit pendientes

> git status 

On branch master
nothing to commit, working tree clean

#============== WORKING DIRECTORY ================|

Para saber cuantos commit hemos hecho .

> git log

-- vamos a hacer un cambio en el archivo y al ver el status de git podremos ver los que hay un commit pendiente 
para saber que cambios he hecho en mi codigo 

> git diff

-- si no hemos hecho add o commit entonces el cambio aun no esta en el stage, para ello vamos a hacer un add 

> git add archivo.txt


#============== DESHACER MODIFICACIONES ================|

Ahora bien, que pasaria si por error borre algo y necesito deshacerlo.

1. Vamos a hacer una modificacion en el archivo pero sin hacer add 

al hacer git status 
On branch master

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        modified:   prueba.txt

no changes added to commit (use "git add" and/or "git commit -a")

da la opcion de hacer un git checkout para poder revertir el cambio 

diff --git a/prueba.txt b/prueba.txt
index 49f794e..bce0c34 100644
--- a/prueba.txt
+++ b/prueba.txt
@@ -1,3 +1,3 @@
 Hola. Esta es la primer prueba
-Esta es la linea de modificacion 1
+Voy a hacer un cambio y voy a borrar lo que habia aqui
 Ahora estoy intentando un commit dentro de un commit

 para deshacer

 > git checkout -- archivo.txt

 y listo.. Ahora vamos a hacer un cambio y add al archivo 

On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   prueba.txt

En este caso ya el cambio se encuentra en el stage y le hemos dicho a git que ese cambio nos importa. 
Por lo tanto para deshacerlo basta con hacer un reset 

> git reset HEAD archivo.txt  --> ya hemos deshecho el cambio 
> git checkout -- archivo.txt --> y ahora podemos quitar el cambio ya que no se encuentra en el stage

y ya queda listo el cambio en su totalidad



#======== DESHACER COMMIT ==============|
despues de haber hecho un commit por error, necesitamos conocer el hash del error 

> git log --oneline | cat

60e6b14 He hecho este cambio por error...
5f3effd mend
3edea69 xHaciendo una prueba de dos commit
7eba5a0 Se crea el primer archivo de prueba

hacemos un reset al commit que deberia estar 

> git reset 5f3effd
> git diff --> para ver que cambios habian realizado.

Ahora este cambio esta como una modificacion hay que borrarla.

> git checkout archivo.txt

para mas info 
https://www.youtube.com/watch?v=h-xN14zPgsQ
https://www.youtube.com/watch?v=4SwaV29SpIc


#========= RAMAS-BRANCHES =========|

> git log --oneline --graph --decorate 

* 5f3effd (HEAD -> master) mend
* 3edea69 xHaciendo una prueba de dos commit
* 7eba5a0 Se crea el primer archivo de prueba

los asteriscos indican que son precedentes.

Las ramas , sirven para llevar cambios en paralelo.

#====== CREAR RAMAS ========|
https://www.youtube.com/watch?v=j0U9jBmP3LM

1. Visualizar ramas

> git branch

2. Crear ramas 

> git branch Nombre-nuveaRama

si hacemos git branch 

  escritura-datos
* master

Nos indica que nos encontramos en la rama master por el asterisco 

si queremos cambiar de rama .

> git checkout escritura-datos

Switched to branch 'escritura-datos'

> git branch 
* escritura-datos
  master




#========== CURSO RAPIDO ===========|

https://www.youtube.com/watch?v=HiXLkL42tMU