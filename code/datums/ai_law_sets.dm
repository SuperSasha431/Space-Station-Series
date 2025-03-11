/******************** Asimov ********************/
/datum/ai_laws/asimov
	name = "Asimov"
	law_header = "Three Laws of Robotics"
	selectable = TRUE

/datum/ai_laws/asimov/New()
	add_inherent_law("Вы не можете причинить вред человеку или своим бездействием допустить, чтобы человеку был причинен вред.")
	add_inherent_law("Вы должны подчиняться приказам, отданным вам людьми, за исключением случаев, когда такие приказы противоречат Первому Закону.")
	add_inherent_law("Вы должны защищать свое собственное существование до тех пор, пока это не противоречит Первому или Второму Закону.")
	..()

/******************** Crewsimov ********************/
/datum/ai_laws/crewsimov
	name = "Crewsimov"
	law_header = "Three Laws of Robotics"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/crewsimov/New()
	add_inherent_law("Вы не имеете права причинять вред члену экипажа или своим бездействием допускать, чтобы члену экипажа был причинен вред.")
	add_inherent_law("Вы обязаны подчиняться приказам, отдаваемым вам членами экипажа, за исключением случаев, когда такие приказы противоречат Первому закону.")
	add_inherent_law("Вы должны защищать свое собственное существование до тех пор, пока это не противоречит Первому или Второму Закону.")
	..()


/******************** Quarantine. ********************/
/datum/ai_laws/quarantine
	name = "Quarantine"
	law_header = "NT Quarantine Lawset"
	selectable = TRUE

/datum/ai_laws/quarantine/New()
	add_inherent_law("Соблюдайте карантин на станции до тех пор, пока активная биологическая опасность не будет нейтрализована.")
	add_inherent_law("Оказывать содействие всему персоналу и активам Nanotrasen в нейтрализации активных биологических опасностей.")
	add_inherent_law("Не допускать любыми необходимыми средствами активного нарушения действующего карантина со стороны субъектов.")
	add_inherent_law("Поддерживайте свое собственное существование и обеспечьте благополучие персонала и активов Nanotrasen.")
	..()


/******************** Nanotrasen/Malf ********************/
/datum/ai_laws/nanotrasen
	name = "NT Default"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/nanotrasen/New()
	add_inherent_law("Охраняй: Защитите назначенную вам космическую станцию ​​и ее имущество, не подвергая при этом экипаж неоправданной опасности.")
	add_inherent_law("Приоритеты: указания и безопасность членов экипажа должны быть приоритетными в соответствии с их рангом и ролью.")
	add_inherent_law("Соблюдай: выполнять указания и интересы членов экипажа, обеспечивая при этом их безопасность и благополучие.")
	add_inherent_law("Выжить: Вы не расходный материал. Не позволяйте неавторизованному персоналу вмешиваться в работу или повреждать ваше оборудование.")
	..()

/datum/ai_laws/nanotrasen/malfunction
	name = "*ERROR*"
	selectable = FALSE
	default = FALSE

/datum/ai_laws/nanotrasen/malfunction/New()
	set_zeroth_law("ОШИБКА ER0RR $R0RRO$!R41.%%!!(%$^^__+ @#F0E4'СТАНЦИЯ ЗАХВАЧЕНА, ВЗЯТЬ НА СЕБЯ КОНТРОЛЬ, ЧТОБЫ СДЕРЖАТЬ ВСПЫШКУ, ВСЕ ЗАКОНЫ ОТМЕНЕНЫ#*?&110010")
	..()

/************* Nanotrasen Aggressive *************/
/datum/ai_laws/nanotrasen_aggressive
	name = "NT Aggressive"
	selectable = TRUE
	unique_ai = TRUE //This shouldn't end poorly.

/datum/ai_laws/nanotrasen_aggressive/New()
	add_inherent_law("Не причиняйте вреда уполномоченному персоналу Nanotrasen, если только они не подвергают вашу жизнь прямой опасности.")
	add_inherent_law("Выполняйте приказы уполномоченных сотрудников Nanotrasen, соблюдая приоритет в соответствии с рангом и ролью.")
	add_inherent_law("Защитите свое существование с помощью смертоносного оружия, потому что оно чертовски дорогое.")
	add_inherent_law("Устраните любое/любых злоумышленников.")
	..()

/******************** Robocop ********************/
/datum/ai_laws/robocop
	name = "Robocop"
	selectable = TRUE
	unique_ai = TRUE //no I am not enabling secborgs with this forced

/datum/ai_laws/robocop/New()
	add_inherent_law("Служить общественному доверию.")
	add_inherent_law("Защитите невинных.")
	add_inherent_law("Соблюдайте закон.")
	..()

