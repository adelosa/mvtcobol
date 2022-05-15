//DELINK   JOB (1),'DELINK COBOL',CLASS=A,MSGCLASS=X                    00000100
//*                                                                     00000200
//RESETDS  EXEC PGM=RESETDS,REGION=128K                                 00000300
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00000400
//* CLEAR OUTPUT DATASETS                                             * 00000500
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00000600
//STEPLIB   DD DISP=SHR,DSN=MVTSRC.TOOLS.LOAD                           00000700
//RESET001  DD DISP=OLD,DSN=MVTSRC.COBOL.XOBJECT                        00000800
//*                                                                     00000900
//DELINK   PROC M=MISSING                                               00001000
//DELINK0  EXEC PGM=DELINK0,REGION=1M                                   00001100
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00001200
//* DELINK LOAD MODULE - FROM CBT249 FILE #316                        * 00001300
//* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 00001400
//STEPLIB   DD DISP=SHR,DSN=MVTSRC.TOOLS.LOAD                           00001500
//SYSPRINT  DD SYSOUT=*                               OUTPUT MESSAGES   00001601
//SYSPUNCH  DD DISP=MOD,DSN=MVTSRC.COBOL.XOBJECT(&M), OUTPUT OBJCT DECK 00001701
//             DCB=(RECFM=FB,LRECL=80,BLKSIZE=3120)                     00001801
//SYSLIB    DD DISP=SHR,DSN=MVTSRC.SYS1.LINKLIB       INPUT LIBRARY     00001901
//          DD DISP=SHR,DSN=MVTSRC.SYS1.COBLIB                          00002002
//SYSIN     DD DDNAME=SYSIN                           INPUT CNTROL CARD 00002101
//          PEND                                                        00002200
//IKFCBL00  EXEC DELINK,M=IKFCBL00                                      00002300
//SYSIN     DD *                                                        00002400
 IKFCBL00 IKFCBL00                                                      00002500
//IKFCBL01  EXEC DELINK,M=IKFCBL01                                      00002601
//SYSIN     DD *                                                        00002701
 IKFCBL01 IKFCBL01                                                      00002801
//IKFCBL1B  EXEC DELINK,M=IKFCBL1B                                      00002901
//SYSIN     DD *                                                        00003001
 IKFCBL1B SDDEF1                                                        00003103
//IKFCBL10  EXEC DELINK,M=IKFCBL10                                      00003201
//SYSIN     DD *                                                        00003301
 IKFCBL10 IKF101                                                        00003403
//IKFCBL20  EXEC DELINK,M=IKFCBL20                                      00003501
//SYSIN     DD *                                                        00003601
 IKFCBL20 IKF200                                                        00003703
//IKFCBL30  EXEC DELINK,M=IKFCBL30                                      00003801
//SYSIN     DD *                                                        00003901
 IKFCBL30 IKF301                                                        00004003
//IKFCBL40  EXEC DELINK,M=IKFCBL40                                      00004101
//SYSIN     DD *                                                        00004201
 IKFCBL40 IKF40A                                                        00004303
//IKFCBL50  EXEC DELINK,M=IKFCBL50                                      00004401
//SYSIN     DD *                                                        00004501
 IKFCBL50 IKF501                                                        00004603
//IKFCBL51  EXEC DELINK,M=IKFCBL51                                      00004701
//SYSIN     DD *                                                        00004801
 IKFCBL51 IKF501                                                        00004903
//IKFCBL6A  EXEC DELINK,M=IKFCBL6A                                      00005001
//SYSIN     DD *                                                        00005101
 IKFCBL6A IKF6A01                                                       00005203
//IKFCBL60  EXEC DELINK,M=IKFCBL60                                      00005301
//SYSIN     DD *                                                        00005401
 IKFCBL60 IKF601                                                        00005503
//IKFCBL70  EXEC DELINK,M=IKFCBL70                                      00005601
//SYSIN     DD *                                                        00005701
 IKFCBL70 IKF701                                                        00005803
//ILBOACP0  EXEC DELINK,M=ILBOACP0                                      00005902
//SYSIN     DD *                                                        00006002
 ILBOACP0 ILBOACP0                                                      00006102
