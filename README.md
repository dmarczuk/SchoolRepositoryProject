# PROJEKT BAZA DANYCH SZKOŁY


## PODSTAWOWE ZAŁOŻENIA PROJEKTU

Założeniem projektu jest stworzenie bazy danych szkoły, która będzie przechowywać podstawowe informacje na temat uczniów, nauczycieli, zajęć jak i elementów ściśle powiązanych ze szkołą takich jak sklepik czy biblioteka. Głównymi tabelami będą tabele uczeń oraz nauczyciel. Uczniowie należą do klas, które mają swój plan lekcji. Nauczyciele prowadzą swoje przedmioty, mają dyżury oraz lekcje.  Istnieją również dodatkowe tabele dotyczące sklepiku szkolnego, biblioteki oraz pozostałych pracowników szkoły. Tabela absolwenci przechowuje uczniów, którzy zakończyli szkołę (więcej na temat tabel w dalszej części opisu). Diagram bazy danych znajduje się w osobny pliku o nazwie Diagram.rtf.

# Opis stworzonych funkcji

1) cenaProduktu – funkcja zwraca cenę produktu o podanej nazwie

2) produktyNieDrozszeNiz - funkcja zwraca wszystkie produkty z tabeli o cenie nie większej jak podana

3) ktoJestAutoremKsiazki -  funkcja zwraca imię i nazwisko podanej książki

4) ktoUczyPrzedmiotu – funkcja zwraca nauczycieli prowadzących podany przedmiot

5) DyzurNauczyciela – funkcja podaje datę oraz nr sali dyżuru danego nauczyciela

6) UczniowieKlasy – funkcja wypisuje uczniów uczęszczających do podanej klasy

7) AbsolewnciRoku – funkcja wypisuje wszystkich uczniów, którzy ukończyli szkołę w podanym roku

8) PlanLekcjiKlasy – funkcja wypisuje wszystkie lekcje podanej klasy

9) OcenyUcznia – wypisuje wszystkie oceny podanego ucznia

10) ZajetaSala – wypisuje wszystkie zajęcia, które odbywają się w podanej sali


# Opis stworzonych procedur

1) dodajUcznia – procedura dodaje nowego ucznia do tabeli uczeń

2) usunUcznia – procedura usuwa ucznia z tabeli uczeń

3) czyIstniejeProdukt – procedura sprawdza czy istnieje w tabeli produkty dany produkt

4) zakonczRokSzkolny – procedura przenosi uczniów, którzy właśnie zakończyli szkołę do tabeli absolwenci oraz przenosi pozostałych uczniów do następnych klas

5) DodajOcene –  wstawia dane do tabeli oceny dla takich danych jak imię, nazwisko, nazwa przedmiotu i ocena. W przypadku próby wprowadzenia oceny dla nieistniejącego ucznia pojawi się komunikat o błędzie.


# Opis stworzonych wyzwalaczy

1) UstawDateDostawy – ustawia datę dostawy do sklepiku


# Opis tabel i skrypt tworzący bazę danych

Tabele:

1) KLASA – przechowuje dane dotyczące klas w szkole. Zawiera takie informacje jak numer klasy, ilość uczniów czy wychowawca klasy. Domyślna wartość uczniów w klasie to 0

2) UCZEŃ - dane o uczniach. Czyli imię, nazwisko, pesel oraz numer klasy do której uczęszcza dany uczeń

3) NAUCZYCIEL – analogicznie do tabeli uczeń, przechowuje imię, nazwisko i pesel oraz informację o prowadzonym przedmiocie, wychowawstwie czy dyżurach

4) DYŻUR - przechowuje informacje o dyżurach nauczycieli. W jakiej sali oraz data dyżuru.

5) SALA – przechowuje informacje o salach w szkole

6) PRZEDMIOT – przechowuje informacje o prowadzonych w szkole przedmiotach

7) PLAN LEKCJI – przechowuje plan lekcji dla każdej klasy.

8) DATA – przechowuje informacje o czasie trwania godzin lekcyjnych

9) PRACOWNIK – informacje o pracownikach szkoły oraz zawodzie jaki wykonują

10) ZAWÓD - przechowuje informacje o wykonywanych zawodach w szkole

11) ABSOLWENCI – dane uczniów którzy ukończyli szkołę

12) SKLEPIK – przechowuje informacje o datach dostawy i sprzedaży produktów w sklepiku

13) PRODUKT – informacje o produktach w sklepiku

14) BIBLIOTEKA – przechowuje informacje o wypożyczeniach książek z biblioteki

15) KSIĄŻKA - informacje o książkach w bibliotece

16) AUTOR – dane o autorach książek z biblioteki

17) OCENY – przechowuje dane o ocenach uczniów


# Skrypt tworzący bazę danych:

Skrypt zawarty jest w pliku Tabele.sql


# Typowe zapytania:

Typowe zapytania zawarte są w pliku Kwerendy.sql
