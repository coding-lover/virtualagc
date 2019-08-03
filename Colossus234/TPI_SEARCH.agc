### FILE="Main.annotation"
## Copyright:   Public domain.
## Filename:    TPI_SEARCH.agc
## Purpose:     A section of Colossus revision 234.
##              It is part of the reconstructed source code for the first
##              (unmanufactured) release of the flighta software for the
##              Command Module's (CM) Apollo Guidance Computer (AGC) for
##              Apollo 8. The code has been recreated from a copy of
##              Colossus 237. It has been adapted such that the resulting
##              bugger words exactly match those specified for Colossus 234
##              in NASA drawing 2021151B, which gives relatively high
##              confidence that the reconstruction is correct.
## Reference:   539
## Assembler:   yaYUL
## Contact:     Ron Burkey <info@sandroid.org>.
## Website:     www.ibiblio.org/apollo/index.html
## Warning:     THIS PROGRAM IS STILL UNDERGOING RECONSTRUCTION
##              AND DOES NOT YET REFLECT THE ORIGINAL CONTENTS OF
##              COLOSSUS 234.
## Mod history: 2019-08-02 MAS  Created from Colossus 237.

## Page 539
# PROGRAM DESCRIPTION S17.1 AND S17.2

# FUNCTIONAL DESCRIPTION

#          THE TPI SEARCH ROUTINE DETERMINES THE MINIMUM TOTAL VELOCITY TRANSFER TRAJECTORY FROM A GIVEN TPI
# MANEUVER TIME WITHIN THE CONSTRAINT OF A SAFE PERICENTER.  THIS VELOCITY IS THE SUM OF THE IMPULSIVE VELOCITIES
# FOR THE TPI AND TPF MANEUVERS.
#          THE S17.1 ROUTINE EXTRAPOLATES THE STATE VECTORS OF BOTH VEHICLES TO THE TPI TIME AND COMPUTES THE
# RELATIVE PHASE ANGLE BETWEEN THE VEHICLES, THE ALTITUDE DIFFERENCE(I.E. THE MAGNITUDE DIFFERENCE OF THE 
# POSITION VECTORS) AND SELECTS A SEARCH SECTOR BASED ON THE SIGN OF THE ALTITUDE DIFFERENCE.
#          THE S17.2 ROUTINE FURTHER DEFINES THE SEARCH SECTOR BY COMPUTING ANGULAR LIMITS AND USES THE TIME THETA
# SUBROUTINE TO COMPUTE THE SEARCH START AND END TIMES.  THE SEARCH IS THEN MADE IN AN ITERATIVE LOOP USING THE
# LAMBERT SUBROUTINE TO COMPUTE THE VELOCITIES REQUIRED AT TPI TIME AND AT TPF TIME.  EXIT FROM THE SEARCH LOOP
# IS MADE WHEN SOLUTION CRITERIA ARE MET (NORMAL EXIT) OR AS SOON AS IT IS EVIDENT THAT NO SOLUTION EXISTS IN
# THE SECTOR SEARCHED.

# CALLING SEQUENCE

#          BOTH ROUTINES ARE CALLED IN INTERPRETIVE CODE AND RETURN VIA QPRET.  S17.1 HAS ONLY A NORMAL EXIT.
# S17.2 RETURNS VIA QPRET FOR NORMAL EXIT AND TO ALARUMS FOR ERROR EXIT.
# SUBROUTINES CALLED

#          CSMCONIC
#          LEMCONIC
#          TIMETHET
#          INITVEL

		BANK	36
		SETLOC	P17S
		BANK

		COUNT	36/TPI

		EBANK=	RACT3

#       **** TEMPORARY ****

HPE		2DEC	157420.0 B-29	# EARTH'S MIN. PERICENTER ALTITUDE 85 N.M.

