MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1, \2, \3, \4, \5, \6, \7
	dw \8
	db \9, \<10>, 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,     "Muscle@@@@@", $37, $66, LUCKY_EGG,    37460, "Mike@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "Rocky@@@@@@", $96, $66, EXP_SHARE,    48926, "Kyle@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "Volty@@@@@@", $98, $88, LEFTOVERS,    29189, "Tim@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  DODRIO,     "Doris@@@@@@", $77, $66, SMOKE_BALL,   00283, "Emy@@@@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    XATU,       "Paul@@@@@@@", $96, $86, MYSTERYBERRY, 15616, "Chris@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CHANSEY,    AERODACTYL, "Aeroy@@@@@@", $96, $66, MIRACLEBERRY, 26491, "Kim@@@@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, DUGTRIO,    MAGNETON,   "Maggie@@@@@", $96, $66, SCOPE_LENS,   50082, "Forest@@@@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
