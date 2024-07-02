# Git Guide
## Słowa
Repo (Repozytorium) to fancy folder, lokalny lub na GitHubie, przechowujący gałęzie, ich historie i inne dane.
Gałęzie też są fancy folderami przechowującymi różne stany jednego projektu i można je ze sobą scalać (tzw. merge).
Gałąź to normalne foldery i pliki.
---
## Tworzenie repo na GitHub i pobierańsko Gita
1. Otwórz [GitHub](https://github.com/) i zarejestruj się.
2. Utwórz puste repozytorium.
3. Otwórz [gitforwindows.org](https://gitforwindows.org/) i kliknij download.
4. Zaznacz "add Git Bash Profile to Windows Terminal".
5. Domyślny edytor: dowolny (np. VSC lub Notepad).
6. Wszystko inne wyjebane, więc spamuj next.
7. Uruchom "Git Bash".
---
## Git
### Jednorazowe czynności:
1. Konfiguracja:
```bash
git config --global user.name "Morenka"
git config --global user.email "SweetNight@gmail.com"
```
2. Pobranie całego repo z wszystkimi gałęziami:
```bash
cd path/to/GODOT/project/file
git clone https://github.com/nazwauzytkownika/nazwa_repo.git   # jak pobierasz projekt po raz pierwszy, tworzy repo i gałęzi automatycznie
```
3. Tworzenie własnego lokalnego repozytorium (gdy tworzysz nowy projekt):
```bash
cd path/to/GODOT/project/file
git init   # inicjalizacja lokalnego repozytorium w obecnym folderze, tworzy ukryty folder o  nazwie ".git", zawiera gałąź o domyślnej nazwie "master"
git status
git add .   # dodanie wszystkiego (poza plikami wymienionymi w .gitignore) z obecnego folderu do lokalnej gałęzi "master" w lokalnym repo
git status
git commit -m "opis zmian"   # dokumentacja, wiadomość o tym co dodałeś. "-m" to skrót od "message" i umożliwia dodanie wiadomości opisującej commit bez konieczności otwierania edytora tekstu
```
4. Łączenie SSH z GitHubem:
```bash
ls -al ~/.ssh
ssh-keygen -t rsa -b 4096 -C "SweetNight@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa   # po wpisaniu zalecane spamienie entera aby wybrać domyślne ustawienia
cat ~/.ssh/id_rsa.pub | clip   # kopiowanie klucza abyś mógł wkleić go na GitHubie
```
5. Połączenie repozytoriów local z remote i wysłanie gałęzi "main" na GitHuba:
```bash
git remote add origin https://github.com/Galganstudiosdev/nazwa_repo.git
git branch -M main   # zmiana nazwy gałęzi "master" na "main", bo "main" to tradycyjna nazwa głównej gałęzi na GitHubie
git push -u origin main   # "-u" oznacza „upstream” i powiązuje local gałąź „main” z remote gałąź „main” znajdującej się na remote repo „origin”
git push   # można teraz pisać skrótowo dzięki połączeniu
git remote -v   # "-v" view remote link, btw "git remote rm origin" usuwanie połączenia	
git push origin main --force   # tylko jak pushe normalne nie działają z jakiś powodów
```
### Rutynowe czynności:
1. Nawigacja:
```bash
cd path/to/file
ls -la
git status
git branch
```
2. Aktualizowanie gałęzi main i wysłanie na GitHub:
```bash
cd path/to/GODOT/project/file
git add .
git status
git commit -m "Nazwa update'u"
git push
```
3. Tworzenie nowej gałęzi i wysłanie na GitHub (uwaga, to nie to samo co fork, fork to kopia całego repo z wszystkimi gałęziami):
```bash
cd path/to/GODOT/project/file
git branch nazwa_galezi   # tworzenie nowej gałęzi
git branch   # pokazuje listę gałęzi, lub "git show-branch" for more info
git checkout nazwa_galezi	# przejście do podanej gałęzi, btw main to też gałąź!
git add .   # lub tylko konkretne foldery
git status
git commit -m "Nazwa update'u"
git push -u origin nazwa_galezi
git push   # Jak zrobiłeś update to można scalić ją z main gałęzią na GitHubie (wielki zielony przycisk), po czym usunąć gałąź "nazwa_galezi"
```
4. Pobranie gałęzi z GitHuba (gdy ty lub ktoś inny zmieni coś w jakieś gałęzi):
```bash
git branch -u origin main   # lub nazwa_galezi, btw dla doprecyzowania można napisać "origin/nazwa_galezi"
git checkout main   # lub nazwa_galezi
git branch   # info, jesteś w gałęzi zielonej
git status
git pull
```
5. Merge conflicts (jak git nie wie jakie linijki kodu mają zostać a jakie nie):
```bash
git pull   # manualnie musisz naprawić wskazane pliki usuwając niechciany kod
git pull --rebase   # próba automatycznej naprawy merge conflict'ów, jeśli działa you are done
```
---