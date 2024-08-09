
_AUTOMATIC:

;MyProject.c,9 :: 		void AUTOMATIC (){
;MyProject.c,10 :: 		portd=mode[0];
	MOVF       _mode+0, 0
	MOVWF      PORTD+0
;MyProject.c,11 :: 		for(i=15;i>=4;i--){
	MOVLW      15
	MOVWF      _i+0
L_AUTOMATIC0:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      4
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC1
;MyProject.c,12 :: 		for(j=0;j<25&&man_auto==0;j++){
	CLRF       _j+0
L_AUTOMATIC3:
	MOVLW      128
	XORWF      _j+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      25
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_AUTOMATIC4
	BTFSC      PORTB+0, 1
	GOTO       L_AUTOMATIC4
L__AUTOMATIC85:
;MyProject.c,13 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,14 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,15 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,16 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,17 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,18 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC8:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC8
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC8
	NOP
;MyProject.c,20 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,21 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,22 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,23 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,24 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,25 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC9:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC9
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC9
	NOP
;MyProject.c,27 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,28 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,29 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,30 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,31 :: 		portc=(i-3)/10;
	MOVLW      3
	SUBWF      _i+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      0
	BTFSC      _i+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,32 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC10:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC10
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC10
	NOP
;MyProject.c,34 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,35 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,36 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,37 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,38 :: 		portc=(i-3)%10;
	MOVLW      3
	SUBWF      _i+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      0
	BTFSC      _i+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,39 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC11:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC11
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC11
	NOP
;MyProject.c,12 :: 		for(j=0;j<25&&man_auto==0;j++){
	INCF       _j+0, 1
;MyProject.c,40 :: 		}
	GOTO       L_AUTOMATIC3
L_AUTOMATIC4:
;MyProject.c,11 :: 		for(i=15;i>=4;i--){
	DECF       _i+0, 1
;MyProject.c,41 :: 		}
	GOTO       L_AUTOMATIC0
L_AUTOMATIC1:
;MyProject.c,42 :: 		portd=mode[1];
	MOVF       _mode+1, 0
	MOVWF      PORTD+0
;MyProject.c,43 :: 		for(i=3;i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
L_AUTOMATIC12:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC13
;MyProject.c,44 :: 		for(j=0;j<25&&man_auto==0;j++){
	CLRF       _j+0
L_AUTOMATIC15:
	MOVLW      128
	XORWF      _j+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      25
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_AUTOMATIC16
	BTFSC      PORTB+0, 1
	GOTO       L_AUTOMATIC16
L__AUTOMATIC84:
;MyProject.c,45 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,46 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,47 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,48 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,49 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,50 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC20:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC20
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC20
	NOP
;MyProject.c,52 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,53 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,54 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,55 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,56 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,57 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC21:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC21
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC21
	NOP
;MyProject.c,59 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,60 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,61 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,62 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,63 :: 		portc=(i)/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,64 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC22:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC22
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC22
	NOP
;MyProject.c,66 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,67 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,68 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,69 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,70 :: 		portc=(i)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,71 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC23:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC23
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC23
	NOP
;MyProject.c,44 :: 		for(j=0;j<25&&man_auto==0;j++){
	INCF       _j+0, 1
;MyProject.c,72 :: 		}
	GOTO       L_AUTOMATIC15
L_AUTOMATIC16:
;MyProject.c,43 :: 		for(i=3;i>=1;i--){
	DECF       _i+0, 1
;MyProject.c,73 :: 		}
	GOTO       L_AUTOMATIC12
L_AUTOMATIC13:
;MyProject.c,74 :: 		portd=mode[2];
	MOVF       _mode+2, 0
	MOVWF      PORTD+0
;MyProject.c,75 :: 		for(i=23;i>=4;i--){
	MOVLW      23
	MOVWF      _i+0
L_AUTOMATIC24:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      4
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC25
;MyProject.c,76 :: 		for(j=0;j<=25&&man_auto==0;j++){
	CLRF       _j+0
L_AUTOMATIC27:
	MOVLW      128
	XORLW      25
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC28
	BTFSC      PORTB+0, 1
	GOTO       L_AUTOMATIC28
L__AUTOMATIC83:
;MyProject.c,77 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,78 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,79 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,80 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,81 :: 		portc=(i-3)/10;
	MOVLW      3
	SUBWF      _i+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      0
	BTFSC      _i+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,82 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC32:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC32
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC32
	NOP
;MyProject.c,84 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,85 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,86 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,87 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,88 :: 		portc=(i-3)%10;
	MOVLW      3
	SUBWF      _i+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSS      STATUS+0, 0
	DECF       R0+1, 1
	MOVLW      0
	BTFSC      _i+0, 7
	MOVLW      255
	ADDWF      R0+1, 1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,89 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC33:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC33
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC33
	NOP
;MyProject.c,91 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,92 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,93 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,94 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,95 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,96 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC34:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC34
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC34
	NOP
;MyProject.c,98 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,99 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,100 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,101 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,102 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,103 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC35:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC35
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC35
	NOP
;MyProject.c,76 :: 		for(j=0;j<=25&&man_auto==0;j++){
	INCF       _j+0, 1
;MyProject.c,104 :: 		}
	GOTO       L_AUTOMATIC27
L_AUTOMATIC28:
;MyProject.c,75 :: 		for(i=23;i>=4;i--){
	DECF       _i+0, 1
;MyProject.c,105 :: 		}
	GOTO       L_AUTOMATIC24
L_AUTOMATIC25:
;MyProject.c,106 :: 		portd=mode[3];
	MOVF       _mode+3, 0
	MOVWF      PORTD+0
;MyProject.c,107 :: 		for(i=3;i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
L_AUTOMATIC36:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC37
;MyProject.c,108 :: 		for(j=0;j<=25&&man_auto==0;j++){
	CLRF       _j+0
L_AUTOMATIC39:
	MOVLW      128
	XORLW      25
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_AUTOMATIC40
	BTFSC      PORTB+0, 1
	GOTO       L_AUTOMATIC40
L__AUTOMATIC82:
;MyProject.c,109 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,110 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,111 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,112 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,113 :: 		portc=(i)/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,114 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC44:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC44
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC44
	NOP
;MyProject.c,116 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,117 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,118 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,119 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,120 :: 		portc=(i)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,121 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC45:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC45
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC45
	NOP
;MyProject.c,123 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,124 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,125 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,126 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,127 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,128 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC46:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC46
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC46
	NOP
;MyProject.c,130 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,131 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,132 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,133 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,134 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,135 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_AUTOMATIC47:
	DECFSZ     R13+0, 1
	GOTO       L_AUTOMATIC47
	DECFSZ     R12+0, 1
	GOTO       L_AUTOMATIC47
	NOP
;MyProject.c,108 :: 		for(j=0;j<=25&&man_auto==0;j++){
	INCF       _j+0, 1
;MyProject.c,136 :: 		}
	GOTO       L_AUTOMATIC39
L_AUTOMATIC40:
;MyProject.c,107 :: 		for(i=3;i>=1;i--){
	DECF       _i+0, 1
;MyProject.c,137 :: 		}
	GOTO       L_AUTOMATIC36
L_AUTOMATIC37:
;MyProject.c,138 :: 		}
L_end_AUTOMATIC:
	RETURN
; end of _AUTOMATIC

_Manuel:

;MyProject.c,139 :: 		void Manuel(){
;MyProject.c,140 :: 		if(man_auto==1)  {
	BTFSS      PORTB+0, 1
	GOTO       L_Manuel48
;MyProject.c,141 :: 		portd=mode[k];
	MOVF       _k+0, 0
	ADDLW      _mode+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,142 :: 		west_right=west_left=south_right=south_left=1;
	BSF        PORTB+0, 7
	BTFSC      PORTB+0, 7
	GOTO       L__Manuel88
	BCF        PORTB+0, 6
	GOTO       L__Manuel89
L__Manuel88:
	BSF        PORTB+0, 6
L__Manuel89:
	BTFSC      PORTB+0, 6
	GOTO       L__Manuel90
	BCF        PORTB+0, 5
	GOTO       L__Manuel91
L__Manuel90:
	BSF        PORTB+0, 5
L__Manuel91:
	BTFSC      PORTB+0, 5
	GOTO       L__Manuel92
	BCF        PORTB+0, 4
	GOTO       L__Manuel93
L__Manuel92:
	BSF        PORTB+0, 4
L__Manuel93:
;MyProject.c,143 :: 		switch (k){
	GOTO       L_Manuel49
;MyProject.c,144 :: 		case 0:
L_Manuel51:
;MyProject.c,145 :: 		break;
	GOTO       L_Manuel50
;MyProject.c,146 :: 		case 1:
L_Manuel52:
;MyProject.c,147 :: 		for(i=3;i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
L_Manuel53:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Manuel54
;MyProject.c,148 :: 		for(j=0;j<=25;j++){
	CLRF       _j+0
L_Manuel56:
	MOVLW      128
	XORLW      25
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Manuel57
;MyProject.c,149 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,150 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,151 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,152 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,153 :: 		portc=(i)/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,154 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel59:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel59
	DECFSZ     R12+0, 1
	GOTO       L_Manuel59
	NOP
;MyProject.c,156 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,157 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,158 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,159 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,160 :: 		portc=(i)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,161 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel60:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel60
	DECFSZ     R12+0, 1
	GOTO       L_Manuel60
	NOP
;MyProject.c,163 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,164 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,165 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,166 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,167 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,168 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel61:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel61
	DECFSZ     R12+0, 1
	GOTO       L_Manuel61
	NOP
;MyProject.c,170 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,171 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,172 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,173 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,174 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,175 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel62:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel62
	DECFSZ     R12+0, 1
	GOTO       L_Manuel62
	NOP
;MyProject.c,148 :: 		for(j=0;j<=25;j++){
	INCF       _j+0, 1
;MyProject.c,176 :: 		}
	GOTO       L_Manuel56
L_Manuel57:
;MyProject.c,147 :: 		for(i=3;i>=1;i--){
	DECF       _i+0, 1
;MyProject.c,177 :: 		}
	GOTO       L_Manuel53
L_Manuel54:
;MyProject.c,178 :: 		k=2;
	MOVLW      2
	MOVWF      _k+0
;MyProject.c,179 :: 		break;
	GOTO       L_Manuel50
;MyProject.c,180 :: 		case 2:
L_Manuel63:
;MyProject.c,181 :: 		break;
	GOTO       L_Manuel50
;MyProject.c,182 :: 		case 3:
L_Manuel64:
;MyProject.c,183 :: 		for(i=3;i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
L_Manuel65:
	MOVLW      128
	XORWF      _i+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      1
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Manuel66
;MyProject.c,184 :: 		for(j=0;j<=25;j++){
	CLRF       _j+0
L_Manuel68:
	MOVLW      128
	XORLW      25
	MOVWF      R0+0
	MOVLW      128
	XORWF      _j+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Manuel69
;MyProject.c,185 :: 		west_right=0;
	BCF        PORTB+0, 4
;MyProject.c,186 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,187 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,188 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,189 :: 		portc=(i)/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,190 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel71:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel71
	DECFSZ     R12+0, 1
	GOTO       L_Manuel71
	NOP
;MyProject.c,192 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,193 :: 		west_left=0;
	BCF        PORTB+0, 5
;MyProject.c,194 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,195 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,196 :: 		portc=(i)%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,197 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel72:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel72
	DECFSZ     R12+0, 1
	GOTO       L_Manuel72
	NOP
;MyProject.c,199 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,200 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,201 :: 		south_right=0;
	BCF        PORTB+0, 6
;MyProject.c,202 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,203 :: 		portc=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,204 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel73:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel73
	DECFSZ     R12+0, 1
	GOTO       L_Manuel73
	NOP
;MyProject.c,206 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,207 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,208 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,209 :: 		south_left=0;
	BCF        PORTB+0, 7
;MyProject.c,210 :: 		portc=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVF       _i+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTC+0
;MyProject.c,211 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_Manuel74:
	DECFSZ     R13+0, 1
	GOTO       L_Manuel74
	DECFSZ     R12+0, 1
	GOTO       L_Manuel74
	NOP
;MyProject.c,184 :: 		for(j=0;j<=25;j++){
	INCF       _j+0, 1
;MyProject.c,212 :: 		}
	GOTO       L_Manuel68
L_Manuel69:
;MyProject.c,183 :: 		for(i=3;i>=1;i--){
	DECF       _i+0, 1
;MyProject.c,213 :: 		}
	GOTO       L_Manuel65
L_Manuel66:
;MyProject.c,214 :: 		k=0;
	CLRF       _k+0
;MyProject.c,215 :: 		break;
	GOTO       L_Manuel50
;MyProject.c,216 :: 		}
L_Manuel49:
	MOVF       _k+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Manuel51
	MOVF       _k+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_Manuel52
	MOVF       _k+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_Manuel63
	MOVF       _k+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_Manuel64
L_Manuel50:
;MyProject.c,217 :: 		}
L_Manuel48:
;MyProject.c,218 :: 		}
L_end_Manuel:
	RETURN
; end of _Manuel

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;MyProject.c,219 :: 		void interrupt(){
;MyProject.c,220 :: 		if(intf_bit){
	BTFSS      INTF_bit+0, BitPos(INTF_bit+0)
	GOTO       L_interrupt75
;MyProject.c,221 :: 		intf_bit=0;
	BCF        INTF_bit+0, BitPos(INTF_bit+0)
;MyProject.c,222 :: 		if(k==3)k=0;
	MOVF       _k+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_interrupt76
	CLRF       _k+0
	GOTO       L_interrupt77
L_interrupt76:
;MyProject.c,224 :: 		++k;
	INCF       _k+0, 1
L_interrupt77:
;MyProject.c,225 :: 		Manuel();
	CALL       _Manuel+0
;MyProject.c,226 :: 		}
L_interrupt75:
;MyProject.c,227 :: 		}
L_end_interrupt:
L__interrupt95:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_main:

;MyProject.c,228 :: 		void main() {
;MyProject.c,229 :: 		trisb=0b00000011;
	MOVLW      3
	MOVWF      TRISB+0
;MyProject.c,230 :: 		trisc=0x00;portc=0;
	CLRF       TRISC+0
	CLRF       PORTC+0
;MyProject.c,231 :: 		trisd=0x00;portd=0;
	CLRF       TRISD+0
	CLRF       PORTD+0
;MyProject.c,232 :: 		west_right=1;
	BSF        PORTB+0, 4
;MyProject.c,233 :: 		west_left=1;
	BSF        PORTB+0, 5
;MyProject.c,234 :: 		south_left=1;
	BSF        PORTB+0, 7
;MyProject.c,235 :: 		south_right=1;
	BSF        PORTB+0, 6
;MyProject.c,236 :: 		intedg_bit=1;
	BSF        INTEDG_bit+0, BitPos(INTEDG_bit+0)
;MyProject.c,237 :: 		gie_bit=1;
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;MyProject.c,238 :: 		inte_bit=1;
	BSF        INTE_bit+0, BitPos(INTE_bit+0)
;MyProject.c,239 :: 		while(1){
L_main78:
;MyProject.c,240 :: 		if (man_auto)
	BTFSS      PORTB+0, 1
	GOTO       L_main80
;MyProject.c,241 :: 		Manuel();
	CALL       _Manuel+0
	GOTO       L_main81
L_main80:
;MyProject.c,243 :: 		Automatic();
	CALL       _AUTOMATIC+0
L_main81:
;MyProject.c,244 :: 		}
	GOTO       L_main78
;MyProject.c,248 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
