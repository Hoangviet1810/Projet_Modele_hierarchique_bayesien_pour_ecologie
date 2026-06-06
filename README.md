# Projet-Modele_bayesien_pour_ecologie

# Structure du projet

```text
projet-bayes-moustique/
├── _quarto.yml             # Fichier de configuration du site Quarto
├── index.qmd               # Page d'accueil du site
├── Part1.qmd               # Partie 1 : Extraction et pré-traitement
├── Part2_1.qmd             # Partie 2 (v1) : Génération par blocs
├── Part2_2.qmd             # Partie 2 (v2) : Génération du vecteur θ
├── Part3.qmd               # Partie 3 : Modèle extension
├── Rapport.pdf             # Rapport final en version PDF
├── README.md               # Présentation du dépôt GitHub
├── .gitignore              # Fichiers à exclure du suivi Git
├── data/                   # Données brutes et fichiers CSV
│   └── summary_tigre_moustique.csv
├── docs/                   # Site web généré (fichiers HTML, CSS, js)
│   └── index.html
└── model1.png              # Illustrations des modèles
└── model2.png
```


# Présentation du projet

On s’intéresse dans ce projet à la modélisation de la présence du moustique tigre (*Aedes albopictus*) en France métropolitaine.

Pour cela, on dispose de données d’occurrences du moustique tigre, que l’on peut trouver par exemple sur le site de GBIF (Global Biodiversity Information Facility, <https://www.gbif.org/>).

Le but est d’analyser la variabilité inter-site et intra-site des occurrences, en utilisant un modèle hiérarchique bayésien.

Le projet est divisé en plusieurs parties :

-   **Partie 1 :** Extraction des données et pré-traitement

    Cette partie est dédiée à l’extraction des données, au nettoyage des valeurs manquantes et à la visualisation initiale pour comprendre la distribution de *Aedes albopictus*.

-   **Partie 2 :** Construction du modèle hiérarchique bayésien

    Nous avons expérimenté deux méthodes pour l’implémentation du modèle initial :

    -   **Méthode 1 :** Génération par blocs séparés. Elle est présentée dans la version 1.

    -   **Méthode 2 :** Génération du vecteur θ dans son ensemble. Elle est contenue dans la version 2.

        **Note importante :** Pour assurer le bon fonctionnement de cette méthode, il est impératif que le fichier de code soit placé dans le même répertoire racine que le répertoire `data`, afin de permettre l’accès direct au fichier `summary_tigre_moustique.csv`.

-   **Partie 3 :** Modèle extension

    Dans cette partie, nous avons adopté la même méthode que celle utilisée dans la version 1 puisqu’elle demande de modifier les paramètres de la première partie ; la seconde approche, plus modulaire, est la plus adaptée.


## Consulter le rapport complet

Vous pouvez consulter le rapport détaillé du projet (format PDF) en cliquant sur le lien ci-dessous :

<a href="Rapport.pdf" target="_blank" style="font-weight: bold; text-decoration: underline;">  Ouvrir le rapport PDF  </a>

### Dashboard interactif

[![Dashboard](images/dashboard_bayes.png)](https://hoangviet1810.github.io/Projet-Modele-bayesien-pour-ecologie/images/dashboard_moustique.html)

➡️ Cliquez sur l'image pour ouvrir le dashboard interactif.
