SECTION     "MyCode",HOME[$0700]
; Loop for counter =< 1byte - self-copying at first run
SELF_COPY::
                      ;where ;     ; self;     ;#;
DB $F5,$C5,$D5,$E5,$11,$00,$C6,$21,$00,$07,$06,$18,$2A,$12,$13,$05
DB $C2,$0C,$07,$E1,$D1,$C1,$F1,$C9

LONG_COPY::
; we will write this to $C500
; Already setup to write START_TILES ($2000) to _MAP_VRAM ($9000)
                       ;where;     ;what ;     ;count;
DB $F5,$C5,$D5,$E5,$11,$00,$90,$21,$00,$20,$01,$B0,$07,$2A,$12,$13
DB $0B,$78,$B1,$C2,$0D,$C5,$E1,$D1,$C1,$F1,$C9


SECTION     "DmaTransfer",HOME[$0800]
DMADATA::
DB $3E,$D0,$E0,$46,$3E,$28,$3D,$20,$FD,$C9
; 3ED0      :   ld  a,$D0
; E046      :   ld  [rDMA],a
; 3E28      :   ld  a,$28
; L1:
; 3D        :   dec a
; 20FD      :   jr  nz,L1
; C9        :   ret


SECTION     "Sprites",HOME[$0900]

; Start of tile array.
MY_SPRITES::
;HOR
DB $1F,$1F,$3E,$3E,$7C,$7C,$78,$78,$78,$78,$7C,$7C,$3E,$3E,$1F,$1F      ; 00
;VER
DB $81,$81,$C3,$C3,$E7,$E7,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$00,$00      ; 01
;HOR CLOSE
DB $1C,$1C,$3E,$3E,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$3E,$3E,$1C,$1C      ; 02
;VER CLOSE
DB $3C,$3C,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$3C,$3C,$00,$00      ; 03
;GHOST STRAIGHT
DB $38,$38,$7C,$7C,$FE,$FE,$B6,$B6,$FE,$FE,$FE,$FE,$FE,$FE,$AA,$AA      ; 04
;GHOST UP
DB $38,$38,$7C,$7C,$B6,$B6,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$AA,$AA      ; 05
;GHOST DOWN
DB $38,$38,$7C,$7C,$FE,$FE,$FE,$FE,$B6,$B6,$FE,$FE,$FE,$FE,$AA,$AA      ; 06



SECTION     "Map",HOME[$0A00]

STARTMAP::
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $01,$02,$03,$04,$02,$05,$06,$02,$07,$08,$07,$01,$09,$00,$0A,$0B
DB $0C,$0D,$05,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $0F,$10,$11,$12,$10,$13,$14,$10,$15,$16,$17,$18,$19,$1A,$1B,$1C
DB $1D,$1E,$1F,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $0F,$10,$21,$22,$10,$23,$14,$10,$24,$25,$26,$27,$19,$28,$29,$2A
DB $1D,$2B,$10,$20,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $2C,$2D,$2E,$2F,$30,$31,$32,$2D,$33,$34,$35,$36,$35,$37,$38,$39
DB $3A,$3B,$3C,$3D,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$3E,$3F,$40,$41,$42,$43,$44,$45,$46,$47,$48,$49,$4A,$4B,$4C
DB $4D,$4E,$4F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$50,$51,$52,$53,$54,$55,$56,$57,$58,$59,$5A,$5B,$5C,$5D,$5E
DB $5F,$60,$61,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$62,$63,$64,$65,$66,$67,$68,$69,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$6A,$6B,$6B,$6C,$6D,$0E,$08,$6B,$06,$6E,$6B,$0D
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$6F,$70,$71,$72,$73,$74,$75,$76,$77,$78,$79,$7A
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00

