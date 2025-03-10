/obj/machinery/debug_gravgen
    name = "Автономный генератор гравитации"
    desc = "Этот генератор гравитации работает без энергии. Какое чудо."
    icon = 'icons/obj/machines/gravity_generator.dmi'
    icon_state = "genrator_body"
    anchored = ANCHORED
    density = TRUE
    use_power = FALSE // Отключаем потребление энергии
    idle_power_usage = 0
    active_power_usage = 0

    New()
        ..()
        src.update_icon()
        src.start_gravity()

    process()
        return // Убираем процессинг, так как он не нужен

    attack_hand(mob/user)
        user.show_message("Этот генератор невозможно отключить.", 1)

    start_gravity()
        if (!gravity_active)
            gravity_active = TRUE
            message_admins("Автономный генератор гравитации активировал гравитацию!")
            log_game("Автономный генератор гравитации был запущен.")
            update_icon()

    update_icon()
        icon_state = "gravgen_on"
