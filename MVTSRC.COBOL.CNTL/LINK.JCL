//LINKCOB  JOB (001),'LINK COBOL',CLASS=A,MSGCLASS=X                    00010000
//*                                                                     00020000
//RESETDS  EXEC PGM=RESETDS,REGION=128K                                 00030000
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00040000
//* CLEAR OUTPUT DATASETS                                             * 00050000
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00060000
//STEPLIB   DD DISP=SHR,DSN=MVTSRC.TOOLS.LOAD                           00070000
//RESET001  DD DISP=OLD,DSN=MVTSRC.COBOL.LOAD                           00080000
//RESET002  DD DISP=OLD,DSN=MVTSRC.COBLIB                               00090000
//*                                                                     00100000
//IEHPROGM EXEC PGM=IEHPROGM                                            00110000
//SYSPRINT  DD DUMMY                                                    00120000
//DISK      DD UNIT=SYSDA,VOL=SER=MVTSRC,DISP=OLD                       00130000
//SYSIN     DD *                                                        00140000
  SCRATCH DSNAME=MVTSRC.COBOL.LISTINGS,VOL=SYSDA=MVTSRC,MEMBER=LINK     00150000
  SCRATCH DSNAME=MVTSRC.COBOL.LISTINGS,VOL=SYSDA=MVTSRC,MEMBER=LINKL    00160000
//*                                                                     00170000
//LINK     EXEC PGM=IEWL,REGION=512K,PARM='LET,LIST,XREF,NCAL'          00180000
//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(60,30))                           00190000
//SYSPRINT DD  DISP=(NEW,PASS),DSN=&&LNKLST,                            00200000
//             UNIT=SYSDA,SPACE=(TRK,(60,30)),                          00210000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=1210)                   00220000
//SYSPUNCH DD  DISP=SHR,DSN=MVTSRC.COBOL.OBJECT                         00230000
//SYSLMOD  DD  DISP=MOD,DSN=MVTSRC.COBOL.LOAD                           00240000
//SYSLIN   DD  *                                                        00250000
  INCLUDE SYSPUNCH(IKFCBL00)                                            00260000
  NAME IKFCBL00                                                         00270000
  INCLUDE SYSPUNCH(IKFCBL01)                                            00280000
  NAME IKFCBL01                                                         00290000
  INCLUDE SYSPUNCH(IKFCBL1B)                                            00300000
  NAME IKFCBL1B                                                         00310000
  INCLUDE SYSPUNCH(IKFCBL10)                                            00320000
  NAME IKFCBL10                                                         00330000
  INCLUDE SYSPUNCH(IKFCBL20)                                            00340000
  NAME IKFCBL20                                                         00350000
  INCLUDE SYSPUNCH(IKFCBL30)                                            00360000
  NAME IKFCBL30                                                         00370000
  INCLUDE SYSPUNCH(IKFCBL40)                                            00380000
  NAME IKFCBL40                                                         00390000
  INCLUDE SYSPUNCH(IKFCBL50)                                            00400000
  NAME IKFCBL50                                                         00410000
  INCLUDE SYSPUNCH(IKFCBL51)                                            00420000
  NAME IKFCBL51                                                         00430000
  INCLUDE SYSPUNCH(IKFCBL6A)                                            00440000
  NAME IKFCBL6A                                                         00450000
  INCLUDE SYSPUNCH(IKFCBL60)                                            00460000
  NAME IKFCBL60                                                         00470000
  INCLUDE SYSPUNCH(IKFCBL70)                                            00480000
  NAME IKFCBL70                                                         00490000
