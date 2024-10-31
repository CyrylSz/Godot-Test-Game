# Current focus:
	>>> inventory system <<<

## Things to add:
- [x] stworzenie ogólnej struktury ekwipunku opartej na resource'ach
- [x] hotbar z 3 slotami
- [x] example inventory i otwarcie pod "e"
- [x] example skrzynia i otwarcie pod "f" jak przecina interact_ray
- [x] armor slot w którym można umieścić tylko itemy typu ItemDataEquip
- [ ] przedmiot jest w ramce gdy jest trzymany i na hotbarze
- [x] wyświetlenie name i description jako tooltip'u
- [x] kliknięcie PPM przeciągając stackable przedmiot upuszcza polowe
- [x] kliknięcie PPM + shift przeciągając stackable przedmiot upuszcza tylko 1
- [x] mozliwosć dzielenia stackable przedmiotów podczas przeciągania dzięki PPM
- [x] przeciąganie itemów miedzy slotami gdy trzyma się LPM
- [ ] podczas przeciągania itemu na inny:
	- [x] albo scalają się w jednen jeśli to ten sam stacakble item
	- [x] albo zamieniają się miejscami
	- [ ] albo wyświetla się okno wyboru swap lub combine w nowy item
- [ ] lista przypadkowo/znalezionych crafting recipe pod przyciskiem w inv
- [ ] lista znalezionych notatek z lore lub wzkazówek pod przyciskiem w inv
- [ ] lista questów pod przyciekiem w inv
- [ ] Przyciski do list pojawiają się gdy ilość elementów w niej jest minimum 1
- [x] możliwość używania consumable itemów z hotbaru
- [ ] możliwość rzucania itemami gdy item jest throwable i wybrany na hotbarze
- [x] podnoszenie itemów gdy blisko gracza i gdy kliknie się "f"
- [x] możliwosć wyrzucenia itemów z ekwipunku na podłoge
- [ ] smooth wyświetlanie tooltipu z nazwą nad itemem gdy przecina interact_ray
- [ ] podnoszenie/craftowanie coraz lepszych plecaków powiększajęcych inv space
- [x] otekturowanie slotów i backgroundu ekwipunku
- [ ] lekkie migotanie itemu jak leży
- [x] zbytnie oddalenie się od skrzyni automatycznie zamyka jej podgląd
- [ ] możliwość szybkiego przeżucania itemów między ekwipunkami gdy shift + LPM

# Dev notes

## Bugs:
* position smoothing kamery troche ssie
* obracanie się sprite'ów troche ssie
* drastyczne spadki fps'ów przy poruszaniu myszką

## Info:
* rzeczy obecnie są skalowane x4
