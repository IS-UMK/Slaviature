# Slawiatura
Klawiatura Unicode dla slawistycznego alfabetu fonetycznego

### Layout_klawiatury v1.0:
![slawiatura_layout](slawiatura_v1.0.png)


### Instalacja w systemach Linux
Aby zainstalować klawiaturę wystarczy skopiować cztery pliki:
```
-base.lst,
-evdev.lst,
-evdev.xml, 
-base.xml.
```

Te pliki podmieniamy z plikami znajdującymi się w katalogu ```/usr/share/X11/xkb/rules.```
Jeśli jednak miało się jakieś niestandardowe klawiatury zainstalowane, to zamiast zastępować pliki, należy do tych plików dopisać parę linijek w sekcjach związanych z layout'em. Wtedy nie powinniśmy stracić innych niestandardowych zainstalowanych layout'ów.

Do plików base.lst oraz endev.lst dopisujemy:
```slav            Slavistic Phonetic Alphabet```

Do plików zaś base.xml oraz endev.xml:
```
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
Plik ```slav``` umieszczamy w katalogu ```/usr/share/X11/xkb/symbols```.
Po tym slawiatura powninna być zainstalowana w systemie Linux.

Aby z niej skorzystać wystarczy wpisać w terminalu tą komendę: ```setxkbmap slav```

### Decyzje projektowe
Szukając informacji jak stworzyć znaki które nie mają swojego kodu unicode zacząłem się zastanawiać jak powstają znaki złożone, bo w końcu są to złączone znaki unicode z sobą. Na wikipedii natknąłem się na ten artykuł: https://en.wikipedia.org/wiki/Combining_character.
W nim się dowiedziałem, że istnieją specjalne znaki unicode, które służą by były łączone z innymi znakami. Nazywają się one "Combining Diacritical Marks". Okazały się one bardzo świetnym rozwiązaniem moich problemów. Ich działanie polega na tym, że jak podamy jakiś znak, a następnie diacritic mark, to on się złączy z tym znakiem tworząc znaki złożone. Podając kolejne znaki będą one się z sobą dalej łączyły. Dzięki temu można tworzyć bardzo złożone symbole, których brakuje w unicode.
Wykorzystanie tego pozwoliło mi także zaoszczędzić sporo miejsca, dlatego mogłem dodać do klawiatury wielkie litery zgodnie z Pana życzeniem.

Ułożenie powinno być intuicyjne, więc nie powinno sprawić kłopotów. Przynajmniej ja po testowaniu jej parę razy szybko się przyzwyczaiłem.
Wszystkie znaki zostały dobrane tak, by były dopasowane do symboli na klawiaturze.

Znak związany z tyldą nad literami ~ został umieszczony tam gdzie tylda, tylko by go użyć używamy alt+shift+tyldaKey.
Pod spodem pod altem umieściłem ʹ, który jest wykorzystywany przy niektórych znakach np. tʹ, bo przypominał mi odbicie lustrzane tego znaku `.

Pod altem przy ósemce umieściłem symbol ◌̊, który nad znakiem tworzy okrąg.
Umieściłem ten symbol tam, bo przypominał mi ósemkę, trochę bałwana.

Przy 9 i 0  pod altem znajdują się podobne symbole. Historia tego miejsca dla nich jest taka sama. Po prostu te znaki skojarzyły mi się z tym jakby nawiasy z nad tych dwóch cyfr spadły i utworzyły te symbole.

Pod altem, tam gdzie jest apostrof umieściłem, symbol który służy do tworzenia takich liter jak ś, ʒ́ itd.

Na klawiszu gdzie jest średnik oraz dwukropek umieściłem symbole na wszelki wypadek. Pod altem znajduję się ogonek, by tworzyć np. ą, ę. Pod altem i shiftem znajduje się ◌̈. Te symbole jak pisałem są na wszelki wypadek, gdybym był jakiś znak, który by ich potrzebował, a ja nie miałem o nim pojęcia.

