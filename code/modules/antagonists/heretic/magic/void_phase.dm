лад/datum/action/cooldown/spell/pointed/void_phase
	name = "Void Phase"
	desc = "Позволяет вам телепортироваться в указанное место, вызывая АоЕ урон площадью 3х3 \
		вокруг указанного вами пункта назначения и вашего текущего местоположения. \
		Минимальная дальность действия составляет 3 тайлов, а максимальная - 9 тайлов."
	background_icon_state = "bg_heretic"
	overlay_icon_state = "bg_heretic_border"
	button_icon = 'icons/mob/actions/actions_ecult.dmi'
	button_icon_state = "voidblink"
	ranged_mousepointer = 'icons/effects/mouse_pointers/throw_target.dmi'

	school = SCHOOL_FORBIDDEN
	cooldown_time = 25 SECONDS

	invocation = "RE'L'TY PH'S'E."
	invocation_type = INVOCATION_WHISPER
	spell_requirements = NONE

	cast_range = 9
	/// The minimum range to cast the phase.
	var/min_cast_range = 3
	/// The radius of damage around the void bubble
	var/damage_radius = 1

/datum/action/cooldown/spell/pointed/void_phase/before_cast(atom/cast_on)
	. = ..()
	if(. & SPELL_CANCEL_CAST)
		return

	if(owner && get_dist(get_turf(owner), get_turf(cast_on)) < min_cast_range)
		cast_on.balloon_alert(owner, "слишком близко!")
		return . | SPELL_CANCEL_CAST

/datum/action/cooldown/spell/pointed/void_phase/cast(atom/cast_on)
	. = ..()
	var/turf/source_turf = get_turf(owner)
	var/turf/targeted_turf = get_turf(cast_on)

	cause_aoe(source_turf, /obj/effect/temp_visual/voidin)
	cause_aoe(targeted_turf, /obj/effect/temp_visual/voidout)

	do_teleport(
		owner,
		targeted_turf,
		precision = 1,
		no_effects = TRUE,
		channel = TELEPORT_CHANNEL_MAGIC,
	)
