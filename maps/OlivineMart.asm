	object_const_def
	const OLIVINEMART_CLERK
	const OLIVINEMART_COOLTRAINER_F
	const OLIVINEMART_LASS

OlivineMart_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineMartClerkScript:
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

OlivineMartCooltrainerFScript:
	jumptextfaceplayer OlivineMartCooltrainerFText

OlivineMartLassScript:
	jumptextfaceplayer OlivineMartLassText

OlivineMartCooltrainerFText:
	text "Do your #MON"
	line "already know the"

	para "move for carrying"
	line "people on water?"
	done

OlivineMartLassText:
	text "My BUTTERFREE came"
	line "from my boyfriend"
	cont "overseas."

	para "It carried some"
	line "MAIL from him."

	para "Want to know what"
	line "it says?"

	para "Let's see… Nope!"
	line "It's a secret!"
	done

OlivineMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 8
	warp_event  3,  7, OLIVINE_CITY, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineMartClerkScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OlivineMartCooltrainerFScript, -1
	object_event  1,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineMartLassScript, -1