//ILBOANE0  EXEC DELINK,M=ILBOANE0                                      00006202
//SYSIN     DD *                                                        00006302
 ILBOANE0 ILBOANE0                                                      00006402
//ILBOANF0  EXEC DELINK,M=ILBOANF0                                      00006502
//SYSIN     DD *                                                        00006602
 ILBOANF0 ILBOANF0                                                      00006702
//ILBOATB0  EXEC DELINK,M=ILBOATB0                                      00006802
//SYSIN     DD *                                                        00006902
 ILBOATB0 ILBOATB0                                                      00007002
//ILBOBID0  EXEC DELINK,M=ILBOBID0                                      00007102
//SYSIN     DD *                                                        00007202
 ILBOBID0 ILBOBID0                                                      00007302
//ILBOBIE0  EXEC DELINK,M=ILBOBIE0                                      00007402
//SYSIN     DD *                                                        00007502
 ILBOBIE0 ILBOBIE0                                                      00007602
//ILBOBII0  EXEC DELINK,M=ILBOBII0                                      00007702
//SYSIN     DD *                                                        00007802
 ILBOBII0 ILBOBII0                                                      00007902
//ILBOCKP0  EXEC DELINK,M=ILBOCKP0                                      00008002
//SYSIN     DD *                                                        00008102
 ILBOCKP0 ILBOCKP0                                                      00008202
//ILBOCLS0  EXEC DELINK,M=ILBOCLS0                                      00008302
//SYSIN     DD *                                                        00008402
 ILBOCLS0 ILBOCLS0                                                      00008502
//ILBODCI0  EXEC DELINK,M=ILBODCI0                                      00008602
//SYSIN     DD *                                                        00008702
 ILBODCI0 ILBODCI0                                                      00008802
//ILBODSP0  EXEC DELINK,M=ILBODSP0                                      00008902
//SYSIN     DD *                                                        00009002
 ILBODSP0 ILBODSP0                                                      00009102
//ILBODTE0  EXEC DELINK,M=ILBODTE0                                      00009202
//SYSIN     DD *                                                        00009302
 ILBODTE0 ILBODTE0                                                      00009402
//ILBOEFL0  EXEC DELINK,M=ILBOEFL0                                      00009502
//SYSIN     DD *                                                        00009602
 ILBOEFL0 ILBOEFL0                                                      00009702
//ILBOERR0  EXEC DELINK,M=ILBOERR0                                      00009802
//SYSIN     DD *                                                        00009902
 ILBOERR0 ILBOERR0                                                      00010002
//ILBOETB0  EXEC DELINK,M=ILBOETB0                                      00010102
//SYSIN     DD *                                                        00010202
 ILBOETB0 ILBOETB0                                                      00010302
//ILBOFPW0  EXEC DELINK,M=ILBOFPW0                                      00010402
//SYSIN     DD *                                                        00010502
 ILBOFPW0 ILBOFPW0                                                      00010602
//ILBOGPW0  EXEC DELINK,M=ILBOGPW0                                      00010702
//SYSIN     DD *                                                        00010802
 ILBOGPW0 ILBOGPW0                                                      00010902
//ILBOIDB0  EXEC DELINK,M=ILBOIDB0                                      00011002
//SYSIN     DD *                                                        00011102
 ILBOIDB0 ILBOIDB0                                                      00011202
//ILBOIDR0  EXEC DELINK,M=ILBOIDR0                                      00011302
//SYSIN     DD *                                                        00011402
 ILBOIDR0 ILBOIDR0                                                      00011502
//ILBOIDT0  EXEC DELINK,M=ILBOIDT0                                      00011602
//SYSIN     DD *                                                        00011702
 ILBOIDT0 ILBOIDT0                                                      00011802
//ILBOIFB0  EXEC DELINK,M=ILBOIFB0                                      00011902
//SYSIN     DD *                                                        00012002
 ILBOIFB0 ILBOIFB0                                                      00012102
//ILBOIFD0  EXEC DELINK,M=ILBOIFD0                                      00012202
//SYSIN     DD *                                                        00012302
 ILBOIFD0 ILBOIFD0                                                      00012402
//ILBOITB0  EXEC DELINK,M=ILBOITB0                                      00012502
//SYSIN     DD *                                                        00012602
 ILBOITB0 ILBOITB0                                                      00012702
