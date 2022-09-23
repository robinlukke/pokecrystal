HappinessChanges:
; entries correspond to HAPPINESS_* constants
	table_width 1, HappinessChanges
	; change if happiness < 100, change if happiness < 200, change otherwise
	db  +5 ; Gained a level
	db  +5 ; Vitamin
	db  +1 ; X Item
	db  +3 ; Battled a Gym Leader
	db  +1 ; Learned a move
	db  -1 ; Lost to an enemy
	db  -10 ; Fainted due to poison
	db  -10 ; Lost to a much stronger enemy
	db  +1 ; Haircut (older brother) 1
	db  +3 ; Haircut (older brother) 2
	db  +5 ; Haircut (older brother) 3
	db  +1 ; Haircut (younger brother) 1
	db  +3 ; Haircut (younger brother) 2
	db  +10 ; Haircut (younger brother) 3
	db  -10 ; Used Heal Powder or Energypowder (bitter)
	db  -15 ; Used Energy Root (bitter)
	db  -20 ; Used Revival Herb (bitter)
	db  +3 ; Grooming
	db  +10 ; Gained a level in the place where it was caught
	assert_table_length NUM_HAPPINESS_CHANGES
