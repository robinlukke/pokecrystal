StatNames:
; entries correspond to stat ids
	list_start StatNames
	li "Attack"
	li "Defense"
	li "Speed"
	li "Sp.Atk"
	li "Sp.Def"
	li "Accuracy"
	li "Evasion"
	li "Ability" ; used for BattleCommand_Curse
	assert_list_length NUM_LEVEL_STATS
