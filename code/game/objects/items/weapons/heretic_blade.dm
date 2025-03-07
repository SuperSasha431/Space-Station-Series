
/obj/item/melee/sickly_blade
	name = "\improper sickly blade"
	desc = "Болезненно-зеленый полумесячный клинок, украшенный декоративным глазом. Вы чувствуете, что за вами наблюдают..."
	icon = 'icons/obj/weapons/khopesh.dmi'
	icon_state = "eldritch_blade"
	lefthand_file = 'icons/mob/inhands/64x64_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/64x64_righthand.dmi'
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_NORMAL
	force = 20
	throwforce = 10
	toolspeed = 0.375
	hitsound = 'sound/items/bladeslice.ogg'
	var/after_use_message = ""
	/// Tracks how many times attack_self() is called so that breaking a blade while in an arena has to be intentional
	var/escape_attempts = 0
	/// Timer that resets your escape_attempts back to 0
	var/escape_timer
