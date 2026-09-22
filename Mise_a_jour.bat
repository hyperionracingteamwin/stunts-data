@echo off
setlocal
cd /d "%~dp0"

title STUNTS - Mise a jour depuis GitHub

echo.
echo ==========================================
echo       STUNTS - MISE A JOUR GITHUB
echo ==========================================
echo.

REM Verifie que Git est disponible
git --version >nul 2>&1
if errorlevel 1 (
    echo ERREUR : Git n'est pas installe ou n'est pas dans le PATH.
    pause
    exit /b 1
)

REM Verifie que le dossier est bien un depot Git
git rev-parse --is-inside-work-tree >nul 2>&1
if errorlevel 1 (
    echo ERREUR : ce dossier n'est pas un depot Git.
    echo Placez ce fichier a la racine de votre dossier stunts-data.
    pause
    exit /b 1
)

echo [1/3] Verification des modifications locales...
git status --porcelain > "%TEMP%\stunts_git_status.tmp"

for %%A in ("%TEMP%\stunts_git_status.tmp") do if %%~zA GTR 0 (
    echo.
    echo ATTENTION : des fichiers locaux ont ete modifies.
    echo.
    git status --short
    echo.
    echo La mise a jour est interrompue pour eviter d'ecraser
    echo ou de melanger vos modifications locales.
    echo.
    echo Utilisez d'abord Publier.bat pour envoyer vos changements,
    echo puis relancez Mise_a_jour.bat.
    del "%TEMP%\stunts_git_status.tmp" >nul 2>&1
    pause
    exit /b 1
)

del "%TEMP%\stunts_git_status.tmp" >nul 2>&1

echo Aucun changement local non publie.
echo.

echo [2/3] Recherche des nouveautes sur GitHub...
git fetch origin
if errorlevel 1 goto :error

echo.
echo [3/3] Mise a jour du dossier local...
git pull --ff-only origin main
if errorlevel 1 (
    echo.
    echo ERREUR : la mise a jour automatique n'est pas possible.
    echo Le depot local et GitHub ont peut-etre diverge.
    echo Aucun merge automatique n'a ete effectue.
    pause
    exit /b 1
)

echo.
echo ==========================================
echo          MISE A JOUR TERMINEE
echo ==========================================
echo.
echo Votre dossier local est maintenant synchronise
echo avec la branche main de GitHub.
echo.
pause
exit /b 0

:error
echo.
echo ==========================================
echo             ERREUR GIT
echo ==========================================
echo.
echo La mise a jour n'a pas ete terminee.
echo Consultez les messages ci-dessus.
echo.
pause
exit /b 1
