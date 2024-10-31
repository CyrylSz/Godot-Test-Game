# Current focus:
	>>> inventory system <<<

## Things to add:
- [x] creation of a general inventory structure based on resources
- [x] hotbar with 3 slots
- [x] example inventory and opening with "e"
- [x] example chest and opening with "f" when it intersects `interact_ray`
- [x] armor slot that only accepts items of type `ItemDataEquip`
- [ ] item is highlighted when held and on the hotbar
- [x] displaying name and description as a tooltip
- [x] right-clicking (RMB) while dragging a stackable item drops half
- [x] right-clicking (RMB) + shift while dragging a stackable item drops only 1
- [x] ability to split stackable items while dragging using RMB
- [x] dragging items between slots when holding LMB
- [ ] when dragging an item onto another:
    - [x] either they merge if it’s the same stackable item
    - [x] or they swap places
    - [ ] or a window appears to choose swap or combine into a new item
- [ ] list of random/found crafting recipes under a button in inventory
- [ ] list of found lore notes or clues under a button in inventory
- [ ] list of quests under a button in inventory
- [ ] buttons for lists appear when the list has at least 1 item
- [x] ability to use consumable items from the hotbar
- [ ] ability to throw items if the item is throwable and selected on the hotbar
- [x] picking up items when close to the player and pressing "f"
- [x] ability to drop items from inventory onto the ground
- [ ] smooth display of a tooltip with the name above an item when intersecting `interact_ray`
- [ ] picking up/crafting increasingly better backpacks that expand inventory space
- [x] texturing of inventory slots and background
- [ ] slight flickering of items on the ground
- [x] moving too far from a chest automatically closes its view
- [ ] ability to quickly transfer items between inventories with shift + LMB

# Dev notes

## Bugs:
* camera position smoothing kind of sucks
* sprite rotation kind of sucks
* drastic FPS drops when moving the mouse

## Info:
* things are currently scaled by x4