HPL		2DEC	10668.0213 B-29	# MOON:S MIN. PERICENTER ALTITUDE 35000FT
CDSEC		2DEC	40000
CLSEC		2DEC	15000
PIINVERS	2DEC	.3183098862
SEC1THET	2DEC	.1944444444
## Page 540
SEC2THET	2DEC	.9166666667
MANYFEET	2DEC	-1.0 B-2
LIMVEL		2DEC	.6096 E-2 B-7	# 2FPS
DFTMOON		2DEC	.1524 E3 B-29	# 500 FEET
DP-.002		2DEC	0.002
S17.1		STQ	DLOAD
			NORMEX
			TTPI
		STCALL	TDEC1		# ADVANCE PASSIVE VEHICLE  TO TPI
			LEMCONIC
		CALL
			LEMSTORE
		DLOAD
			TTPI
		STCALL	TDEC1		# ADVANCE  ACTIVE VEHICLE TO TPI
			CSMCONIC
		CALL
			CSMSTORE
		VLOAD
			RACT3
		ABVAL	PDVL		#  /RA/ 0D                         PL  2D
			RPASS3
		UNIT	PDDL		#  UNIT RP 0D                      PL  6D
		BDSU	SET
			36D		# /RP/ -/RA/
			KFLAG		#  OFF = +
		BMN	CLEAR
			+2
			KFLAG		#  ON = -
		STOVL	DELHITE
			0D
		VXV	UNIT
			VPASS3
		STOVL	E2		# ALMOST IT SAVE FOR 17.2
			RACT3
		PUSH	VPROJ
			E2
		VSL2	BVSU		# RPA
		UNIT	DOT
			0D
		SL1 	ACOS
		PDVL
		VXV	DOT
			RACT3
			E2
## Page 541
		PDDL	SIGN
		STADR
		STODL	THETZERO	# CENTRAL ANGLE
			X1
		STCALL	XRS		# SAVE INDICES FOR FURTHER USE
			NORMEX		#  += ACTIVE AHEAD   -= ACTIVE BEHIND
S17.2		STQ	VLOAD		# COMPUTE SEARCH SECTOR LIMITS
			QTEMP
			RACT3
		UNIT	DOT
			E2
		ABS	SQRT
		SL1	DAD
			DP-.002		# ADD .002 RADIANS TO IT
		BON	DCOMP		# GIVES CORRECT SINE, COSINE MUST BE
			KFLAG		# COMP. ADD .5 FOR ANGLE
			+1
# PHI(0)=180-(-(THETAZERO +K5IT)), PHI(I)=180-(-(THETAZERO+K2IT))
# SIN(180-ALPHA)=SIN(ALPHA) ETC
		DMP	SETPD
			PIINVERS	# REVOLUTIONARY HERES TWO IT
			0D
		PUSH	DSU
			THETZERO
		STORE	IT		# PHI(I) , -(THETZERO + K2IT)
		PDDL	PUSH
		SR1	DAD
		DAD	PUSH		# PHI(0) , -(THETZERO + K5IT)
		SIN	SET
			RVSW
		STODL	SNTH
		COS	BMN
			+2
		DCOMP
		STODL	CSTH
			XRS
		STOVL	X1
			RPASS3
		VSR*
			0,2
		STOVL	RVEC
			VPASS3
		VSR*
			0,2
		STCALL	VVEC
			TIMETHET
		DLOAD			# SAVE START TIME AND GET END TIME
			T
		STORE	TF
		STODL	TFO
## Page 542
			IT
		PUSH	SIN
		STODL	SNTH
		COS	BMN
			+2
		DCOMP
		STORE	CSTH
		LXA,1	CALL
			XRS
			TIMETHET	
# INITIALIZE LOOP
		DLOAD	CLEAR
			T
			ITSWICH
		STODL	TFI		# SAVE TIME FOR LOOP TEST
			DPPOSMAX
		STODL	DELVEE
			MANYFEET
		STODL	HP
			SEC1THET	# 70 DEGREES
		BON	DLOAD
			KFLAG
			+2
			SEC2THET	# 330 DEGREES
		STCALL	THETL
			CONCAUL
BIS		DLOAD	SR1
			CSTH
		STODL	COSTH
			SNTH
		SR1
		STCALL	SINTH		# GET 4 QUADRANT THETA
			ARCTRIG
		BPL	DAD
			+2
			DPPOSMAX	# PUT THETA BETWEEN 0,1
		BDSU	PDDL
			THETL
			TF
		DSU	SIGN		# FAST TIMES
			TFI
		BMN
			RNGETEST	# TIME MUST HAVE A STOP
# ADVANCE PASSIVE FOR TARGET VECTOR
CONCAUL		DLOAD
			TTPI
		DAD	BON
			TF
			AVFLAG
			ADVCSM
## Page 543
		STCALL	TDEC1
			LEMCONIC
		GOTO
			JUNCT3
ADVCSM		STCALL	TDEC1
			CSMCONIC
# SAVE BACK VALUES OF HP AND DELVEE
JUNCT3		VLOAD
			VATT
		STOVL	VPASS4
			RATT
		STORE	RPASS4
		STODL	RTARG
			TF
		STODL	DELLT4
			HP
		STODL	HPO
			DELVEE
		STODL	DELVEO
# PREPARE FOR LAMBERT
			TTPI
		STODL	INTIME
			XRS
		STODL	RTX1
			HI6ZEROS
		SETPD	PDDL
			0D
			EPSFOUR
		PDVL
			RACT3
		STOVL	RINIT
			VACT3
		STCALL	VINIT
			INITVEL
