//COBUCLG  JOB (001),'COBOL TEST COMPILE',                              00000102
//             CLASS=A,MSGCLASS=X,MSGLEVEL=(1,1)                        00000202
//COB      EXEC PGM=IKFCBL00,REGION=4096K,                              00000302
//             PARM='LOAD,SUPMAP,SIZE=2048K,BUF=1024K'                  00000402
//*STEPLIB   DD DSN=SYSC.LINKLIB,DISP=SHR         KNOWN COMPILER        00000502
//STEPLIB   DD DSN=MVTSRC.COBOL.LOAD,DISP=SHR    BUILT COMPILER         00000602
//SYSPRINT  DD SYSOUT=*                                                 00000702
//SYSUT1    DD UNIT=SYSDA,SPACE=(460,(700,100))                         00000802
//SYSUT2    DD UNIT=SYSDA,SPACE=(460,(700,100))                         00000902
//SYSUT3    DD UNIT=SYSDA,SPACE=(460,(700,100))                         00001002
//SYSUT4    DD UNIT=SYSDA,SPACE=(460,(700,100))                         00001102
//SYSLIN    DD DSN=&LOADSET,DISP=(NEW,PASS),UNIT=SYSDA,                 00001202
//             SPACE=(80,(500,100))                                     00001302
//SYSIN     DD *                                                        00001402
  001  IDENTIFICATION DIVISION.                                         00001502
  002  PROGRAM-ID.  'HELLO'.                                            00001602
  003  ENVIRONMENT DIVISION.                                            00001702
  004  CONFIGURATION SECTION.                                           00001802
  005  SOURCE-COMPUTER.  IBM-360.                                       00001902
  006  OBJECT-COMPUTER.  IBM-360.                                       00002002
  0065 SPECIAL-NAMES.                                                   00002102
  0066     CONSOLE IS CNSL.                                             00002202
  007  DATA DIVISION.                                                   00002302
  008  WORKING-STORAGE SECTION.                                         00002402
  009  77  HELLO-CONST   PIC X(12) VALUE 'HELLO, WORLD'.                00002500
  075  PROCEDURE DIVISION.                                              00002600
  090  000-DISPLAY.                                                     00002700
  100      DISPLAY HELLO-CONST UPON CNSL.                               00002800
  110      STOP RUN.                                                    00002900
//LKED      EXEC PGM=IEWL,COND=(5,LT,COB),REGION=96K,                   00003000
//             PARM='LIST,XREF,LET'                                     00003100
//SYSLIN    DD DSN=&LOADSET,DISP=(OLD,DELETE)                           00003200
//*SYSLIB    DD DSN=SYSC.COBLIB,DISP=SHR          KNOWN LIBRARY         00003302
//SYSLIB    DD DSN=MVTSRC.COBLIB,DISP=SHR        BUILT LIBRARY          00003402
//SYSLMOD   DD DSN=&GODATA(RUN),DISP=(NEW,PASS),UNIT=SYSDA,             00003500
//             SPACE=(1024,(50,20,1))                                   00003600
//SYSLIB    DD DSN=SYSC.COBLIB,DISP=SHR                                 00003700
//SYSUT1    DD UNIT=SYSDA,SPACE=(1024,(50,20))                          00003800
//SYSPRINT  DD SYSOUT=*                                                 00003900
//GO       EXEC PGM=*.LKED.SYSLMOD,COND=((5,LT,COB),(5,LT,LKED))        00004000
//SYSPRINT  DD SYSOUT=*                                                 00004100
//                                                                      00004200
