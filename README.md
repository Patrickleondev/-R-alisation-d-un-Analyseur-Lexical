# -Realisation-d-un-Analyseur-Lexical
Le but du TP est de réaliser un analyseur lexical en utilisant l’outil LEX pour  manipuler des expressions régulières.

Ce projet met en évidence l'importance des expressions régulières en programmation, notamment dans le développement de compilateurs, d'interpréteurs ou d'autres outils d'analyse de texte. À travers les tests effectués, nous démontrerons la pertinence de cette méthode pour résoudre des problèmes complexes liés au traitement des chaînes de caractères


- Objectif : Le but du TP  est de réaliser un analyseur lexical en utilisant l’outil LEX pour manipuler des expressions régulières.
- Résumé des étapes : Installer les outils nécessaires, configurer l’environnement, écrire le code et analyser différentes expressions.


- **Confiiguration de l'environnement**
     - Pour linux
  
       ```
        sudo apt update
        sudo apt install flex gcc
        ```
     - Pour Windows
 
        Il suffira juste d'installer un compilateur c (gcc dans notre cas) et lex (flex sans notre cas) et les ajouter respectivement dans le path des variables d'environnement windows.
      

 - **Description** : Nous allons Compiler et exécuter le code avec les commandes suivantes dans un terminal (Vous devez etre dans le meme repertoire que votre fichier lex contenant le code analyseur )  :
        
        
        flex code.lex
        gcc lex.yy.c -o code
        ./code
        
