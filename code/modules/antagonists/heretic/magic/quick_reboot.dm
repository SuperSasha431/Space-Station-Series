/datum/spell/heretic/self/rejuv
	name = "Moon smile"
	desc = "Heal and remove any incapacitating effects from yourself."
	action_icon = "icons/mob/actions/actions_ecult.dmi"
	action_icon_state = "moon_smile"
	base_cooldown = 30 SECONDS
	stat_allowed = UNCONSCIOUS
	/// Any extra duration we get from upgrading the spell.
	var/extra_duration = 0 // The base spell is 5 brute/burn healing a second for 5 seconds
	/// Any extra healing we get per second from upgrading the spell
	var/extra_healing = 0

/datum/spell/flayer/self/rejuv/cast(list/targets, mob/living/user)
	to_chat(user, "<span class='notice'>We begin to heal rapidly.</span>")
	user.apply_status_effect(STATUS_EFFECT_FLAYER_REJUV, extra_duration, extra_healing)

/datum/spell/flayer/self/rejuv/on_apply()
	..()
	cooldown_handler.recharge_duration -= 5 SECONDS
	extra_duration += 2 SECONDS
	extra_healing += 2
