const_value set 2
	const CERULEANGYMBADGESPEECHHOUSE_GENTLEMAN

CeruleanGymBadgeSpeechHouse_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

GentlemanScript_0x188002:
	jumptextfaceplayer UnknownText_0x188005

UnknownText_0x188005:
	text "We had a spate of"
	line "burglaries a few"
	cont "years back, so now"

	para "everyone's super-"
	line "cautious."
	cont "Who're you?"

	para "You're collecting"
	line "Kanto Gym Badges?"
	cont "Good luck!"
	done

CeruleanGymBadgeSpeechHouse_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $7, $2, 1, CERULEAN_CITY
	warp_def $7, $3, 1, CERULEAN_CITY

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 1
	person_event SPRITE_GENTLEMAN, 3, 2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, GentlemanScript_0x188002, -1
