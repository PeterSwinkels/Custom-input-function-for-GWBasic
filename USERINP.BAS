10 DEFINT A-Z
20 SCREEN 0:WIDTH 80,25:COLOR 7,0:CLS
30 USERINPUT$=""
40 LOCATE 3,3: PRINT "Enter a number: ";
50 GOSUB 70
60 END
70 Y = POS(0)
80 X=CSRLIN
90 WHILE NOT KEYV$=CHR$(27)
100 COLOR 7,0:LOCATE X,Y:PRINT  USERINPUT$;:COLOR 23,0:PRINT "_ ";
110 :COLOR 7,0
120 KEYV$="": WHILE KEYV$="":KEYV$=INKEY$:WEND
130 IF KEYV$=> "0" AND KEYV$<="9" AND LEN(USERINPUT$)<12 THEN USERINPUT$=USERINPUT$+KEYV$
140 IF KEYV$="." AND INSTR(USERINPUT$,".")=0 THEN USERINPUT$=USERINPUT$+"."
150 IF KEYV$="-" THEN USERINPUT$=STR$(-ABS(VAL(USERINPUT$)))
160 IF KEYV$="+" THEN USERINPUT$=MID$(STR$(ABS(VAL(USERINPUT$))),2)
170 IF KEYV$=CHR$(13) THEN RETURN
180 IF KEYV$=CHR$(8) AND LEN(USERINPUT$)>0 THEN USERINPUT$=LEFT$(USERINPUT$,LEN(USERINPUT$)-1)
190 IF KEYV$=CHR$(27) THEN USERINPUT$=""
200 WEND
210 RETURN
