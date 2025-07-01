# Slawiatura
Klawiatura Unicode dla slawistycznego alfabetu fonetycznego

### Layout_klawiatury v1.0:
![slawiatura_layout](pictures/slawiatura_v1.0.png)


### Instalacja Slawiatury: Linux - Gnome

Aby układ klawiatury działał musimy uruchomić Gnome na serwerze wyświetlania
Xorg. Można łatwo tego dokonać.
Na ekranie logowania użytkownika w prawym dolnym rogu znajduje się zębatka.
Po kliknięciu na nią możemy wybrać inne wersje środowiska graficznego.

![example_debian](pictures/debian_example.png)

Instalacja:
1. Pobierz paczkę ``slav_1.0_all.deb``.
2. W katalogu w którym znajduje się paczka otwórz terminal. Aby zrobić to szybko, użyj prawego przycisku myszy i wybierz opcje otwórz w terminalu.
3. Użyj komendę ``sudo dpkg -i slav_1.0_all.deb``.
4. Po wprowadzeniu hasła, paczka powinna być zainstalowana.
5. Użyj polecenia ``sh setupShortcut.sh``,  aby ustawić skrót klawiszowy
6. Teraz możesz korzystać z slawiatury. Aby przełączyć się między układami klawiatury, użyj skrótu ``Super + z``. 

Klawisz ``Super`` na klawiaturze to najczęściej klawisz z logiem Windows'a.
Skrót klawiszowy możesz zmienić w ustawieniach systemu.

Odinstalacja:
1. Uruchom terminal.
2. W terminalu użyj polecenia ``sh removeShortcut.sh``.
3. Użyj polecenia ``sudo apt remove slawiatura``
4. Po podaniu hasła i potwierdzeniu zgody na odinstalowanie pakiet z klawiaturą powinien zostać usunięty z systemu.

Uwaga!!!
Jeżeli korzystasz z systemu Debian, twój użytkownik musi mieć uprawnienia by zainstalować paczkę. Aby dodać użytkownika do grupy sudo wykonaj poniższe
polecenia:
1. Przełącz się na root'a używając polecenia ``su``.
2. Po wprowadzeniu hasła użyj polecenia: ``sudo usermod -aG sudo [$user]``, gdzie ``[$user]``, to nazwa twojego użytkownika. 
3. Przełącz się na swojego użytkownika używając ``su [$user]``.

### Instalacja Slawiatury: Linux - Cinnamon

Instalacja:
1. Pobierz paczkę ``slav_1.0_all.deb``.
2. W katalogu w którym znajduję się paczka, otwórz terminal. Można tego szybko dokonać używając prawego przycisku myszy i wybrać opcje otwórz w terminalu.
3. Użyć polecenia ``sudo dpkg -i slav_1.0_all.deb``.
4. Po podaniu hasła paczka oraz skrót powinny zostać zainstalowane (testowane na Linux Mint).
5. Aby skrót zadziałał trzeba zrestartować środowisko graficzne. W Linux Mint wystarczy użyć skrótu klawiszowego ``ctrl + alt + esc``.
6. Teraz możesz przełączyć się na slawiaturę używając skrótu ``Super + z``

Odinstalcja:
1. Otwórz terminal
2. Wpisz polecenie ``sudo apt remove slawiatura``
3. Po podaniu hasła paczka powinna zostać usunięta wraz z skrótem.
4. Zrestartuj środowisko graficzne
  
Uwaga!!!
Środowisko Cinnamon testowałem na systemie Linux Mint. Paczkę można zainstalować za pomocą instalatora pakietów, ale wtedy dodanie i usunięcie skrótu trzeba wykonać ręcznie jak w Gnome. Po wykonaniu tego, trzeba zresetować środowisko graficzne.

### Czcionki

Niestety nie wszystkie czcionki są w stanie wy renderować bardziej złożone znaki z jakich się korzysta w alfabecie fonetycznym slawistycznym.
 
Czcionki które mogą tego dokonać to np. czcionka roboto.
Aby ją zainstalować trzeba w terminalu wpisać polecenie:
 ``sudo apt install fonts-roboto``

Kolejnym przykładem czcionki, która dobrze wyświetla wszystkie znaki, jest Iosevka.
Podaną czcionkę i instrukcję jej instalacji znajdziecie pod adresem:
https://github.com/be5invis/Iosevka



