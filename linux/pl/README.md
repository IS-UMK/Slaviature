
# Slawiatura — Debian/Linux (XKB)

[🇬🇧 English version](../README.md)

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

1. Włącz Slawiaturę

   ```bash
   setxkbmap slav
   ```

2. Możesz wrócić do wcześniej ustawionego układu klawiatury poleceniem:

   ```bash
   setxkbmap pl
   ```

3. Dla ułatwienia korzystania z domyślnej klawiatury i Slawiatury możesz ustawić
   je jednocześnie i dodać skrót klawiszowy np. 'Lewy Alt + Shift' do przełączania
   między tymi układami.

   ```bash
   setxkbmap -layout "pl,slav" -option "grp:alt_shift_toggle"
   ```

   Więcej możliwych skrótów znajdziesz, wywołując polecenie:

   ```bash
   grep 'grp.*toggle' /usr/share/X11/xkb/rules/base.lst
   ```

## Dodatkowe opcje i konfiguracja

Jeśli korzystasz z innego narzędzia niż *setxkbmap*, np. graficznego menedżera
układów, możesz zmodyfikować pliki *base.lst, base.xml, evdev.lst, evdev.xml* w
swoim systemowym katalogu `/usr/share/X11/xkb/rules`, dodając w nich informację
o Slawiaturze. W tym repozytorium znajdują się również wersje tych plików z już
dodaną konfiguracją, więc możesz sprawdzić, jak została ona w nich
wpisana. Poniżej przykładowe fragmenty tych plików:
  
base.lst i evdev.lst:
```conf
! layout
sk              Slovak
slav            Slavistic Phonetic Alphabet
es              Spanish
```
  
base.xml i evdev.xml:
```xml
   <layout>
    <configItem>
      <name>slav</name>
      <!-- Keyboard indicator for Slavistic Phonetic Alphabet layouts -->
      <shortDescription>slav</shortDescription>
      <description>Slavistic Phonetic Alphabet - Slawiatura</description>
      <languageList/>
    </configItem>
    <variantList/>
  </layout>
```
