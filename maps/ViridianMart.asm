	object_const_def
	const VIRIDIANMART_CLERK
	const VIRIDIANMART_LASS
	const VIRIDIANMART_COOLTRAINER_M

ViridianMart_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianMartClerkScript:
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

ViridianMartLassScript:
	jumptextfaceplayer ViridianMartLassText

ViridianMartCooltrainerMScript:
	jumptextfaceplayer ViridianMartCooltrainerMText

ViridianMartLassText:
	text "The GYM LEADER"
	line "here is totally"
	cont "cool."
	done

ViridianMartCooltrainerMText:
	text "Have you been to"
	line "CINNABAR?"

	para "It's an island way"
	line "south of here."
	done

ViridianMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  7,  2, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartLassScript, -1
	object_event  1,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianMartCooltrainerMScript, -1