# COMPUTE H ET CETERA
		VLOAD	VSU
			VTPRIME
			VPASS4
		ABVAL	PUSH
		STOVL	RELDELV		# /V2-VP(TPI+TF)/
			DELVEET3	# V1-VA
		ABVAL			# /V1-VA/
		STORE	MAGVTPI
		DAD	STADR
		STODL	DELVEE
			XRS
		STOVL	X1
			VIPRIME
		VSR*
			0,2
## Page 544
		STOVL	VVEC
			RACT3
		VSR*
			0,2
		STCALL	RVEC
			PERIAPO
		LXA,2	DLOAD
			XRS +1
		SL*
			0,2
		STORE	HP
# ITSWICH DENOTES INTERPOLATION--SOLUTION ACCEPTANCE IS FORCED
		BON	DLOAD
			ITSWICH
			ENDEN
			HPERMIN
		DSU	BMN
			HP
			HALFSAFE
		PDDL	DSU		# WAS PERICENTER ALT SAFE
			HPERMIN
			HPO
		BMN	DSU		# (HPLIM-HPO)-(HPLIM-HP)=HP-HPO
			INTERP		# SOLUTION AT HAND
		BMN	DLOAD
			ALARUMS		# ITS GETTING WORSE - SOUND THE ALARM
			CDSEC
JUNCT1		BOFF	DCOMP		# OFF IS PLUS ON IS MINUS
			KFLAG
			+1
		STORE	DELTEE
JUNCT2		DLOAD	DAD
			DELTEE
			TF
		STCALL	TF
			BIS		# RECYCLE
INTERP		SET	DSU		# HP-HPO
			ITSWICH
		NORM	PDDL
			X1
			DFTMOON
		DAD	DSU
			HPERMIN
			HP
		NORM	SR1
			X2
		XSU,2	DDV
			X1
		DMP	SR*
			DELTEE
## Page 545
			0 -1,2
		STCALL	DELTEE
			JUNCT2
HALFSAFE	PDDL	DSU		# SAVE HP-HPLIM FOR POSSIBLE
			DELVEE
			DELVEO		# SAVE THIS TOO
		PUSH	ABS
		DSU	BMN
			LIMVEL		# 2 FT PS
			ENDEN
		DLOAD	DSU
			HPERMIN
			HPO
		PDDL
		BMN	DLOAD
			LRGRDVO
		BPL	DLOAD
			INTERP
			DELTEE
		SR1	DCOMP
		STCALL	DELTEE
			JUNCT2
LRGRDVO		DLOAD
		BMN	DLOAD
			JUNCT2
			CLSEC
		GOTO
			JUNCT1
# TIME RAN OUT ASSUME SOLUTION IF SAFE PERICENTER
RNGETEST	DLOAD	DSU
			HP
			HPERMIN
		BMN	DLOAD
			ALARUMS
			TF
		DSU
			DELTEE
		STORE	TF		# TIME OF SOLUTION
ENDEN		VLOAD
			VTPRIME
		DOT	PDDL		# SG2 WITH MAGNITUDE
			RPASS4
			RELDELV
		SIGN	STADR		# NOW SIGN(RELDELV)=SIGN(SG2)
		STCALL	RELDELV
			TRANSANG	# COMPUTE OMEGA T , CENTRAL ANGLE
		VLOAD	DOT
			RACT3
			VIPRIME		# SG1
		SIGN	BPL		# IF POSITIVE THEN SG1 = SG2 OTHERWISE
## Page 546
			RELDELV
			USEKAY		# SIGN(SG2-SG1)=SIGN(SG2)=SIGN(RELDELV)
		SLOAD	DCOMP
			DECTWO
		SIGN	BPL
			RELDELV
			NEXUS
		DCOMP	GOTO
			USEKAY +4
USEKAY		SLOAD	BON
			DECTWO
			KFLAG
			NEXUS
		DSU	
			P21ONENN
NEXUS		STODL	NN1
			HP
		STCALL	POSTTPI
			QTEMP
		BANK	07
		SETLOC	XANG
		BANK
		COUNT	07/XANG

# CENTRAL ANGLE SUBROUTINE
#         THIS SUBROUTINE COMPUTES THE CENTRAL ANGLE OF TRAVEL OF THE
# PASSIVE VEHICLE DURING THE TRANSFER.

