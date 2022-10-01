	object_const_def
	const FUCHSIAMART_CLERK
	const FUCHSIAMART_FISHER
	const FUCHSIAMART_COOLTRAINER_F

FuchsiaMart_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaMartClerkScript:
	opentext
	scall .CheckMart
	closetext
	end

.CheckMart
	readvar VAR_BADGES
	ifequal 0, .Mart0Badges
	ifequal 2, .Mart2Badges
	ifequal 4, .Mart4Badges
	ifequal 6, .Mart6Badges
	ifequal 8, .Mart8Badges
	end

.Mart0Badges
	pokemart MARTTYPE_STANDARD, MART_GENERAL_0_BADGES
	closetext
	end

.Mart2Badges
	pokemart MARTTYPE_STANDARD, MART_GENERAL_2_BADGES
	closetext
	end

.Mart4Badges
	pokemart MARTTYPE_STANDARD, MART_GENERAL_4_BADGES
	closetext
	end

.Mart6Badges
	pokemart MARTTYPE_STANDARD, MART_GENERAL_6_BADGES
	closetext
	end

.Mart8Badges
	pokemart MARTTYPE_STANDARD, MART_GENERAL_8_BADGES
	closetext
	end

FuchsiaMartFisherScript:
	jumptextfaceplayer FuchsiaMartFisherText

FuchsiaMartCooltrainerFScript:
	jumptextfaceplayer FuchsiaMartCooltrainerFText

FuchsiaMartFisherText:
	text "I was hoping to"
	line "buy some SAFARI"

	para "ZONE souvenirs,"
	line "but it's closed…"
	done

FuchsiaMartCooltrainerFText:
	text "The SAFARI ZONE"
	line "WARDEN's grand-"
	cont "daughter lives in"
	cont "town."
	done

FuchsiaMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 1
	warp_event  3,  7, FUCHSIA_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaMartClerkScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaMartFisherScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaMartCooltrainerFScript, -1
