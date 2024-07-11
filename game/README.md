# Dev board

[Link to dev board](https://1drv.ms/o/s!Ah2eJRV3UwEygeN6mWas_na4dgxNRA?e=YrJdbh)

## Current focus:
	>>> inventory system <<<
## Things to add:
- [x] stworzenie ogólnej struktury ekwipunku opartej na resource'ach
- [x] hotbar z 3 slotami
- [x] example inventory i otwarcie pod "e"
- [x] example skrzynia i otwarcie pod "f" jak przecina interact_ray
- [x] armor slot w którym można umieścić tylko itemy typu ItemDataEquip
- [ ] zielona ramka gdy przedmiot trzymany i na hotbarze
- [ ] żółta ramka gdy kliknięcie LPM i wyświetlenie name i description
- [ ] kliknięcie PPM na stackable przedmiot dzieli jego ilość na pół
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

# Dev notes

## Latest commit:
* zmiana V-sync mode na "Disabled" (naprawa lagowania przy poruszaniu myszką)
* zmiana rendering method na Compatibility
* dodanie światła, ciemności i zmienienie default clear color na pure black

## Bugs:
* position smoothing kamery troche ssie
* obracanie się sprite'ów troche ssie

## Info:
* rzeczy obecnie są skalowane x4