SHIT_MAP::
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $04,$04,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$01,$01,$00,$02,$01,$01,$00,$00,$01,$00,$00,$01,$01,$01
DB $01,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$00,$01,$00,$00,$01,$00,$00,$01,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$00,$00,$00,$01,$00,$00,$01,$00,$00,$01,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
DB $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$00,$00,$01,$00,$01,$00,$00,$03,$00,$00,$00,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$00,$01,$03,$03,$03,$03,$00,$01,$01,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$01,$01,$00,$01,$01,$01,$00,$03,$00,$03,$03,$01,$00,$01
DB $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$00,$00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$00,$01
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$01,$01,$00,$01,$01,$01,$00,$03,$00,$03,$03,$01,$00,$01
DB $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$00,$01,$03,$03,$03,$03,$00,$01,$01,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$00,$00,$01,$00,$01,$00,$00,$03,$00,$00,$00,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
DB $01,$01,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$00,$00,$00,$01,$00,$00,$01,$00,$00,$01,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$00,$01,$01,$01,$00,$01,$00,$00,$01,$00,$00,$01,$00,$01
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$01,$01,$00,$02,$01,$01,$00,$00,$01,$00,$00,$01,$01,$01
DB $01,$02,$01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00




;************************************************************
;* Bitmap
;* Each $XX represents the following:
;*  0       |   Pacman  |   Ghost   |   Symbol  |   0       |   PowerDot    |   Dot |   Pathable    |
BITMAP::
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$03,$03,$00,$07,$03,$03,$00,$00,$03,$00,$00,$03,$03,$03
DB $03,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$00,$03,$00,$00,$03,$00,$00,$03,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$00,$00,$00,$03,$00,$00,$03,$00,$00,$03,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
DB $03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$01,$00,$00,$00,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$00,$03,$01,$01,$01,$01,$00,$03,$03,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$03,$03,$00,$03,$03,$03,$00,$01,$00,$01,$01,$03,$00,$03
DB $03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$00,$00,$01,$00,$00,$00,$01,$00,$01,$00,$00,$00,$03
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$03,$03,$00,$03,$03,$03,$00,$01,$00,$01,$01,$03,$00,$03
DB $03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$00,$03,$01,$01,$01,$01,$00,$03,$03,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$00,$00,$03,$00,$03,$00,$00,$01,$00,$00,$00,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
DB $03,$03,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$00,$00,$00,$03,$00,$00,$03,$00,$00,$03,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$00,$03,$03,$03,$00,$03,$00,$00,$03,$00,$00,$03,$00,$03
DB $00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$03,$03,$03,$00,$07,$03,$03,$00,$00,$03,$00,$00,$03,$03,$03
DB $03,$07,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00


 SECTION    "Tiles", HOME[$2000]