TRANSANG	STQ	SETPD
			SUBEXIT
			0
		LXA,1	LXA,2
			XRS
			XRS +1
		VLOAD	VSR*
			VPASS4
			0,2
		STODL*	VVEC
			MUTABLE	+2,1
		PDVL	VSR*		# SQRT MU  (+18 OR +15)          00D
			RPASS4
			0,2
		ABVAL	PDDL*		# MAGNITUDE OF R  (+29 OR +27)   02D
			MUTABLE,1
		PDVL	VSQ		# 1/MU  (+34 OR +28)             04D
			VVEC
		NORM	DMPR		# PUSH LIST AT 02D
			X1
		DMP	SRR*
			02D
## Page 547
			0 -3,1
		BDSU			# R V**/MU  (+6)
			D1/32
		NORM	PDDL
			X1		# (2 - R V**/MU)     (+6-N)
		SR1R	DDV		# MAGNITUDE OF R     (+30 OR +28)
		SL*	PUSH		# R/(2 - R V**/MU)   (+29 OR +27)02D
			0 -5,1
		SR1	SQRT
		DMP
		NORM	PDDL		# ASUBP***                       00D
			X1
		SR1	DDV
		DMP	SL*
			TF
			0,1
		PDDL	NORM
			2PISC
			X1
		PDDL	DDV
		SL*
			0 -3,1		# CENTANG = (SQRT(MU/ASUP***)TF)
		STCALL	CENTANG		# IN REVOLUTIONS B-0
			SUBEXIT
		BANK	35
		SETLOC	P17S1
		BANK
		COUNT	35/P17

# TPI SEARCH DISPLAY ROUTINE

P17		TC	AVFLAGA		# AVFLAG = CSM , SET TRACK + UPDATE FLAGS
		TC	P17.1
P77		TC	AVFLAGP		# AVFLAG = LEM , SET TRACK + UPDATE FLAGS
P17.1		TC	P20FLGON	#  SET UPDATE FLAG
		CAF	V06N37		#  DISPLAY TTPI TIME
		TC	VNPOOH
		TC	INTPRET
		CLEAR	CALL
			UPDATFLG
			S17.1		# UPDATE STATE VECTORS TO TTPI
		SET	AXT,1
			UPDATFLG
		DEC	2		# DELTA H = 2  K POSITIVE , KFLAG OFF
		BOFF	AXT,1
			KFLAG
			+2
		DEC	1		# DELTA H = 1  K NEGATIVE , KFLAG ON
		SXA,1	EXIT
			OPTION2
## Page 548
		CAF	V06N72		# DISPLAY PHI , DELTA H , SEARCH OPTION K
		TC	VNCOMP17
		TC	INTPRET
		CLEAR	SET
			UPDATFLG
			KFLAG
		SLOAD	DSU
			OPTION2		# RESET KFLAG ON FOR OPTION =1
			P21ONENN	#            OFF FOR OPTION =2
		BHIZ	CLEAR
			+2
			KFLAG
		SLOAD	BHIZ
			XRS +1
			+4
		DLOAD	GOTO
			HPL
			P17.2
		DLOAD
			HPE
P17.2		STCALL	HPERMIN
			S17.2
		SET	EXIT
			UPDATFLG
P17.3		CAF	V06N58		# DISPLAY DELTA VTPI , DELTA VTPF , AND H
		TC	VNCOMP17
		CAF	V06N55		# DISPLAY PERICENTER CODE AND CENTRAL ANG,
		TC	BANKCALL
		CADR	GOFLASHR
		TC	GOTOPOOH	# TERMINATE PROGRAM
		TC	GOTOPOOH	# END PROGRAM
		TC	P17.1		# RECYCLE WITH NEW TTPI OR SEARCH OPTION
		CAF	TWO		# BLANK R2
		TC	BLANKET
		TCF	ENDOFJOB
		EBANK=	RTRN

VNCOMP17	EXTEND
		QXCH	QSAVED
		TS	VERBNOUN
		CA	VERBNOUN
		TCR	BANKCALL
		CADR	GOFLASH
		TC	-3		# TERMINATE ILLEGAL REDISPLAY
		TC	QSAVED		# PROCEED
		CS	MPAC		# RECYCLE WITH NEW TPI TIME
		AD	BIT6		# OR PROCEED WITH NEW SEARCH OPTION
		EXTEND
		BZF	P17.1
		TC	VNCOMP17 +3
## Page 549
ALARUMS		SET	EXIT
			UPDATFLG
		TC	ALARM
		OCT	00124		# NO SAFE PERCENTER IN THIS SECTOR
		CAF	V05N09
		TC	VNCOMP17
		TC	GOTOPOOH	# PROCEED ILLEGAL TERMINATE PROGRAM
V06N72		VN	0672
