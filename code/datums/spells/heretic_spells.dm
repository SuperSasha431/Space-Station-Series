/datum/spell/touch/grasp_void
	name = "Grasp of Void"
	desc = "Лишает вашу жертву голоса на 8 секунд и понижает температуру её тела."
	hand_path = /obj/item/melee/touch_attack/cluwne

	base_cooldown = 1 MINUTES
	clothes_req = TRUE
	cooldown_min = 200 //100 deciseconds reduction per rank

	action_icon_state = "cluwne"

/mob/living/carbon/human/proc/GraspVoid()
	to_chat(src, "<span class='danger'>МАНСУС ЖДЁТ</span>")
	C.bodytemperature = max(0, C.bodytemperature - 200)
	Confused(10 SECONDS)
