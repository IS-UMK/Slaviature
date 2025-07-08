
# Slawiatura — Debian/Linux (XKB)

[![Zobacz na GitHubie](https://img.shields.io/badge/Zobacz%20na%20GitHubie-f2f2f2?style=for-the-badge&logo=github&logoColor=303030&color=f2f2f2)](https://github.com/IS-UMK/Slaviature/blob/master/linux/pl/)

**Slawiatura** umożliwia szybkie wprowadzanie znaków Slawistycznego Alfabetu
Fonetycznego w środowisku Debian/Linux z wykorzystaniem XKB (ang. *X Keyboard
Extension*).

## Instalacja

Przejdź do lokalnego folderu, w którym sklonowałeś/pobrałeś to repozytorium, a następnie skopiuj plik `slav` z:
- `linux/usr/share/X11/xkb/symbols/` 

do systemowego folderu:
- `/usr/share/X11/xkb/symbols/`

Możesz to zrobić np. poleceniem (wymagane są uprawnienia root):

```bash
sudo cp linux/usr/share/X11/xkb/symbols/slav \
	 /usr/share/X11/xkb/symbols/
```

## Użytkowanie z wykorzystaniem *setxkbmap*

1. Sprawdź, jaki masz ustawiony układ klawiatury

   ```bash
   setxkbmap -query
   ```

   Przykładowa odpowiedź z domyślnym układem klawiatury dla języka polskiego 'pl':
   ```conf
   rules:      evdev
   model:      pc105
   layout:     pl
   ```
  
   Możliwe są jeszcze dwa pola w odpowiedzi: 'variant' i 'options'. W tym
   przykładzie są niewidoczne, ponieważ nie są ustawione.

2. Włącz Slawiaturę

   ```bash
   setxkbmap slav
   ```

3. Możesz wrócić do wcześniej ustawionego układu klawiatury poleceniem:

   ```bash
   setxkbmap pl
   ```

4. Dla ułatwienia korzystania z domyślnej klawiatury i Slawiatury możesz ustawić
   je jednocześnie i dodać skrót klawiszowy np. 'Win + Space' do przełączania
   między tymi układami.

   ```bash
   setxkbmap -layout "pl,slav" -option "grp:win_space_toggle"
   ```

   Więcej możliwych skrótów znajdziesz, wywołując polecenie:

   ```bash
   grep 'grp.*toggle' /usr/share/X11/xkb/rules/base.lst
   ```
   
5. Opcja z przełączaniem klawiatur z wykorzystaniem *setxkbmap* z flagą
   `-option` może nie działać prawidłowo pod GNOME. W takim przypadku do plików
   *base.extras.xml* i *evdev.extras.xml*, znajdujących się w katalogu
   `/usr/share/X11/xkb/rules/`, dodaj:
   
   ```xml
   <layout>
     <configItem popularity="exotic">
	   <name>slav</name>
	   <!-- Keyboard indicator for Slavistic Phonetic Alphabet layouts -->
	   <shortDescription>slav</shortDescription>
	   <description>Slavistic Phonetic Alphabet — Slawiatura</description>
     </configItem>
   </layout>
   ```
   
   Następnie skonfiguruj klawiaturę w „Ustawienia” → „Język i region” → „Źródła
   wprowadzania”. Aby dodać nowy układ, kliknij przycisk „+” i wybierz/wyszukaj
   „slav”. 
   
   W tym repozytorium znajdują się również wersje tych plików z już dodaną
   konfiguracją, więc możesz sprawdzić, jak została ona w nich wpisana.

## Dodatkowa opcja

Możesz również skorzystać ze skryptu *changeLayout.sh*, który znajduje się w tym
repozytorium. Wystarczy umieścić go np. w katalogu `/usr/local/bin`, nadać mu
prawa do wykonywania oraz przypisać do niego wygodny skrót klawiszowy w
systemie. Skrypt ten umożliwia szybkie przełączanie się pomiędzy zdefiniowanymi
układami klawiatury bez konieczności ręcznego używania setxkbmap lub wchodzenia
w ustawienia systemowe.
