
# O projekcie Slawiatura — Debian/Linux (XKB)

Układ klawiatury Slawiatura umożliwia szybkie wprowadzanie znaków Slawistycznego
Alfabetu Fonetycznego w środowisku Debian/Linux jako wariant XKB. 

## Instalacja

Skopiuj plik `slav` z folderu:
- `linux/slav_1.0_all/usr/share/X11/xkb/symbols/` 

do systemowego folderu:
- `/usr/share/X11/xkb/symbols/`

Możesz to zrobić np. poleceniem (wymagane są uprawnienia root):

```bash
sudo cp Slaviature/linux/slav_1.0_all/usr/share/X11/xkb/symbols/slav \
	 /usr/share/X11/xkb/symbols/
```

## Jak włączyć

1. Za pomocą polecenia *setxkbmap*

```bash
setxkbmap slav
```

2. Dla ułatwienia przełączania między układami, możesz użyć dostarczonego
   skryptu:

``` bash
./ChangeLayout.sh
```

## Dodatkowe opcje i konfiguracja
- Jeśli korzystasz z innego narzędzia niż setxkbmap, np. graficznego menedżera
  układów, możesz doinstalować lub zmodyfikować pliki w folderze `rules/`.
- Pliki w `rules/` zawierają reguły XKB zgodne z systemowymi standardami.
- Aby zmiany zadziałały globalnie lub trwałe, trzeba je odpowiednio zainstalować
  w `/usr/share/X11/xkb/` lub w katalogu domowym.