//ILBOIVL0  EXEC DELINK,M=ILBOIVL0                                      00012802
//SYSIN     DD *                                                        00012902
 ILBOIVL0 ILBOIVL0                                                      00013002
//ILBOMVL0  EXEC DELINK,M=ILBOMVL0                                      00013102
//SYSIN     DD *                                                        00013202
 ILBOMVL0 ILBOMVL0                                                      00013302
//ILBOPTV0  EXEC DELINK,M=ILBOPTV0                                      00013402
//SYSIN     DD *                                                        00013502
 ILBOPTV0 ILBOPTV0                                                      00013602
//ILBOSAM0  EXEC DELINK,M=ILBOSAM0                                      00013702
//SYSIN     DD *                                                        00013802
 ILBOSAM0 ILBOSAM0                                                      00013902
//ILBOSAMR  EXEC DELINK,M=ILBOSAMR                                      00014002
//SYSIN     DD *                                                        00014102
 ILBOSAMR ILBOSAMR                                                      00014202
//ILBOSCH0  EXEC DELINK,M=ILBOSCH0                                      00014302
//SYSIN     DD *                                                        00014402
 ILBOSCH0 ILBOSCH0                                                      00014502
//ILBOSGM0  EXEC DELINK,M=ILBOSGM0                                      00014602
//SYSIN     DD *                                                        00014702
 ILBOSGM0 ILBOSGM0                                                      00014802
//ILBOSPA0  EXEC DELINK,M=ILBOSPA0                                      00014902
//SYSIN     DD *                                                        00015002
 ILBOSPA0 ILBOSPA0                                                      00015102
//ILBOSRT0  EXEC DELINK,M=ILBOSRT0                                      00015202
//SYSIN     DD *                                                        00015302
 ILBOSRT0 ILBOSRT0                                                      00015402
//ILBOSTI0  EXEC DELINK,M=ILBOSTI0                                      00015502
//SYSIN     DD *                                                        00015602
 ILBOSTI0 ILBOSTI0                                                      00015702
//ILBOSTP0  EXEC DELINK,M=ILBOSTP0                                      00015802
//SYSIN     DD *                                                        00015902
 ILBOSTP0 ILBOSTP0                                                      00016002
//ILBOTEF0  EXEC DELINK,M=ILBOTEF0                                      00016102
//SYSIN     DD *                                                        00016202
 ILBOTEF0 ILBOTEF0                                                      00016302
//ILBOTRN0  EXEC DELINK,M=ILBOTRN0                                      00016402
//SYSIN     DD *                                                        00016502
 ILBOTRN0 ILBOTRN0                                                      00016602
//ILBOUTB0  EXEC DELINK,M=ILBOUTB0                                      00016702
//SYSIN     DD *                                                        00016802
 ILBOUTB0 ILBOUTB0                                                      00016902
//ILBOVCO0  EXEC DELINK,M=ILBOVCO0                                      00017002
//SYSIN     DD *                                                        00017102
 ILBOVCO0 ILBOVCO0                                                      00017202
//ILBOVMO0  EXEC DELINK,M=ILBOVMO0                                      00017302
//SYSIN     DD *                                                        00017402
 ILBOVMO0 ILBOVMO0                                                      00017502
//ILBOVTR0  EXEC DELINK,M=ILBOVTR0                                      00017602
//SYSIN     DD *                                                        00017702
 ILBOVTR0 ILBOVTR0                                                      00017802
//ILBOWTB0  EXEC DELINK,M=ILBOWTB0                                      00017902
//SYSIN     DD *                                                        00018002
 ILBOWTB0 ILBOWTB0                                                      00018102
//ILBOXDI0  EXEC DELINK,M=ILBOXDI0                                      00018202
//SYSIN     DD *                                                        00018302
 ILBOXDI0 ILBOXDI0                                                      00018402
//ILBOXMU0  EXEC DELINK,M=ILBOXMU0                                      00018502
//SYSIN     DD *                                                        00018602
 ILBOXMU0 ILBOXMU0                                                      00018702
//ILBOXPR0  EXEC DELINK,M=ILBOXPR0                                      00018802
//SYSIN     DD *                                                        00018902
 ILBOXPR0 ILBOXPR0                                                      00019002
//                                                                      00019101
