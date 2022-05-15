//ASMCOBOL JOB (001),'ASSEMBLE COBOL',CLASS=A,MSGCLASS=X                00000100
//*                                                                     00000200
//RESETDS  EXEC PGM=RESETDS,REGION=128K                                 00000300
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00000400
//* CLEAR OUTPUT DATASETS                                             * 00000500
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00000600
//STEPLIB   DD DISP=SHR,DSN=MVTSRC.TOOLS.LOAD                           00000700
//RESET001  DD DISP=OLD,DSN=MVTSRC.COBOL.LISTINGS                       00000800
//RESET002  DD DISP=OLD,DSN=MVTSRC.COBOL.OBJECT                         00000900
//*                                                                     00001000
//ASMFC    PROC MEM='MISSING'                                           00001100
//ASM      EXEC PGM=IFOX00,REGION=128K,                                 00001200
//             PARM='LIST,DECK,NOOBJ,NOXREF'                            00001300
//SYSLIB   DD  DISP=SHR,DSN=MVTSRC.COBOL.MACLIB                         00001400
//         DD  DISP=SHR,DSN=MVTSRC.SYS1.MACLIB   USE MVT MACROS         00001500
//*         DD  DISP=SHR,DSN=SYS1.MACLIB          USE MVS3.8 MACROS     00001600
//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00001700
//SYSUT2   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00001800
//SYSUT3   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00001900
//SYSPRINT DD  DISP=MOD,DSN=MVTSRC.COBOL.LISTINGS(&MEM)                 00002000
//SYSPUNCH DD  DISP=MOD,DSN=MVTSRC.COBOL.OBJECT(&MEM)                   00002100
//SYSIN    DD  DISP=SHR,DSN=MVTSRC.CB545(&MEM)                          00002200
//         PEND                                                         00002300
//ASMFCL   PROC MEM='MISSING'                                           00002406
//ASM      EXEC PGM=IFOX00,REGION=1M,                                   00002506
//             PARM='LIST,DECK,NOOBJ,NOXREF'                            00002606
//SYSLIB   DD  DISP=SHR,DSN=MVTSRC.COBOL.MACLIB                         00002706
//         DD  DISP=SHR,DSN=MVTSRC.SYS1.MACLIB   USE MVT MACROS         00002806
//*         DD  DISP=SHR,DSN=SYS1.MACLIB          USE MVS3.8 MACROS     00002906
//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003006
//SYSUT2   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003106
//SYSUT3   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003206
//SYSPRINT DD  DISP=MOD,DSN=MVTSRC.COBOL.LISTINGS(&MEM)                 00003306
//SYSPUNCH DD  DISP=MOD,DSN=MVTSRC.COBOL.OBJECT(&MEM)                   00003406
//SYSIN    DD  DISP=SHR,DSN=MVTSRC.LM546(&MEM)                          00003506
//         PEND                                                         00003606
//IKFCBL00 EXEC ASMFC,MEM=IKFCBL00                                      00003706
//IKFCBL01 EXEC ASMFC,MEM=IKFCBL01                                      00003806
//IKFCBL1B EXEC ASMFC,MEM=IKFCBL1B                                      00003906
//IKFCBL10 EXEC ASMFC,MEM=IKFCBL10                                      00004006
//IKFCBL20 EXEC ASMFC,MEM=IKFCBL20                                      00004106
//IKFCBL30 EXEC ASMFC,MEM=IKFCBL30                                      00004206
//IKFCBL40 EXEC ASMFC,MEM=IKFCBL40                                      00004306
//IKFCBL50 EXEC ASMFC,MEM=IKFCBL50                                      00004406
//IKFCBL51 EXEC ASMFC,MEM=IKFCBL51                                      00004506
//IKFCBL6A EXEC ASMFC,MEM=IKFCBL6A                                      00004606
//IKFCBL60 EXEC ASMFC,MEM=IKFCBL60                                      00004706
//IKFCBL70 EXEC ASMFC,MEM=IKFCBL70                                      00004806
//*                                                                     00004906
//ILBOACP0 EXEC ASMFCL,MEM=ILBOACP0                                     00005006
//ILBOANE0 EXEC ASMFCL,MEM=ILBOANE0                                     00005106
//ILBOANF0 EXEC ASMFCL,MEM=ILBOANF0                                     00005206
//ILBOATB0 EXEC ASMFCL,MEM=ILBOATB0                                     00005306
//ILBOBID0 EXEC ASMFCL,MEM=ILBOBID0                                     00005406
//ILBOBIE0 EXEC ASMFCL,MEM=ILBOBIE0                                     00005506
//ILBOBII0 EXEC ASMFCL,MEM=ILBOBII0                                     00005606
//ILBOCKP0 EXEC ASMFCL,MEM=ILBOCKP0                                     00005706
//ILBOCLS0 EXEC ASMFCL,MEM=ILBOCLS0                                     00005806
//ILBODCI0 EXEC ASMFCL,MEM=ILBODCI0                                     00005906
//ILBODSP0 EXEC ASMFCL,MEM=ILBODSP0                                     00006006
//ILBODTE0 EXEC ASMFCL,MEM=ILBODTE0                                     00006106
//ILBOEFL0 EXEC ASMFCL,MEM=ILBOEFL0                                     00006206
//ILBOERR0 EXEC ASMFCL,MEM=ILBOERR0                                     00006306
//ILBOETB0 EXEC ASMFCL,MEM=ILBOETB0                                     00006406
//ILBOFPW0 EXEC ASMFCL,MEM=ILBOFPW0                                     00006506
//ILBOGPW0 EXEC ASMFCL,MEM=ILBOGPW0                                     00006606
//ILBOIDB0 EXEC ASMFCL,MEM=ILBOIDB0                                     00006706
//ILBOIDR0 EXEC ASMFCL,MEM=ILBOIDR0                                     00006806
//ILBOIDT0 EXEC ASMFCL,MEM=ILBOIDT0                                     00006906
//ILBOIFB0 EXEC ASMFCL,MEM=ILBOIFB0                                     00007006
//ILBOIFD0 EXEC ASMFCL,MEM=ILBOIFD0                                     00007106
//ILBOITB0 EXEC ASMFCL,MEM=ILBOITB0                                     00007206
//ILBOIVL0 EXEC ASMFCL,MEM=ILBOIVL0                                     00007306
//ILBOMVL0 EXEC ASMFCL,MEM=ILBOMVL0                                     00007406
//ILBOPTV0 EXEC ASMFCL,MEM=ILBOPTV0                                     00007506
//ILBOSAMR EXEC ASMFCL,MEM=ILBOSAMR                                     00007606
//ILBOSAM0 EXEC ASMFCL,MEM=ILBOSAM0                                     00007706
//ILBOSCH0 EXEC ASMFCL,MEM=ILBOSCH0                                     00007806
//ILBOSGM0 EXEC ASMFCL,MEM=ILBOSGM0                                     00007906
//ILBOSPA0 EXEC ASMFCL,MEM=ILBOSPA0                                     00008006
//ILBOSRT0 EXEC ASMFCL,MEM=ILBOSRT0                                     00008106
//ILBOSTI0 EXEC ASMFCL,MEM=ILBOSTI0                                     00008206
//ILBOSTP0 EXEC ASMFCL,MEM=ILBOSTP0                                     00008306
//ILBOTEF0 EXEC ASMFCL,MEM=ILBOTEF0                                     00008406
//ILBOTRN0 EXEC ASMFCL,MEM=ILBOTRN0                                     00008506
//ILBOUTB0 EXEC ASMFCL,MEM=ILBOUTB0                                     00008606
//ILBOVCO0 EXEC ASMFCL,MEM=ILBOVCO0                                     00008706
//ILBOVMO0 EXEC ASMFCL,MEM=ILBOVMO0                                     00008806
//ILBOVTR0 EXEC ASMFCL,MEM=ILBOVTR0                                     00008906
//ILBOWTB0 EXEC ASMFCL,MEM=ILBOWTB0                                     00009006
//ILBOXDI0 EXEC ASMFCL,MEM=ILBOXDI0                                     00009106
//ILBOXMU0 EXEC ASMFCL,MEM=ILBOXMU0                                     00009206
//ILBOXPR0 EXEC ASMFCL,MEM=ILBOXPR0                                     00009306
//                                                                      00009406
