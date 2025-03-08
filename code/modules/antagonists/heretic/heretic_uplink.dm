/obj/item/device/heretic_uplink
    name = "heretic book"
    desc = "Таинственный артефакт, наполненный запретной энергией."
    icon = 'icons/obj/storage/book.dmi'
    icon_state = "necronomicon"
    var/points = 10 // Стартовые очки

/obj/item/device/heretic_uplink/attack_self(mob/living/user)
    if (!user.mind || !istype(user, /mob/living/carbon/human))
        return
    var/dat = "Выберите предмет для покупки:<br>"

    var/list/store_items = list(
        "heretic_blade" = list("Клинок еретика", 5, /obj/item/weapon/heretic_blade),
    )

    for (var/id in store_items)
        var/name = store_items[id][1]
        var/price = store_items[id][2]
        dat += "<a href='?src=\ref[src];buy=\[id\]'>Купить [name] ([price] очков)</a><br>"

    user << browse(dat, "window=heretic_uplink")

/obj/item/device/heretic_uplink/Topic(href, href_list)
    if (href_list["buy"])
        var/id = href_list["buy"]
        var/list/store_items = list(
            "heretic_blade" = list("Клинок еретика", 5, /obj/item/weapon/heretic_blade),
        )

        if (!store_items[id])
            return

        var/price = store_items[id][2]
        var/typepath = store_items[id][3]

        if (src.points < price)
            usr << "Недостаточно очков!"
            return

        src.points -= price
        var/obj/item/new_item = new typepath(usr.loc)
        usr << "Вы приобрели [new_item.name]!"

