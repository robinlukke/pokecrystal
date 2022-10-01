	object_const_def
	const CIANWOODPHARMACY_PHARMACIST

CianwoodPharmacy_MapScripts:
	def_scene_scripts

	def_callbacks


CianwoodPharmacist:
	faceplayer
	opentext
	checkevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	iftrue .Mart
	checkevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
	iffalse .Mart
	writetext PharmacistGiveSecretpotionText
	promptbutton
	giveitem SECRETPOTION
	writetext ReceivedSecretpotionText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	writetext PharmacistDescribeSecretpotionText
	waitbutton
	closetext
	end

.Mart:
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
	pokemart MARTTYPE_PHARMACY, MART_GENERAL_0_BADGES
	closetext
	end

.Mart2Badges
	pokemart MARTTYPE_PHARMACY, MART_GENERAL_2_BADGES
	closetext
	end

.Mart4Badges
	pokemart MARTTYPE_PHARMACY, MART_GENERAL_4_BADGES
	closetext
	end

.Mart6Badges
	pokemart MARTTYPE_PHARMACY, MART_GENERAL_6_BADGES
	closetext
	end

.Mart8Badges
	pokemart MARTTYPE_PHARMACY, MART_GENERAL_8_BADGES
	closetext
	end

CianwoodPharmacyBookshelf:
	jumpstd DifficultBookshelfScript

PharmacistGiveSecretpotionText:
	text "Your #MON ap-"
	line "pear to be fine."

	para "Is something wor- "
	line "rying you?"

	para "…"

	para "The LIGHTHOUSE"
	line "#MON is in"
	cont "trouble?"

	para "I got it!"

	para "This ought to do"
	line "the trick."
	done

ReceivedSecretpotionText:
	text "<PLAYER> received"
	line "SECRETPOTION."
	done

PharmacistDescribeSecretpotionText:
	text "My SECRETPOTION is"
	line "a tad too strong."

	para "I only offer it in"
	line "an emergency."
	done

CianwoodPharmacy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 4
	warp_event  3,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodPharmacyBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodPharmacyBookshelf

	def_object_events
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacist, -1
