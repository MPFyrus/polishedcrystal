const_value set 2
	const SILPHCO3F_SILPH_EMPLOYEE
	const SILPHCO3F_SCIENTIST1
	const SILPHCO3F_SCIENTIST2
	const SILPHCO3F_OFFICER
	const SILPHCO3F_GENTLEMAN

SilphCo3F_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

SilphCo3FSilphEmployeeScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHERISH_BALL_FROM_SAFFRON
	iftrue .GotItem
	writetext SilphCo3FSilphEmployeeText1
	buttonsound
	verbosegiveitem CHERISH_BALL
	iffalse .Done
	setevent EVENT_GOT_CHERISH_BALL_FROM_SAFFRON
.GotItem:
	writetext SilphCo3FSilphEmployeeText2
	waitbutton
.Done:
	closetext
	end

SilphCo3FScientist1Script:
	jumptextfaceplayer SilphCo3FScientist1Text

SilphCo3FScientist2Script:
	jumptextfaceplayer SilphCo3FScientist2Text

SilphCo3FOfficerScript:
	jumptextfaceplayer SilphCo3FOfficerText

SilphCo3FGentlemanScript:
	jumptextfaceplayer SilphCo3FGentlemanText

SilphCo3FDeptSign:
	jumptext SilphCo3FDeptSignText

SilphCo3FElevator:
	jumptext SilphCo3FElevatorText

SilphCo3FBookshelf:
	jumpstd difficultbookshelf

SilphCo3FSilphEmployeeText1:
	text "Silph and Devon"
	line "partnered up"

	para "to design some"
	line "special new #"
	cont "Balls."

	para "We sell them in"
	line "Kanto, Johto, and"
	cont "Hoenn."

	para "But they're not"
	line "all on the market"
	cont "yet. Like this!"
	done

SilphCo3FSilphEmployeeText2:
	text "That's an un-"
	line "released proto-"
	cont "type # Ball."

	para "Don't waste it!"
	done

SilphCo3FScientist1Text:
	text "Silph just entered"
	line "a partnership with"
	cont "Devon Corp."

	para "We licensed some"
	line "of each others'"
	cont "products."
	done

SilphCo3FScientist2Text:
	text "# Balls work on"
	line "the same principle"

	para "as the PC Storage"
	line "System."

	para "#mon are con-"
	line "verted into"
	cont "digital data and"

	para "reformed in a"
	line "new location."
	done

SilphCo3FOfficerText:
	text "I can't let you on"
	line "the upper floors,"

	para "even if you are"
	line "trustworthy."

	para "Sorry, but those"
	line "are the rules."
	done

SilphCo3FGentlemanText:
	text "I'm visiting from"
	line "Devon Corporation."

	para "We are working to-"
	line "gether to advance"

	para "# Ball techno-"
	line "logy even further!"
	done

SilphCo3FDeptSignText:
	text "Silph Co. 3F"
	line "# Ball Tech"
	done

SilphCo3FElevatorText:
	text "Out Of Order"
	done

SilphCo3F_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 1
	warp_def $0, $b, 2, SILPH_CO_2F

.XYTriggers:
	db 0

.Signposts:
	db 8
	signpost 2, 3, SIGNPOST_READ, SilphCo3FDeptSign
	signpost 2, 9, SIGNPOST_READ, SilphCo3FDeptSign
	signpost 0, 5, SIGNPOST_READ, SilphCo3FElevator
	signpost 3, 0, SIGNPOST_READ, SilphCo3FBookshelf
	signpost 3, 6, SIGNPOST_READ, SilphCo3FBookshelf
	signpost 3, 7, SIGNPOST_READ, SilphCo3FBookshelf
	signpost 3, 12, SIGNPOST_READ, SilphCo3FBookshelf
	signpost 3, 13, SIGNPOST_READ, SilphCo3FBookshelf

.PersonEvents:
	db 5
	person_event SPRITE_SILPH_EMPLOYEE, 5, 10, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, (1 << 3) | PAL_OW_BROWN, PERSONTYPE_SCRIPT, 0, SilphCo3FSilphEmployeeScript, -1
	person_event SPRITE_SCIENTIST, 5, 2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SilphCo3FScientist1Script, -1
	person_event SPRITE_SCIENTIST, 7, 8, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SilphCo3FScientist2Script, -1
	person_event SPRITE_OFFICER, 1, 13, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, (1 << 3) | PAL_OW_BLUE, PERSONTYPE_SCRIPT, 0, SilphCo3FOfficerScript, -1
	person_event SPRITE_GENTLEMAN, 6, 6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, (1 << 3) | PAL_OW_RED, PERSONTYPE_SCRIPT, 0, SilphCo3FGentlemanScript, -1
