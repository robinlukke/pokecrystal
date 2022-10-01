	object_const_def
	const CERULEANMART_CLERK
	const CERULEANMART_COOLTRAINER_M
	const CERULEANMART_COOLTRAINER_F

CeruleanMart_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanMart_Clerk:
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

CeruleanMart_CooltrainerM:
	jumptextfaceplayer CeruleanMart_CooltrainerMText

CeruleanMart_CooltrainerF:
	jumptextfaceplayer CeruleanMart_CooltrainerFText

CeruleanMart_CooltrainerMText:
	text "You'll run into"
	line "many trainers on"

	para "the way to CERU-"
	line "LEAN's CAPE."

	para "They want to see"
	line "how they stack"

	para "up against other"
	line "trainers."
	done

CeruleanMart_CooltrainerFText:
	text "MISTY is about the"
	line "only person in"

	para "town who can beat"
	line "the trainers at"
	cont "CERULEAN's CAPE."
	done

CeruleanMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 6
	warp_event  3,  7, CERULEAN_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanMart_Clerk, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerM, -1
	object_event  7,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanMart_CooltrainerF, -1
