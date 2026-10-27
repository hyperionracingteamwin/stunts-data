# Alpine A110 1600 S — pack final 1.0

Création pour Stunts / 4D Sports Driving par **Alain il Professore**.
Date du pack : 27 octobre 2026. Identifiant voiture : `A110`.

## Installation sous Windows

1. Fermer Stunts et DOSBox.
2. Extraire le ZIP : il contient le dossier **ALP_A110**.
3. Déposer ce dossier directement dans le répertoire du jeu Stunts.
   Exemple : `C:\STUNTS\ALP_A110\INSTALL.BAT`.
4. Ouvrir `ALP_A110` puis double-cliquer sur **INSTALL.BAT**.
5. Relancer Stunts et choisir **Alpine A110 1600 S (1970)**.

Les quatre fichiers de `FILES` sont copiés dans le dossier parent Stunts.
Laisser le dossier ALP_A110 à cet emplacement pour pouvoir désinstaller.
Aucun droit administrateur n'est nécessaire si le dossier du jeu est accessible en écriture.

## Installation dans DOSBox

Monter le dossier Stunts, puis entrer :

```text
C:
CD ALP_A110
INSTALL
```

Le montage doit inclure le jeu et le sous-dossier ALP_A110 : ne pas monter
uniquement le pack. Les noms des dossiers et scripts sont compatibles 8.3.
La branche DOS utilise des commandes classiques, sans `setlocal` ni PowerShell.

## Désinstallation et restauration

Fermer le jeu puis lancer **UNINST.BAT** depuis le même dossier ALP_A110.
Dans DOSBox : `CD ALP_A110`, puis `UNINST`.

- Les fichiers A110 qui existaient avant l'installation sont restaurés.
- Ceux qui étaient absents sont supprimés du dossier du jeu.
- Les variantes compressées sauvegardées sont remises à leur place.
- Les autres voitures, circuits, replays, musiques et paramètres ne sont pas modifiés.
- Le contenu de `FILES` et les documents du pack restent disponibles.

`BACKUP` contient la sauvegarde locale ; `ACTIVE.TAG` signale l'installation.
Ne pas déplacer, renommer ni supprimer ces éléments tant que le pack est installé.
Après une restauration réussie, les marqueurs et la sauvegarde utilisés sont nettoyés.
Une réinstallation est alors possible. Une deuxième installation active est refusée
pour préserver la sauvegarde originale. Pour mettre à jour : désinstaller, remplacer
le dossier du pack, puis réinstaller.

Si une opération s'interrompt après le début des modifications, garder BACKUP et
les fichiers TAG, puis lancer UNINST.BAT pour restaurer avant de réessayer.
Si la sauvegarde est incomplète, la désinstallation s'arrête avant toute modification.
En cas de protection en écriture, fermer le jeu et rendre le dossier accessible avant
de relancer la restauration. Éviter de modifier manuellement les fichiers A110 dans
Stunts entre installation et désinstallation : la restauration remet la version sauvegardée.

## Contenu et priorités de chargement

| Fichier | Fonction |
| --- | --- |
| CARA110.RES | Nom, spécifications, paramètres de conduite et coordonnées des instruments |
| STA110.3SH | Modèles 3D car0/car1/car2 et quatre formes d'explosion |
| STDAA110.VSH | Habitacle, trois états du volant, pédales, compteurs et fond animé du levier |
| STDBA110.VSH | Pommeau, masques, repère cyan du volant et chiffres |

Les éventuels `CARA110.PRE`, `STA110.P3S`, `STDAA110.PVS` et `STDBA110.PVS`
sont sauvegardés puis retirés pendant l'installation pour éviter les conflits de
chargement. Ils sont restaurés à la désinstallation. Le pack ne remplace aucun
fichier global du jeu et ne contient ni le jeu original, ni musique, ni circuit.

Le dossier contient également les changelogs français/anglais, le README anglais
et `SHA256SUMS.txt` pour vérifier l'intégrité des fichiers distribués.

## Particularités de cette version

- Habitacle avec trois pédales fixes : embrayage, frein, accélérateur.
- Soufflet et pommeau visibles pendant les changements de rapport ; absents du fond au repos.
- Pommeau sans manche, course resserrée au sommet du soufflet.
- Petit repère cyan sur le cerceau du volant ; calibration finale conservée.
- Dash de 320 × 92 pixels, avec la dernière retouche manuelle fournie intégrée.

L'écran de spécifications indique : 1970, 1 565 cm³, 125 ch DIN, cinq rapports,
moteur arrière, 685 kg, 215 km/h catalogue et onze livrées. Ce sont les données
affichées par le fichier fourni ; la courbe de couple y est annoncée comme reconstituée.
La course du pommeau intervient dans la durée des changements de rapport du jeu :
sa réduction peut modifier légèrement les performances et la compatibilité d'anciens replays.

## Validation et limites

Les quatre ressources finales jointes ont été copiées sans modification binaire.
Les conteneurs ont été contrôlés et les deux VSH passent la conversion native.
Les scénarios d'installation/restauration ont été vérifiés par simulation des scripts.
Le pack n'a pas été exécuté dans Windows CMD ou DOSBox ici ; le dernier essai
du rendu, des angles 3D et de l'animation dans le jeu DOS reste à faire.
