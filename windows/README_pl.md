
# O projekcie Slawiatura — Windows (AutoHotkey)

**Slaviature.exe** to klawiatura działająca na zasadzie aplikacji w tle,
stworzona z myślą o pracy z domyślnym układem **Polski (Programisty)** w
Windows. Aplikacja umożliwia szybki dostęp do znaków Slawistycznego Alfabetu
Fonetycznego bez zmiany systemowego układu klawiatury.

## Jak włączyć

1. Uruchom aplikację **Slaviature.exe**:
   - Dwukrotnie klikając lewym przyciskiem myszy
   - Lub pojedynczym kliknięciem prawym przyciskiem myszy i wybraniem opcji **Otwórz**

2. Po uruchomieniu aplikacji w pasku zadań pojawi się jej ikona. Pasek zadań
   znajduje się domyślnie w prawym dolnym rogu ekranu — obok ikon głośności,
   sieci, baterii i zegara.

3. Jeśli Windows ukryje ikonę, kliknij strzałkę **Pokaż ukryte ikony**:

##  Dostępne opcje

Aby otworzyć menu opcji:

- Kliknij prawym przyciskiem myszy na ikonę aplikacji w pasku zadań (lub w sekcji ukrytych ikon).

Dostępne opcje:

- **Suspend Hotkeys** — zawiesza działanie aplikacji, umożliwiając wpisywanie polskich znaków systemowych bez wyłączania Slawiatury.
- **Pause Script** — opcja techniczna generowana przez kompilator AutoHotkey, nie ma wpływu na działanie Slawiatury.
- **Exit** — kończy działanie aplikacji w tle.

## Jak stworzyć własny plik EXE

1. Pobierz i zainstaluj [AutoHotkey](https://www.autohotkey.com/).
2. Kliknij prawym przyciskiem myszy na plik `Slaviature.ahk` i wybierz **Compile Script**.
3. Utworzony zostanie plik `Slaviature.exe` działający identycznie jak gotowa wersja.

## Pliki w folderze

- `Slaviature.ahk` — skrypt AutoHotkey z definicją układu klawiatury.
- `Slaviature.exe` — skompilowana wersja działająca w tle.
