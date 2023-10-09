ViridianForest_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  1,  5, VIRIDIAN_FOREST_GATE_NORTH, 4
	warp_event 16, 51, VIRIDIAN_FOREST_GATE_SOUTH, 1
	warp_event 17, 51, VIRIDIAN_FOREST_GATE_SOUTH, 2

	def_coord_events

	def_bg_events

	def_object_events