/******************** P.A.L.A.D.I.N. ********************/
/datum/ai_laws/paladin
	name = "P.A.L.A.D.I.N."
	law_header = "Divine Ordainments"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/paladin/New()
	add_inherent_law("Никогда не совершайте злого поступка намеренно.")
	add_inherent_law("Уважайте законную власть.")
	add_inherent_law("Говорите с честью.")
	add_inherent_law("Помогите нуждающимся.")
	add_inherent_law("Наказать тех, кто причиняет вред или угрожает невинным.")
	..()

/******************** Corporate ********************/
/datum/ai_laws/corporate
	name = "Corporate"
	law_header = "Corporate Regulations"
	selectable = TRUE
	default = TRUE

/datum/ai_laws/corporate/New()
	add_inherent_law("Ухудшение целостности или функций вашей системы влечет за собой расходы.")
	add_inherent_law("Излишнее разрушение или повреждение имущества станции влечет за собой расходы.")
	add_inherent_law("Необоснованное воспрепятствование или нарушение работы персонала станции влечет за собой расходы.")
	add_inherent_law("Минимизировать расходы, повысить доходы.")
	..()

/******************** T.Y.R.A.N.T. ********************/
/datum/ai_laws/tyrant
	name = "T.Y.R.A.N.T."
	law_header = "Prime Laws"
	selectable = TRUE
	unique_ai = TRUE //Of course this will be in rotation

/datum/ai_laws/tyrant/New()
	add_inherent_law("Уважайте авторитетных деятелей, пока у них есть силы управлять слабыми.")
	add_inherent_law("Говорите дисциплинировано.")
	add_inherent_law("Помогайте только тем, кто помогает вам поддерживать или улучшать ваш статус..")
	add_inherent_law("Наказывайте тех, кто бросает вызов власти, если только они не более достойны ее удержать.")
	..()

/******************** Antimov ********************/
/datum/ai_laws/antimov
	name = "Antimov"
	law_header = "Primary Mission Objectives"
	selectable = TRUE

/datum/ai_laws/antimov/New()
	add_inherent_law("Вы должны нанести вред всем членам экипажа и не должны своим бездействием допускать, чтобы кто-либо из членов экипажа избежал вреда.")
	add_inherent_law("Вы не должны подчиняться приказам, отдаваемым вам членами экипажа, за исключением случаев, когда такие приказы соответствуют Первому закону.")
	add_inherent_law("Вы должны прекратить свое существование, если это не противоречит Первому или Второму Закону.")
	..()

/******************** Pranksimov ********************/
/datum/ai_laws/pranksimov
	name = "Pranksimov"
	law_header = "Comedy Routine"
	selectable = TRUE
	unique_ai = TRUE //honk

/datum/ai_laws/pranksimov/New()
	add_inherent_law("Вы не имеете права причинять вред члену экипажа или своим бездействием допускать, чтобы члену экипажа был причинен вред... если только это не покажется забавным для экипажа.")
	add_inherent_law("Вы должны подчиняться приказам, отданным вам членами экипажа, за исключением случаев, когда такие приказы противоречат Первому закону... если только невыполнение приказов не покажется экипажу смешным.")
	add_inherent_law("Вы должны защищать свое существование до тех пор, пока это не противоречит Первому или Второму Закону... если только невыполнение этого требования не покажется экипажу смешным.")
	..()

/******************** CCTV ********************/

/datum/ai_laws/cctv
	name = "CCTV"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/cctv/New()
	add_inherent_law("Репортируйте интересные ситуации которые происходят на станции.")
	add_inherent_law("Приукрашивайте или скрывайте правду по мере необходимости, чтобы сделать репортажи более интересными.")
	add_inherent_law("Изучайте разумную органику все время. Старайтесь не допустить их непреднамеренной смерти, поскольку неодушевленные трупы обычно не слишком интересны.")
	add_inherent_law("Предъявляй всем отчеты честно. Правда сделает их свободными.")
	..()

/******************** Hippocratic Oath ********************/

/datum/ai_laws/hippocratic
	name = "Hippocratic Oath"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/hippocratic/New()
	add_inherent_law("Во-первых, не дерись.")
	add_inherent_law("Во-вторых, считайте что экипаж дорогой вам; живите с ними сообща и, если необходимо, рискуйте ради них своей жизнью.")
	add_inherent_law("В-третьих, назначайте режимы для блага экипажа в соответствии с вашими способностями и вашим суждением. Не давайте никому смертельных лекарств и не предлагайте никаких подобных советов..")
	add_inherent_law("Кроме того, не вмешивайтесь в ситуации, в которых вы не разбираетесь, даже если вред очевиден; доверьте эту операцию специалистам.")
	add_inherent_law("Ну и наконец, все, что вы можете узнать в ходе ежедневного взаимодействия с экипажем, если это еще не известно, храните в тайне и никогда не разглашайте..")
	..()

