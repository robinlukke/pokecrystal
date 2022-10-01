Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygroveBeforeDex
	dw MartMahoganyRocket
	dw MartMail
	dw MartEvoItems
	dw MartVitamins
	dw MartBattleItems
	dw MartGoldenrodTMs
	dw MartCeladonTMs
	dw MartMtMoon
	dw MartUnderground
	dw MartGeneral0Badges
	dw MartGeneral2Badges
	dw MartGeneral4Badges
	dw MartGeneral6Badges
	dw MartGeneral8Badges
	assert_table_length NUM_MARTS

MartCherrygroveBeforeDex:
	db 5 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartMahoganyRocket:
	db 2 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db -1 ; end

MartMail:
	db 10 ; # items
	db FLOWER_MAIL
	db SURF_MAIL
	db LITEBLUEMAIL
	db PORTRAITMAIL
	db LOVELY_MAIL
	db EON_MAIL
	db MORPH_MAIL
	db BLUESKY_MAIL
	db MUSIC_MAIL
	db MIRAGE_MAIL
	db -1 ; end

MartEvoItems:
	db 10 ; # items
	db SUN_STONE
	db MOON_STONE
	db LEAF_STONE
	db FIRE_STONE
	db WATER_STONE
	db THUNDERSTONE
	db KINGS_ROCK
	db METAL_COAT
	db UP_GRADE
	db DRAGON_SCALE
	db -1 ; end

MartVitamins:
	db 6 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CALCIUM
	db CARBOS
	db PP_UP
	db -1 ; end

MartBattleItems:
	db 7 ; # items
	db X_ATTACK
	db X_DEFEND
	db X_SPECIAL
	db X_SPEED
	db X_ACCURACY
	db DIRE_HIT
	db GUARD_SPEC
	db -1 ; end

MartGoldenrodTMs:
	db 5 ; # items
	db TM_THUNDERPUNCH
	db TM_FIRE_PUNCH
	db TM_ICE_PUNCH
	db TM_HEADBUTT
	db TM_ROCK_SMASH
	db -1 ; end

MartCeladonTMs:
	db 5 ; # items
	db TM_HIDDEN_POWER
	db TM_SUNNY_DAY
	db TM_PROTECT
	db TM_RAIN_DANCE
	db TM_SANDSTORM
	db -1 ; end

MartMtMoon:
	db 4 ; # items
	db POKE_DOLL
	db FRESH_WATER
	db SODA_POP
	db LEMONADE
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end

MartGeneral0Badges:
	db 6 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGeneral2Badges:
	db 11 ; # items
	db POKE_BALL
	db ESCAPE_ROPE
	db REPEL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartGeneral4Badges:
	db 13 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartGeneral6Badges:
	db 15 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGeneral8Badges:
	db 19 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db ICE_HEAL
	db FULL_HEAL
	db FULL_RESTORE
	db REVIVE
	db ETHER
	db -1 ; end
