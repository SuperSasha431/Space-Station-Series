/obj/item/clothing/head/hooded/cultrobes
	icon = 'icons/obj/clothing/head/helmet.dmi'

	sprite_sheets = list(
		"Human" = 'icons/mob/clothing/head/helmet.dmi',
	)
// Роба еретика
/obj/item/clothing/head/hooded/cult_hoodie/eldritch
	name = "ominous hood"
	icon = 'icons/obj/clothing/head/helmet.dmi'
	icon_state = "eldritch"
	desc = "Порванный, покрытый пылью капюшон. Странные глаза расположены внутри."
	flash_protect = FLASH_PROTECTION_WELDER

/obj/item/clothing/suit/hooded/cultrobes/eldritch
	name = "ominous armor"
	desc = "Потрепанный, пыльный халат. Странные глаза расположены внутри."
	icon = 'icons/obj/clothing/head/helmet.dmi'
	icon_state = "eldritch_armor"
	flags_inv = HIDESHOES|HIDEJUMPSUIT
	body_parts_covered = LEGS|FEET|ARMS
	allowed = list(/obj/item/melee/sickly_blade)
	hoodtype = /obj/item/clothing/head/hooded/cult_hoodie/eldritch
	// Slightly better than normal cult robes

// Плащ войда
/obj/item/clothing/head/hooded/cult_hoodie/void
	name = "void hood"
	icon = 'icons/obj/clothing/head/helmet.dmi'
	item_state = 'icons/mob/clothing/head/helmet.dmi'
	desc = "Черный как смоль, не отражает свет. Рунические символы выстраиваются снаружи, \
		с каждой вспышкой вы теряете понимание того, что перед вами."
	icon_state = "void_cloak"
	flags_inv = NONE
	flags_cover = NONE

/obj/item/clothing/suit/hooded/cultrobes/void
	name = "void cloak"
	desc = "Черный как смоль, не отражает свет. Рунические символы выстраиваются снаружи, \
		с каждой вспышкой вы теряете понимание того, что перед вами."
	icon = 'icons/obj/clothing/head/helmet.dmi'
	icon_state = "void_cloak"
	allowed = list(/obj/item/melee/sickly_blade)
	hoodtype = /obj/item/clothing/head/hooded/cult_hoodie/void
	flags_inv = NONE
	body_parts_covered = ARMS