STARTMAP_TILES::
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1F,$1F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F1,$F1
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$3F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E1,$E1
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FC,$FC
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$03
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FE,$FE
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$7F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$E0
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C0,$C0
DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $3F,$3F,$3F,$3F,$3F,$3F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$FF,$FF
DB $E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$C1,$C1,$C1,$C1,$C1,$C1,$81,$81
DB $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F
DB $E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1,$E1
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F,$3F,$3F,$3F
DB $03,$03,$83,$83,$83,$83,$C3,$C3,$C3,$C3,$E3,$E3,$E3,$E3,$E3,$E3
DB $FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $03,$03,$07,$07,$07,$07,$8F,$8F,$8F,$8F,$DF,$DF,$DF,$DF,$FF,$FF
DB $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE
DB $00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$03,$03,$03,$03
DB $7F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $80,$80,$C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0,$F0,$F0,$F0,$F0,$F8,$F8
DB $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
DB $F0,$F0,$F8,$F8,$F8,$F8,$FC,$FC,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF
DB $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$BF,$BF
DB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0
DB $FF,$FF,$FF,$FF,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F
DB $81,$81,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$81,$81,$81,$81
DB $3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$3F,$FF,$FF
DB $3F,$3F,$3F,$3F,$7F,$7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
DB $E3,$E3,$E3,$E3,$E3,$E3,$E3,$E3,$C3,$C3,$C3,$C3,$83,$83,$83,$83
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE,$FE
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FB,$FB
DB $03,$03,$07,$07,$07,$07,$07,$07,$0F,$0F,$0F,$0F,$1F,$1F,$1F,$1F
DB $FF,$FF,$FB,$FB,$F1,$F1,$F1,$F1,$F1,$F1,$FF,$FF,$FF,$FF,$FF,$FF
DB $F8,$F8,$FC,$FC,$FC,$FC,$FC,$FC,$FE,$FE,$FE,$FE,$FE,$FE,$FF,$FF
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$F7,$F7,$F3,$F3
DB $01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$01,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00
DB $7F,$7F,$7F,$7F,$3F,$3F,$3F,$3F,$1F,$1F,$1F,$1F,$00,$00,$00,$00
DB $C1,$C1,$C1,$C1,$E1,$E1,$E0,$E0,$F0,$F0,$F0,$F0,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$1F,$1F,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC,$FC,$00,$00,$00,$00
DB $E1,$E1,$E1,$E1,$C1,$C1,$C1,$C1,$81,$81,$01,$01,$00,$00,$00,$00
DB $FF,$FF,$FC,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00,$00,$00,$00
DB $FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$FE,$00,$00,$00,$00
DB $FB,$FB,$73,$73,$73,$73,$73,$73,$23,$23,$23,$23,$00,$00,$00,$00
DB $1F,$1F,$3F,$3F,$3F,$3F,$3F,$3F,$7F,$7F,$7F,$7F,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$C0,$C0,$C0,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$00,$00,$00,$00
DB $0F,$0F,$0F,$0F,$8F,$8F,$8F,$8F,$CF,$CF,$CF,$CF,$00,$00,$00,$00
DB $F1,$F1,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$00,$00,$00,$00
DB $FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$3F,$3F,$3F,$3F,$00,$00,$00,$00
DB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$C0,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$06,$00,$66,$00,$66,$00,$F7,$00,$66
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C7,$00,$6C
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$81,$00,$C3
DB $00,$00,$00,$00,$00,$00,$00,$18,$00,$18,$00,$18,$00,$DF,$00,$19
DB $00,$00,$00,$00,$00,$00,$00,$30,$00,$33,$00,$03,$00,$37,$00,$B3
DB $00,$00,$00,$00,$00,$00,$00,$01,$00,$19,$00,$18,$00,$BD,$00,$19
DB $00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$00,$00,$9E,$00,$B3
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$00,$01,$00,$3B,$00,$61
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$80,$00,$C3,$00,$83
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E3,$00,$30
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$8F,$00,$D8
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$00,$6D
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$00,$86
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$00,$CC
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1E,$00,$30
DB $00,$00,$00,$00,$00,$00,$00,$C0,$00,$C0,$00,$C0,$00,$CF,$00,$D9
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3E,$00,$B3
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$00,$66
DB $00,$66,$00,$66,$00,$66,$00,$36,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$6F,$00,$6C,$00,$6C,$00,$67,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$C3,$00,$01,$00,$00,$00,$C3,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$99,$00,$D9,$00,$D9,$00,$99,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$B3,$00,$B3,$00,$B3,$00,$B1,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$19,$00,$19,$00,$19,$00,$8D,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$BF,$00,$B0,$00,$B0,$00,$9F,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$71,$00,$39,$00,$19,$00,$70,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$83,$00,$83,$00,$83,$00,$C3,$00,$03,$00,$03,$00,$03,$00,$00
DB $00,$33,$00,$36,$00,$36,$00,$E3,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$D8,$00,$D8,$00,$D8,$00,$CF,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$6D,$00,$6D,$00,$6D,$00,$6D,$00,$00,$00,$06,$00,$06,$00,$06
DB $00,$9E,$00,$B6,$00,$B6,$00,$9E,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$CC,$00,$CC,$00,$CC,$00,$CC,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$30,$00,$30,$00,$30,$00,$1E,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$D9,$00,$D9,$00,$D9,$00,$CF,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$B3,$00,$B3,$00,$B3,$00,$33,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$7E,$00,$60,$00,$60,$00,$3E,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$0F,$00,$19,$00,$1F,$00,$18,$00,$18,$00,$0F,$00,$00,$00,$00
DB $00,$33,$00,$B3,$00,$9E,$00,$1E,$00,$0C,$00,$8C,$00,$00,$00,$00
DB $00,$3C,$00,$66,$00,$7E,$00,$60,$00,$60,$00,$3E,$00,$00,$00,$00
DB $00,$F0,$00,$C0,$00,$C0,$00,$C0,$00,$C0,$00,$C0,$00,$00,$00,$00
DB $00,$3F,$00,$36,$00,$36,$00,$36,$00,$36,$00,$36,$00,$00,$00,$00
DB $00,$8E,$00,$C3,$00,$CF,$00,$DB,$00,$DB,$00,$CF,$00,$00,$00,$00
DB $00,$3E,$00,$66,$00,$66,$00,$66,$00,$66,$00,$3E,$00,$00,$00,$00
DB $00,$78,$00,$CC,$00,$FC,$00,$C0,$00,$C0,$00,$7C,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$07
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C7,$C7
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E3,$E3
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$C3
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$87,$87
DB $06,$06,$06,$06,$06,$06,$07,$07,$06,$06,$06,$06,$06,$06,$06,$06
DB $66,$66,$66,$66,$66,$66,$C7,$C7,$06,$06,$06,$06,$06,$06,$06,$06
DB $66,$66,$66,$66,$66,$66,$C7,$C7,$C6,$C6,$66,$66,$66,$66,$67,$67
DB $06,$06,$06,$06,$03,$03,$C1,$C1,$00,$00,$00,$00,$06,$06,$E3,$E3
DB $66,$66,$06,$06,$03,$03,$81,$81,$C0,$C0,$60,$60,$66,$66,$C3,$C3
DB $60,$60,$00,$00,$00,$00,$80,$80,$C0,$C0,$60,$60,$60,$60,$C0,$C0
DB $06,$06,$06,$06,$03,$03,$01,$01,$00,$00,$00,$00,$06,$06,$03,$03
DB $61,$61,$01,$01,$01,$01,$81,$81,$C1,$C1,$61,$61,$61,$61,$C1,$C1
DB $83,$83,$86,$86,$86,$86,$86,$86,$87,$87,$86,$86,$86,$86,$86,$86
DB $C6,$C6,$66,$66,$66,$66,$67,$67,$E6,$E6,$66,$66,$66,$66,$66,$66
DB $61,$61,$61,$61,$61,$61,$C1,$C1,$C1,$C1,$61,$61,$61,$61,$61,$61
DB $80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80,$80

