/datum/emote/living/carbon
	mob_type_allowed_typecache = list(/mob/living/carbon)

/datum/emote/living/carbon/blink
	key = "blink"
	key_third_person = "blinks"
	message = "blinks."

/datum/emote/living/carbon/blink_r
	key = "blink_r"
	message = "blinks rapidly."

/datum/emote/living/carbon/cross
	key = "cross"
	key_third_person = "crosses"
	message = "crosses their arms."
	hands_use_check = TRUE

/datum/emote/living/carbon/chuckle
	key = "chuckle"
	key_third_person = "chuckles"
	message = "chuckles."
	message_mime = "appears to chuckle."
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	muzzled_noises = list("joyful", "upbeat")

/datum/emote/living/carbon/cough
	key = "cough"
	key_third_person = "coughs"
	message = "coughs!"
	message_mime = "appears to cough!"
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	vary = TRUE
	age_based = TRUE
	volume = 120
	unintentional_stat_allowed = UNCONSCIOUS

/datum/emote/living/carbon/cough/get_sound(mob/living/user)
	. = ..()
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		if(H.gender == FEMALE)
			if(H.dna.species.female_cough_sounds)
				return pick(H.dna.species.female_cough_sounds)
		else
			if(H.dna.species.male_cough_sounds)
				return pick(H.dna.species.male_cough_sounds)

/datum/emote/living/carbon/moan
	key = "moan"
	key_third_person = "moans"
	message = "moans!"
	message_mime = "appears to moan!"
	muzzled_noises = list("pained")
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	unintentional_stat_allowed = UNCONSCIOUS

/datum/emote/living/carbon/giggle
	key = "giggle"
	key_third_person = "giggles"
	message = "хихикает."
	message_mime = "бесшумно хихикает!"
	muzzled_noises = list("bubbly")
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH

/datum/emote/living/carbon/gurgle
	key = "gurgle"
	key_third_person = "gurgles"
	message = "makes an uncomfortable gurgle."
	muzzled_noises = list("unpleasant", "guttural")
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	unintentional_stat_allowed = UNCONSCIOUS

/datum/emote/living/carbon/inhale
	key = "inhale"
	key_third_person = "inhales"
	message = "breathes in."
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	muzzled_noises = list("breathy")

/datum/emote/living/carbon/inhale/sharp
	key = "inhale_s"
	key_third_person = "inhales sharply!"
	message = "takes a deep breath!"

/datum/emote/living/carbon/kiss
	key = "kiss"
	key_third_person = "kisses"
	message = "делает воздушный поцелуй."
	message_param = "blows a kiss at %t!"
	muzzled_noises = list("smooching")

/datum/emote/living/carbon/wave
	key = "wave"
	key_third_person = "waves"
	message = "машет рукой."
	message_param = "машет рукой  %t."
	hands_use_check = TRUE

/datum/emote/living/carbon/yawn
	key = "yawn"
	key_third_person = "yawns"
	message = "зевает."
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	muzzled_noises = list("tired", "lazy", "sleepy")

/datum/emote/living/carbon/exhale
	key = "exhale"
	key_third_person = "exhales"
	message = "breathes out."
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH

/datum/emote/living/carbon/laugh
	key = "laugh"
	key_third_person = "laughs"
	message = "смеёться."
	message_mime = "бесшумно смеёться!"
	message_param = "laughs at %t."
	muzzled_noises = list("happy", "joyful")
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH

/datum/emote/living/carbon/scowl
	key = "scowl"
	key_third_person = "scowls"
	message = "scowls."

/datum/emote/living/groan
	key = "groan"
	key_third_person = "groans"
	message = "стонет!"
	message_mime = "кажется стонет!"
	message_param = "groans at %t."
	muzzled_noises = list("pained")
	emote_type = EMOTE_AUDIBLE | EMOTE_MOUTH
	unintentional_stat_allowed = UNCONSCIOUS

/datum/emote/living/carbon/sign
	key = "sign"
	key_third_person = "signs"
	message = "signs."
	message_param = "signs the number %t."
	param_desc = "number(0-10)"
	// Humans get their own proc since they have fingers
	mob_type_blacklist_typecache = list(/mob/living/carbon/human)
	hands_use_check = TRUE
	target_behavior = EMOTE_TARGET_BHVR_NUM

/datum/emote/living/carbon/faint
	key = "faint"
	key_third_person = "faints"
	message = "faints."

/datum/emote/living/carbon/faint/run_emote(mob/user, params, type_override, intentional)
	. = ..()
	if(. && isliving(user))
		var/mob/living/L = user
		L.SetSleeping(2 SECONDS)

/datum/emote/living/carbon/twirl
	key = "twirl"
	key_third_person = "twirls"
	message = "twirls something around in their hand."
	hands_use_check = TRUE

/datum/emote/living/carbon/twirl/run_emote(mob/user, params, type_override, intentional)

	if(!(user.get_active_hand() || user.get_inactive_hand()))
		to_chat(user, "<span class='warning'>You need something in your hand to use this emote!</span>")
		return TRUE

	var/obj/item/thing

	if(user.get_active_hand())
		thing = user.get_active_hand()
	else
		thing = user.get_inactive_hand()

	if(istype(thing, /obj/item/grab))
		var/obj/item/grab/grabbed = thing
		message = "twirls [grabbed.affecting.name] around!"
		grabbed.affecting.emote("spin")
	else if(!(thing.flags & ABSTRACT))
		message = "twirls [thing] around in their hand!"
	else
		to_chat(user, "<span class='warning'>You cannot twirl [thing]!</span>")
		return TRUE

	. = ..()
	message = initial(message)
