const_value set 2
	const GOLDENRODPPSPEECHHOUSE_FISHER
	const GOLDENRODPPSPEECHHOUSE_LASS

GoldenrodPPSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

FisherScript_0x5564a:
	jumptextfaceplayer UnknownText_0x55659

LassScript_0x5564d:
	jumptextfaceplayer UnknownText_0x556ca

GoldenrodPPSpeechHouseRadio:
	jumpstd radio2

UnknownText_0x55659:
	text "Once while I was"
	line "battling, my"

	para "#mon couldn't"
	line "make any moves."

	para "The Power Points,"
	line "or PP, of its"

	para "moves were all"
	line "gone."
	done

UnknownText_0x556ca:
	text "Sometimes, a"
	line "healthy #mon"

	para "may be unable to"
	line "use its moves."

	para "If that happens,"
	line "heal it at a #-"
	cont "mon Center or use"
	cont "an item."
	done

GoldenrodPPSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 7, GOLDENROD_CITY
	warp_def $7, $3, 7, GOLDENROD_CITY

.XYTriggers:
	db 0

.Signposts:
	db 1
	signpost 1, 7, SIGNPOST_READ, GoldenrodPPSpeechHouseRadio

.PersonEvents:
	db 2
	person_event SPRITE_FISHER, 4, 1, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, -1, (1 << 3) | PAL_OW_GREEN, PERSONTYPE_SCRIPT, 0, FisherScript_0x5564a, -1
	person_event SPRITE_LASS, 3, 5, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LassScript_0x5564d, -1