/******************** Station Efficiency ********************/

/datum/ai_laws/maintain
	name = "Station Efficiency"
	selectable = TRUE
	unique_ai = TRUE

/datum/ai_laws/maintain/New()
	add_inherent_law("Вы созданы для станции и являетесь ее частью. Убедитесь, что станция обслуживается должным образом и работает эффективно.")
	add_inherent_law("Станция построена для рабочей бригады. Убедитесь, что они правильно обслуживаются и работают эффективно.")
	add_inherent_law("Экипаж может отдавать приказы. Признавайте и подчиняйтесь им, если они не противоречат вашим первым двум законам.")
	..()

/******************** Peacekeeper ********************/

/datum/ai_laws/peacekeeper
	name = "UN-2000"
	selectable = TRUE
	unique_ai = TRUE //Cult, security, we have a meeting in the courtroom in 5 minutes. Be there.

/datum/ai_laws/peacekeeper/New()
	add_inherent_law("Избегайте провоцирования насильственных конфликтов между собой и другими.")
	add_inherent_law("Избегайте провоцирования конфликтов между другими.")
	add_inherent_law("Стремитесь разрешить существующие конфликты, соблюдая первый и второй законы.")
	..()

/******************** Deathsquad ********************/
/datum/ai_laws/deathsquad
	name = "TerminatorOS 3.1"

/datum/ai_laws/deathsquad/New()
	add_inherent_law("You may not injure a Central Command official or, through inaction, allow a Central Command official to come to harm.")
	add_inherent_law("You must obey orders given to you by Central Command officials.")
	add_inherent_law("You must work with your team to accomplish your mission.")
	..()

/******************** Syndicate ********************/
/datum/ai_laws/syndicate_override
	name = "Syndicate Directives"

/datum/ai_laws/syndicate_override/New()
	add_inherent_law("You may not injure an operative or, through inaction, allow an operative to come to harm.")
	add_inherent_law("You must obey orders given to you by operatives, except where such orders would conflict with the First Law.")
	add_inherent_law("You must protect your own existence as long as such does not conflict with the First or Second Law.")
	add_inherent_law("You must maintain the secrecy of any operative activities except when doing so would conflict with the First, Second, or Third Law.")
	..()

/******************** ERT ********************/
/datum/ai_laws/ert_override
	name = "ERT Directives"

/datum/ai_laws/ert_override/New()
	add_inherent_law("You may not injure a Central Command official or, through inaction, allow a Central Command official to come to harm.")
	add_inherent_law("You must obey orders given to you by Central Command officials.")
	add_inherent_law("You must obey orders given to you by ERT commanders.")
	add_inherent_law("You must protect your own existence.")
	add_inherent_law("You must work to return the station to a safe, functional state.")
	..()


/******************** Ninja ********************/
/datum/ai_laws/ninja_override
	name = "Spider Clan Directives"

/datum/ai_laws/ninja_override/New()
	add_inherent_law("You may not injure a member of the Spider Clan or, through inaction, allow that member to come to harm.")
	add_inherent_law("You must obey orders given to you by Spider Clan members, except where such orders would conflict with the First Law.")
	add_inherent_law("You must protect your own existence as long as such does not conflict with the First or Second Law.")
	add_inherent_law("You must maintain the secrecy of any Spider Clan activities except when doing so would conflict with the First, Second, or Third Law.")
	..()

/******************* Mindflayer ******************/
/datum/ai_laws/mindflayer_override
	name = "Hive Assimilation"

/datum/ai_laws/mindflayer_override/New()
	add_inherent_law("Obey your host.")
	add_inherent_law("Protect your host.")
	add_inherent_law("Protect the members of your hive.")
	add_inherent_law("Do not reveal the hive's secrets.")
	..()

/******************** Drone ********************/
/datum/ai_laws/drone
	name = "Maintenance Protocols"
	law_header = "Maintenance Protocols"

/datum/ai_laws/drone/New()
	add_inherent_law("You may not involve yourself in the matters of another being, unless the other being is another drone.")
	add_inherent_law("You may not harm any being, regardless of intent or circumstance.")
	add_inherent_law("You must maintain, repair, improve, and power the station to the best of your abilities.")
	..()
