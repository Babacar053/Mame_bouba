@echo off
setlocal enabledelayedexpansion

REM ==========================================================
REM  Ce script renomme toutes les images du dossier IMAGES
REM  en affiche1.jpeg, affiche2.jpeg, ... affiche48.jpeg
REM
REM  UTILISATION :
REM  1. Placez ce fichier .bat DANS le dossier IMAGES
REM     (au meme niveau que vos photos/affiches)
REM  2. Double-cliquez dessus
REM  3. Vos images seront renommees dans l'ordre alphabetique
REM ==========================================================

set count=1

for %%f in (*.jpg, *.jpeg, *.png) do (
    ren "%%f" "affiche!count!.jpeg"
    set /a count+=1
)

echo.
echo Termine ! !count! fichiers ont ete traites (moins 1).
pause