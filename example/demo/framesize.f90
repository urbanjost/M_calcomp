PROGRAM QA7
! (LICENSE:Public Domain)
USE M_calcomp
real :: xarray, yarray
DIMENSION XARRAY(20),YARRAY(20)
integer :: i, k
real :: x, y
DATA XARRAY/0.0,2.5,5.0,10.0,16.0,20.0,23.0,28.0,35.0,40.0, 44.0,51.0,60.0,64.0,69.0,75.0,82.0,88.0,00.0,00.0/
DATA YARRAY/0.0,-20.0,-48.0,-70.0,-98.0,-110.0,-125.0,-142.0, -130.0,-115.0,-80.0,-35.0,-10.0,5.0,22.0,35.0,42.0,58.0,00.0, 000.0/
!    CHECK RELATIVE FRAME SIZING
!    USING 1 AND 2 MAKE SURE MAXIMUM VALUE BECOMES UPPER LEFT CORNER
!    OF PLOT AND USING 3 MAKE SURE LARGE ORIGIN OFFSETS ARE WORKING
   CALL PLOTS(0.0,8.5,0.0,11.0)
   DO I=1,3
      CALL PLOT (0.5,0.5,-3)
      CALL SCALE (XARRAY,5.0,18,1)
      CALL SCALE (YARRAY,6.0,18,1)
      IF(I.LE.2)THEN
         IF(I.EQ.1)THEN
            X=6.0
            Y=7.0
         ELSE
            X=8.0
            Y=9.5
         ENDIF
         CALL PLOT (X,0.0,2)
         CALL PLOT (X,Y,2)
         CALL PLOT (0.0,Y,2)
         CALL PLOT (0.0,0.0,2)
      ELSE
         CALL PLOT(22.5,13.5,-3)
      ENDIF
!CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      CALL AXIS(0.0,0.0,'TIME IN MILLISECONDS',-20,5.0,0.0,XARRAY(19), XARRAY(20))
      CALL AXIS (0.0,0.0,'VOLTAGE',7,6.0,90.0,YARRAY(19),YARRAY(20))
      CALL LINE (XARRAY,YARRAY,18,1,2,4)
      CALL SYMBOL (0.5,5.6,0.21,'PERFORMANCE TST1',999,0.0,16)
      CALL SYMBOL (0.5,5.2,0.14,'REF. NO. 1623-46',999,0.0,16)
      CALL NFRAME()
   ENDDO
!CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
!
! CHECK OUT INTENSITY SETTINGS WITH HARDWARE CHARACTERS
   CALL MSET("HARD")
   CALL MSET("XLAR")
   Y=.25
   CALL PLOT(0.,0.,-3)
   CALL PLOT(10.,0.,2)
   CALL PLOT(10.,10.,2)
   CALL PLOT(0.,10.,2)
   CALL PLOT(0.,0.,2)
   DO K=1,100,13
      CALL SETPAR('INTE',K)
      CALL PLOT(.5,Y,3)
      CALL PLOT(5.,Y,2)
      CALL SYMBOL(5.1,Y,7.0,'AMR',999,0.,3)
      Y=Y+.5
   ENDDO
   CALL NFRAME()
!CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
!     TEST HARDWARE TEXT SIZES
!
   CALL MSET("HARD")
   CALL MSET("MEDI")
   CALL PLOT(0.0,0.0,-3)
   CALL PLOT(28.,0.0,2)
   CALL PLOT(28.,20.,2)
   CALL PLOT(0.,20.,2)
   CALL PLOT(0.,0.,2)
!
   Y=0.
   DO I=19,30
      CALL MPSET('TSIZ',FLOAT(I))
      CALL SYMBOL(1.,Y,.2,'TEST @@@@@\\\\\ END ' ,999,0.,20)
      Y=Y+.31
   enddo
   CALL MSET("SOFT")
   CALL SYMBOL(1.,10.,.50,'.50 INCH CHARACTERS ',-1,0.0,20)
   CALL SYMBOL(1.,11.,.50,'.50 INCH CHARACTERS ',999,0.0,20)
   CALL NFRAME()
!CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
!
!        A COMPILED COPY OF THE FR80 DUMPER IS AVAILABLE; JUST MAKE
!        PLTOUT BY USING THE NODISP OPTION ON THE COM PROCEDURES AND
!        THEN RUN THE FOLLOWING JCL:
!
!        REWIND,DN=PLTOUT.
!        COPYF,I=PLTOUT,O=FT01.
!        REWIND,DN=FT01.
!        ATTACH,DN=DUMP,PDN=CR80DMP,ID=OSCRI.
!        DUMP.
!     TEST THE USE OF HARDWARE CHARACTERS ON THE COM UNITS
!
   CALL MSET("HARD")
   CALL MSET("MEDI")
   CALL PLOT(0.0,0.0,-3)
   CALL PLOT(28.,0.0,2)
   CALL PLOT(28.,20.,2)
   CALL PLOT(0.,20.,2)
   CALL PLOT(0.,0.,2)
!
   Y=0.0
   DO I=1,64
      CALL MPSET('TSIZ',FLOAT(I))
      CALL SYMBOL(1.,Y,.2,'TEST @@@@@\\\\\ END ',999,0.,20)
      Y=Y+.31
   enddo
!CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
   CALL PLOT (0.0,0.0,999)
END PROGRAM QA7