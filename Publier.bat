@echo off
setlocal
cd /d "%~dp0"

title STUNTS - Publication GitHub

echo.
echo ==========================================
echo      STUNTS - PUBLICATION GITHUB
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
    echo Placez Publier.bat a la racine de D:\stunts-data
    pause
    exit /b 1
)

echo [1/4] Detection des modifications...
git add -A
if errorlevel 1 goto :error

echo.
echo [2/4] Creation du commit...

git diff --cached --quiet
if errorlevel 1 (
    git commit -m "Stunts update %date% %time%"
    if errorlevel 1 goto :error
) else (
    echo Aucun changement local a committer.
)

echo.
echo [3/4] Synchronisation avec GitHub...
git pull --rebase origin main
if errorlevel 1 (
    echo.
    echo ERREUR pendant le git pull --rebase.
    echo Resoudre le conflit avant de republier.
    pause
    exit /b 1
)

echo.
echo [4/4] Publication sur GitHub...
git push origin main
if errorlevel 1 goto :error

echo.
echo ==========================================
echo        PUBLICATION TERMINEE
echo ==========================================
echo.
pause
exit /b 0

:error
echo.
echo ==========================================
echo             ERREUR GIT
echo ==========================================
echo.
echo La publication n'a pas ete terminee.
echo Consultez les messages ci-dessus.
echo.
pause
exit /b 1
