MACRO mon_prob
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable:
	table_width 2, GrassMonProbTable
	mon_prob 25,  0 ; 25% chance
	mon_prob 45,  1 ; 20% chance
	mon_prob 60,  2 ; 15% chance
	mon_prob 75,  3 ; 15% chance
	mon_prob 85,  4 ; 10% chance
	mon_prob 95,  5 ; 10% chance
	mon_prob 100, 6 ;  5% chance
	assert_table_length NUM_GRASSMON

WaterMonProbTable:
	table_width 2, WaterMonProbTable
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
	assert_table_length NUM_WATERMON
