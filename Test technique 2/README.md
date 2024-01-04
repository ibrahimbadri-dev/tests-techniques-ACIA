# Test technique 2 pour développement Fullstack avec l'Agence canadienne d'inspection des aliments
## Tables des matières
1. [Introduction](#Introduction)
2. [Description](#Description)
3. [Étapes de résolution et de mise en oeuvre du _GitHub Issue_](#Étapes-de-résolution-et-de-mise-en-oeuvre-du-GitHub-Issue)
4. [Conclusion et rétrospective](#Conclusion-et-retrospective)

## Introduction
Ce répertoire (_repository_) constitue les artéfacts et les démarches du deuxième test technique en développement généralisé et Fullstack octroyé par l'Agence canadienne d'inspection des aliments (ACIA/CFIA).
Les démarches seront élaborées séquentiellement et systématiquement en suivant un ordre chronologique et synchrone.

## Description
Dans le cadre de ce test technique, les instructions stipulent que le candidat se doit de procéder à la sélection d'un billet GitHub faisant par d'un bug ou d'un correctif necéssitant une intervention. De ce fait, après maintes investigation, il a été décidé d'entreprendre la résolution du [billet #37 du _repository_ nachet-backend](https://github.com/ai-cfia/nachet-backend/issues/37). Pour résoudre ce billet, il convient tout d'abord de s'acquérir d'une compréhension approfondie de l'architecture logicielle, des technologies actuellement employées ainsi que de celles qui doivent être mises en œuvre. Cependant, l'élément prépondérant réside dans la résolution du problème soulevé par le personnel technique de l'Agence canadienne d'inspection des aliments. Dans la continuation de cette documentation, la méthodologie de résolution sera abordée exhaustivement.

## Étapes de résolution et de mise en oeuvre du _GitHub Issue_
Dans cette section dédiée à la résolution du problème en question, il est capital d'employer une approche méthodique et rigoureuse afin d'apporter une solution optimale. La démarche consistera à analyser minutieusement les données disponibles, à explorer les différentes pistes de solution envisageables, et à élaborer une stratégie adaptée à la nature du problème. 
Dans l'optique de créer une 'Version' endpoint dans le Backend Nachet, j'ai procédé de la façon suivante :

1. Lecture et prise et de connaissance du fichier [README.md](https://github.com/ai-cfia/nachet-backend#readme) du _repository_ [nachet-backend](https://github.com/ai-cfia/nachet-backend).
2. Exéctution de la commande `git clone https://github.com/ai-cfia/nachet-backend.git` permettant de cloner les ressources sur la machine locale. Alternativement, l'opération `fork` est également possible.
3. Ouverture de l'emplacement cloné à travers l'exécution de la commande `cd` dans le terminal.
4. Une fois à l'intérieur de l'emplacement fichier, exécuter la commande `. code` afin d'ouvrir le projet sur Visual Studio Code.
5. Navigation à travers le fichier `Dockerfile` afin d'identifier les commandes à exécuter ainsi que les variables d'environnement.
6. Exécution de la commande `pip install --no-cache-dir -r requirements.txt` à la ligne 12 du fichier afin d'accéder et d'installer les dépendances requises.
8. Exécution du `hypercorn -b :8080 app:app` afin de compiler le programme en étant dans le `devcontainer`. 
9. En raison dee variables d'environnements manquantes, il a été impossible d'exécuter le serveur afin d'entreprendre des tests.
10. Néanmoins, il a été question d'entreprendre des recherches sur la façon de créer une route pour la fonctionnalité demandée.
11. Recherche sur l'utilisation et l'installation de [Flask](https://flask.palletsprojects.com/en/3.0.x/) à travers la documentation officielle et diverses ressources en ligne.
12. Dans une dernière tentative de faire avancer la résolution, il a fallu procéder à une `pull request`. Avant tout, il a été question de procéder à la création d'une nouvelle branche par le biais des commandes `git checkout -b feat-version-endpoint`, suivi de `git push origin feat-version-endpoint` qui s'est avérée infructueuse.

13. Ceci conclut donc le test technique.

## Conclusion et retrospective
Malgré le non-aboutissement des objectifs fixés, il a été préconisé de s'initier à la résolution de problèmes liés à l'infrastructure backend. Dans une optique d'amélioration, il serait judicieux d'acquérir une maîtrise des technologies pertinentes.