//*                                                                     00500000
//GENER    EXEC PGM=IEBGENER                                            00510000
//SYSIN    DD  DUMMY                                                    00520000
//SYSPRINT DD  DUMMY                                                    00530000
//SYSUT1   DD  DSN=&&LNKLST,DISP=(OLD,DELETE),                          00540000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=1210)                   00550000
//SYSUT2   DD  DISP=MOD,DSN=MVTSRC.COBOL.LISTINGS(LINK),                00560000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=9438)                   00570000
//*                                                                     00580000
//LINK     EXEC PGM=IEWL,REGION=1024K,                                  00590000
//             PARM='LET,LIST,XREF,NCAL,SIZE=(600K,64K),DC'             00600000
//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(60,30))                           00610000
//SYSPRINT DD  DISP=(NEW,PASS),DSN=&&LNKLST,                            00620000
//             UNIT=SYSDA,SPACE=(TRK,(60,30)),                          00630000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=1210)                   00640000
//SYSPUNCH DD  DISP=SHR,DSN=MVTSRC.COBOL.OBJECT                         00650000
//SYSLMOD  DD  DISP=MOD,DSN=MVTSRC.COBLIB                               00660000
//SYSLIN   DD  *                                                        00670000
  ENTRY ILBOACP0                                                        00680000
    INCLUDE SYSPUNCH(ILBOACP0)                                          00690000
    NAME ILBOACP0(R)                                                    00700000
  ENTRY ILBOANE0                                                        00710000
    INCLUDE SYSPUNCH(ILBOANE0)                                          00720000
    NAME ILBOANE0(R)                                                    00730000
  ENTRY ILBOANF0                                                        00740000
    INCLUDE SYSPUNCH(ILBOANF0)                                          00750000
    NAME ILBOANF0(R)                                                    00760000
  ENTRY ILBOATB0                                                        00770000
    INCLUDE SYSPUNCH(ILBOATB0)                                          00780000
    NAME ILBOATB0(R)                                                    00790000
  ENTRY ILBOBID0                                                        00800000
    ALIAS ILBOBID1                                                      00810000
    ALIAS ILBOBID2                                                      00820000
    INCLUDE SYSPUNCH(ILBOBID0)                                          00830000
    NAME ILBOBID0(R)                                                    00840000
  ENTRY ILBOBIE0                                                        00850000
    ALIAS ILBOBIE1                                                      00860000
    ALIAS ILBOBIE2                                                      00870000
    INCLUDE SYSPUNCH(ILBOBIE0)                                          00880000
    NAME ILBOBIE0(R)                                                    00890000
  ENTRY ILBOBII0                                                        00900000
    ALIAS ILBOBII1                                                      00910000
    ALIAS ILBOBII2                                                      00920000
    INCLUDE SYSPUNCH(ILBOBII0)                                          00930000
    NAME ILBOBII0(R)                                                    00940000
  ENTRY ILBOCKP0                                                        00950000
    INCLUDE SYSPUNCH(ILBOCKP0)                                          00960000
    NAME ILBOCKP0(R)                                                    00970000
  ENTRY ILBOCLS0                                                        00980000
    INCLUDE SYSPUNCH(ILBOCLS0)                                          00990000
    NAME ILBOCLS0(R)                                                    01000000
  ENTRY ILBODCI0        EXPECT IEW0461: ILBOIDB1,ILBOIDB0,ILBOBII2      01010000
    ALIAS ILBODCI1                                                      01020000
    INCLUDE SYSPUNCH(ILBODCI0)                                          01030000
    NAME ILBODCI0(R)                                                    01040000
  ENTRY ILBODSP0                                                        01050000
    INCLUDE SYSPUNCH(ILBODSP0)                                          01060000
    NAME ILBODSP0(R)                                                    01070000
  ENTRY ILBODTE0                                                        01080000
    ALIAS ILBODTE1                                                      01090000
    INCLUDE SYSPUNCH(ILBODTE0)                                          01100000
    NAME ILBODTE0(R)                                                    01110000
  ENTRY ILBOEFL0        EXPECT IEW0461: ILBOIDB1,ILBOBII2               01120000
    ALIAS ILBOEFL1                                                      01130000
    ALIAS ILBOEFL2                                                      01140000
    INCLUDE SYSPUNCH(ILBOEFL0)                                          01150000
    NAME ILBOEFL0(R)                                                    01160000
  ENTRY ILBOERR0                                                        01170000
    ALIAS ILBOERR1                                                      01180000
    ALIAS ILBOERR2                                                      01190000
    ALIAS ILBOERR3                                                      01200000
    ALIAS ILBOERR4                                                      01210000
    ALIAS ILBOERR5                                                      01220000
    ALIAS ILBOERR6                                                      01230000
    INCLUDE SYSPUNCH(ILBOERR0)                                          01240000
    NAME ILBOERR0(R)                                                    01250000
  ENTRY ILBOETB0                                                        01260000
    INCLUDE SYSPUNCH(ILBOETB0)                                          01270000
    NAME ILBOETB0(R)                                                    01280000
  ENTRY ILBOFPW0                                                        01290000
    INCLUDE SYSPUNCH(ILBOFPW0)                                          01300000
    NAME ILBOFPW0(R)                                                    01310000
  ENTRY ILBOGPW0                                                        01320000
    INCLUDE SYSPUNCH(ILBOGPW0)                                          01330000
    NAME ILBOGPW0(R)                                                    01340000
  ENTRY ILBOIDB0                                                        01350000
    ALIAS ILBOIDB1                                                      01360000
    INCLUDE SYSPUNCH(ILBOIDB0)                                          01370000
    NAME ILBOIDB0(R)                                                    01380000
  ENTRY ILBOIDR0                                                        01390000
    INCLUDE SYSPUNCH(ILBOIDR0)                                          01400000
    NAME ILBOIDR0(R)                                                    01410000
  ENTRY ILBOIDT0                                                        01420000
    INCLUDE SYSPUNCH(ILBOIDT0)                                          01430000
    NAME ILBOIDT0(R)                                                    01440000
  ENTRY ILBOIFB0                                                        01450000
    ALIAS ILBOIFB1                                                      01460000
    ALIAS ILBOIFB2                                                      01470000
    INCLUDE SYSPUNCH(ILBOIFB0)                                          01480000
    NAME ILBOIFB0(R)                                                    01490000
  ENTRY ILBOIFD0        EXPECT IEW0461: ILBOIFB0,ILBOBID1               01500000
    ALIAS ILBOIFD1                                                      01510000
    INCLUDE SYSPUNCH(ILBOIFD0)                                          01520000
    NAME ILBOIFD0(R)                                                    01530000
  ENTRY ILBOITB0                                                        01540000
    INCLUDE SYSPUNCH(ILBOITB0)                                          01550000
    NAME ILBOITB0(R)                                                    01560000
  ENTRY ILBOIVL0                                                        01570000
    INCLUDE SYSPUNCH(ILBOIVL0)                                          01580000
    NAME ILBOIVL0(R)                                                    01590000
  ENTRY ILBOMVL0                                                        01600000
    INCLUDE SYSPUNCH(ILBOMVL0)                                          01610000
    NAME ILBOMVL0(R)                                                    01620000
  ENTRY ILBOPTV0                                                        01630000
    ALIAS ILBOPTV1                                                      01640000
    ALIAS ILBOPTV2                                                      01650000
    INCLUDE SYSPUNCH(ILBOPTV0)                                          01660000
    NAME ILBOPTV0(R)                                                    01670000
  ENTRY ILBOSAMR                                                        01680000
    INCLUDE SYSPUNCH(ILBOSAMR)                                          01690000
    NAME ILBOSAMR(R)                                                    01700000
  ENTRY ILBOSAM0                                                        01710000
    INCLUDE SYSPUNCH(ILBOSAM0)                                          01720000
    NAME ILBOSAM0(R)                                                    01730000
  ENTRY ILBOSCH0                                                        01740000
    INCLUDE SYSPUNCH(ILBOSCH0)                                          01750000
    NAME ILBOSCH0(R)                                                    01760000
  ENTRY ILBOSGM0                                                        01770000
    ALIAS ILBOSGM1                                                      01780000
    ALIAS ILBOSGM2                                                      01790000
    INCLUDE SYSPUNCH(ILBOSGM0)                                          01800000
    NAME ILBOSGM0(R)                                                    01810000
  ENTRY ILBOSPA0                                                        01820000
    INCLUDE SYSPUNCH(ILBOSPA0)                                          01830000
    NAME ILBOSPA0(R)                                                    01840000
  ENTRY ILBOSRT0                                                        01850000
    INCLUDE SYSPUNCH(ILBOSRT0)                                          01860000
    NAME ILBOSRT0(R)                                                    01870000
  ENTRY ILBOSTI0                                                        01880000
    INCLUDE SYSPUNCH(ILBOSTI0)                                          01890000
    NAME ILBOSTI0(R)                                                    01900000
  ENTRY ILBOSTP0                                                        01910000
    ALIAS ILBOSTP1                                                      01920000
    INCLUDE SYSPUNCH(ILBOSTP0)                                          01930000
    NAME ILBOSTP0(R)                                                    01940000
  ENTRY ILBOTEF0        EXPECT IEW0461: ILBOBIE1,ILBOIFB2               01950000
    ALIAS ILBOTEF1                                                      01960000
    ALIAS ILBOTEF2                                                      01970000
    ALIAS ILBOTEF3                                                      01980000
    INCLUDE SYSPUNCH(ILBOTEF0)                                          01990000
    NAME ILBOTEF0(R)                                                    02000000
  ENTRY ILBOTRN0                                                        02010000
    INCLUDE SYSPUNCH(ILBOTRN0)                                          02020000
    NAME ILBOTRN0(R)                                                    02030000
  ENTRY ILBOUTB0                                                        02040000
     INCLUDE SYSPUNCH(ILBOUTB0)                                         02050000
     NAME ILBOUTB0(R)                                                   02060000
  ENTRY ILBOVCO0                                                        02070000
     INCLUDE SYSPUNCH(ILBOVCO0)                                         02080000
     NAME ILBOVCO0(R)                                                   02090000
  ENTRY ILBOVMO0                                                        02100000
     ALIAS ILBOVMO1                                                     02110000
     INCLUDE SYSPUNCH(ILBOVMO0)                                         02120000
     NAME ILBOVMO0(R)                                                   02130000
  ENTRY ILBOVTR0                                                        02140000
     INCLUDE SYSPUNCH(ILBOVTR0)                                         02150000
     NAME ILBOVTR0(R)                                                   02160000
  ENTRY ILBOWTB0                                                        02170000
     INCLUDE SYSPUNCH(ILBOWTB0)                                         02180000
     NAME ILBOWTB0(R)                                                   02190000
  ENTRY ILBOXDI0                                                        02200000
     INCLUDE SYSPUNCH(ILBOXDI0)                                         02210000
     NAME ILBOXDI0(R)                                                   02220000
  ENTRY ILBOXMU0                                                        02230000
     INCLUDE SYSPUNCH(ILBOXMU0)                                         02240000
     NAME ILBOXMU0(R)                                                   02250000
  ENTRY ILBOXPR0        EXPECT IEW0461: ILBOXMU0,ILBOXDI0               02260000
     INCLUDE SYSPUNCH(ILBOXPR0)                                         02270000
     NAME ILBOXPR0(R)                                                   02280000
//*                                                                     02290000
//GENER    EXEC PGM=IEBGENER                                            02300000
//SYSIN    DD  DUMMY                                                    02310000
//SYSPRINT DD  DUMMY                                                    02320000
//SYSUT1   DD  DSN=&&LNKLST,DISP=OLD,                                   02330000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=1210)                   02340000
//SYSUT2   DD  DISP=MOD,DSN=MVTSRC.COBOL.LISTINGS(LINKL),               02350000
//             DCB=(RECFM=FBA,LRECL=121,BLKSIZE=9438)                   02360000
//                                                                      02370000