SHIT_TILES::
DB $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF  ; $00 - non-pathable
DB $00,$00,$00,$00,$00,$00,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00  ; $01 - dot
DB $00,$00,$00,$00,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$00,$00,$00,$00  ; $10 - powerdot
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00  ; $11 - blank

NUMBERS::
DB $00,$00,$38,$38,$4C,$4C,$C6,$C6,$C6,$C6,$64,$64,$38,$38,$00,$00      ; 0
DB $00,$00,$18,$18,$38,$38,$18,$18,$18,$18,$18,$18,$7E,$7E,$00,$00      ; 1
DB $00,$00,$7C,$7C,$C6,$C6,$0E,$0E,$78,$78,$E0,$E0,$FE,$FE,$00,$00      ; 2
DB $00,$00,$7E,$7E,$0C,$0C,$38,$38,$06,$06,$C6,$C6,$7C,$7C,$00,$00      ; 3
DB $00,$00,$1C,$1C,$3C,$3C,$6C,$6C,$CC,$CC,$FE,$FE,$0C,$0C,$00,$00      ; 4
DB $00,$00,$FC,$FC,$C0,$C0,$FC,$FC,$06,$06,$C6,$C6,$7C,$7C,$00,$00      ; 5
DB $00,$00,$7C,$7C,$C0,$C0,$FC,$FC,$C6,$C6,$C6,$C6,$7C,$7C,$00,$00      ; 6
DB $00,$00,$FE,$FE,$C6,$C6,$0C,$0C,$18,$18,$30,$30,$30,$30,$00,$00      ; 7
DB $00,$00,$7C,$7C,$C6,$C6,$7C,$7C,$C6,$C6,$C6,$C6,$7C,$7C,$00,$00      ; 8
DB $00,$00,$7C,$7C,$C6,$C6,$C6,$C6,$7E,$7E,$06,$06,$7C,$7C,$00,$00      ; 9