Tam gdzie znajduję się przecinek na klawiaturze pod altem występuje symbol, który tworzy np. m̦.
Przy znaku kropki jest podobna historia, pod altem może on tworzyć . pod znakiem.
Tam gdzie jest slash, pod altem znajduję się taki symbol ◌̩  . Jest on wykorzystywany w paru znakach.

Dla klawiszy B, N, M pod altem i alt + shiftem zostały zarezerwowane dla odmian litery n.
O dziwo litera n ma sporo wersji w języku fonetycznym, a że znaki b oraz m, miały wolne sloty pod altem i altem + shiftem wykorzystałem je. Nie powinno być problemu z skojarzeniem tego. Ja się szybko przyzwyczaiłem, gdyż są w pobliżu.

Tam gdzie znajduje się litera V, pod altem umieściłem symbol, który pozwala tworzyć znaki takie jak: ǯ, č itd. Powód prostu. Te symbole są do siebie bardzo podobne.

Pod x wylądowała grecka litera chi, która jest wykorzystywana w alfabecie fonetycznym, a pod altem, jak w polskiej klawiaturze litera ź.

Pod literą Z, pod altem umieściłem ʒ. Z początku kształtu przypomina z, a do tego jest wykorzystywana przy wymowie dz, cz, więc skojarzenia z są uzasadnione.

Pod literą y, pod altem jest litera γ(gamma), która też jest wykorzystywana.

Wydaje mi się, że klawiatura posiada wszystkie litery i symbole by stworzyć wszystkie znaki w alfabecie fonetycznym slawistycznym. Dla mnie wszystko wydawało się intuicyjne i bardzo szybko się przyzwyczaiłem testując klawiaturę.


### Czcionki
Niestety nie wszystkie czcionki są w stanie wyrenderować bardziej złożone znaki z jakich się korzysta w alfabecie fonetycznym slawistycznym. Mam na myśli znaki, które mają więcej niż jeden znak. W sensie mogą one nachodzić na siebie, lub renderować obok siebie, a nie nad znakiem lub pod nim.

Pod spodem znajduje się lista czcionek domyślnie zainstalowanych(przynajmniej były na linux mint 20), które potrafią obsłużyć slawiature (nie są one idealne).
```
-Liberation Sans
-Ubuntu Mono
-Tex Gyre Adventure
-Tex Gyre Pagella
-Noto mono
```
W czcionkach Tex Gyre należało by zwiększyć odstępy między wierszami, by symbole nie nachodziły na siebie. Ostatnie trzy czcionki gdy znak jest z byt wielki, wyrenderują dopiero reszte znaku jak się zapiszę plik. Czyli jak jest wielkie A, nad nim są dwie kropki, a nad nimi tylda, to ta tylda pojawi się dopiero gdy się zapiszę plik. (przynajmniej tak się działo w Linux Mint). Nie jest to uciążliwe, zwłaszcza gdy często się używa ctrl+s.

Szukając czcionki zauważyłem, że na moim telefonie gdy patrzyłem na stronę z alfabetem fonetycznym znaki były wyświetlane prawidłowo. Zaciekawiłem się co to za czcionka. Okazało się, że to czcionka od google'a i nazywa się roboto.
Zainstalowałem ją by to sprawdzić. I faktycznie ta czcionka, jak do tej pory najlepiej prezentuje ten alfabet.
Przy niej także trzeba zapisywać plik, by zbyt wielkie symbole się wyświetliły, ale to nie jest problem, gdyż każdy przy swojej pracy zapisuje pliki, a wielkie litery z bardzo złożonymi znakami raczej nie są tak często używane.

Czcionka roboto, wygrała dla mnie, bo znaki renderowały się tak jak chciałem i miały prawidłowy wygląd.
Czcionkę można zainstalować wpisując komendę: ```sudo apt install fonts-roboto```



