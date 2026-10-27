# Changelog — Alpine A110

## 1.0 — 27 octobre 2026 — assemblage final

- Regroupement des quatre fichiers finaux fournis, sans modification de leur contenu.
- Ajout de INSTALL.BAT et UNINST.BAT : cible strictement dans le dossier parent.
- Sauvegarde des fichiers A110 préexistants et mémorisation des fichiers initialement absents.
- Retrait temporaire des variantes compressées PRE/P3S/PVS, puis restauration à la désinstallation.
- Protection contre l'écrasement de la sauvegarde lors d'une deuxième installation.
- Conservation de la sauvegarde pour restauration si l'installation est interrompue.
- Dossier, scripts et fichiers du jeu compatibles DOS 8.3 ; branche Windows avec localisation automatique.
- README et changelog en français et en anglais ; sommes SHA-256.

## Évolution intégrée — habitacle et ressources

- Habitacle Alpine personnalisé et trois positions du volant retouchées manuellement.
- Correction des décalages de lignes après import de bitmaps de largeur non multiple de quatre.
- Largeur des volants portée à 144 pixels sans étirement ; restauration des images concernées.
- Dash réduit de 112 à 92 pixels ; ses 20 lignes supérieures transférées au bloc redessiné.
- Suppression du roof fictif associé à la ligne figée ; correction préparée pour l'effacement du message de départ.
- Petit repère cyan rond de trois pixels, masque et tampons d'effacement adaptés.
- Recalibrage de la trajectoire du repère sur le milieu de l'épaisseur du cerceau.
- Ajout des pédales d'embrayage, de frein et d'accélérateur dans le plancher.
- Suppression du soufflet et du pommeau du dash au repos ; affichage via les ressources de changement de rapport.
- Suppression du manche du pommeau et réduction de sa course près du sommet du soufflet.
- Intégration de la dernière correction manuelle du dash, supprimant l'artefact dans la zone du levier.
- Inclusion du modèle STA110.3SH final fourni : car0/car1/car2 et exp0/exp1/exp2/exp3.
- Conservation du nom, des spécifications et de la signature « by Alain il Professore » du fichier CAR fourni.

Les coordonnées du levier modifiées peuvent influer sur la durée des changements de rapport.
Les contrôles de fichiers et de conversion ne remplacent pas un essai dans Stunts DOS.
