const_value set 2

NavelRockOutside_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

NavelRockOutside_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $19, $c, 1, SEAGALLOP_FERRY_NAVEL_GATE
	warp_def $19, $d, 1, SEAGALLOP_FERRY_NAVEL_GATE

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0