#!/usr/bin/env bash
export Z390_ROOT='../z390'

#set -e                # exit on all errors
cd "$(dirname $0)"    # set to this dir
cd ..                 # back one for project root

get_abs_fn() {
  # Get absolute folder name - required for syslib statements
  # $1 : relative filename
  echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
}

#syslib="SYSMAC(MVTSRC.COBOL.MACLIB+$(get_abs_fn ${Z390_ROOT}/mvs/maclib))"
syslib="SYSMAC(MVTSRC.COBOL.MACLIB+$(get_abs_fn ${Z390_ROOT}/mac))"

asmfc() {
  output_ext=('BAL' 'PRN' 'OBJ' 'ERR' 'STA')
  for item in "${output_ext[@]}"; do
      if [ -f "MVTSRC.CB545/$1.${item}" ]; then rm "MVTSRC.CB545/${1}.${item}"; fi
  done
  parms="LIST NOOBJ NOXREF"
  echo "${Z390_ROOT}/bash/mz390 MVTSRC.CB545/$1 ${syslib} ${parms}"
  ${Z390_ROOT}/bash/mz390 "MVTSRC.CB545/$1 ${syslib} ${parms}"
}

asmfcl() {
  output_ext=('BAL' 'PRN' 'OBJ' 'ERR' 'STA')
  for item in "${output_ext[@]}"; do
      if [ -f "MVTSRC.CB545/$1.${item}" ]; then rm "MVTSRC.CB545/${1}.${item}"; fi
  done
  parms="LIST NOOBJ NOXREF"
  echo "${Z390_ROOT}/bash/mz390 MVTSRC.LM546/$1 ${syslib} ${parms}"
  ${Z390_ROOT}/bash/mz390 "MVTSRC.LM546/$1 ${syslib} ${parms}"
}

# MVTSRC.CB545
asmfc IKFCBL00
asmfc IKFCBL01
asmfc IKFCBL1B
asmfc IKFCBL10
asmfc IKFCBL20
asmfc IKFCBL30
asmfc IKFCBL40
asmfc IKFCBL50
asmfc IKFCBL51
asmfc IKFCBL6A
asmfc IKFCBL60
asmfc IKFCBL70

#MVTSRC.LM546
asmfcl ILBOACP0
asmfcl ILBOANE0
asmfcl ILBOANF0
asmfcl ILBOATB0
asmfcl ILBOBID0
asmfcl ILBOBIE0
asmfcl ILBOBII0
asmfcl ILBOCKP0
asmfcl ILBOCLS0
asmfcl ILBODCI0
asmfcl ILBODSP0
asmfcl ILBODTE0
asmfcl ILBOEFL0
asmfcl ILBOERR0
asmfcl ILBOETB0
asmfcl ILBOFPW0
asmfcl ILBOGPW0
asmfcl ILBOIDB0
asmfcl ILBOIDR0
asmfcl ILBOIDT0
asmfcl ILBOIFB0
asmfcl ILBOIFD0
asmfcl ILBOITB0
asmfcl ILBOIVL0
asmfcl ILBOMVL0
asmfcl ILBOPTV0
asmfcl ILBOSAMR
asmfcl ILBOSAM0
asmfcl ILBOSCH0
asmfcl ILBOSGM0
asmfcl ILBOSPA0
asmfcl ILBOSRT0
asmfcl ILBOSTI0
asmfcl ILBOSTP0
asmfcl ILBOTEF0
asmfcl ILBOTRN0
asmfcl ILBOUTB0
asmfcl ILBOVCO0
asmfcl ILBOVMO0
asmfcl ILBOVTR0
asmfcl ILBOWTB0
asmfcl ILBOXDI0
asmfcl ILBOXMU0
asmfcl ILBOXPR0

#//SYSLIB   DD  DISP=SHR,DSN=MVTSRC.COBOL.MACLIB                         00001400
#//*         DD  DISP=SHR,DSN=SYS1.MACLIB          USE MVS3.8 MACROS     00001600
#//SYSIN    DD  DISP=SHR,DSN=MVTSRC.CB545(&MEM)                          00002200
#//         PEND                                                         00002300
#//ASMFCL   PROC MEM='MISSING'                                           00002406
#//ASM      EXEC PGM=IFOX00,REGION=1M,                                   00002506
#//             PARM='LIST,DECK,NOOBJ,NOXREF'                            00002606
#//SYSLIB   DD  DISP=SHR,DSN=MVTSRC.COBOL.MACLIB                         00002706
#//         DD  DISP=SHR,DSN=MVTSRC.SYS1.MACLIB   USE MVT MACROS         00002806
#//*         DD  DISP=SHR,DSN=SYS1.MACLIB          USE MVS3.8 MACROS     00002906
#//SYSUT1   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003006
#//SYSUT2   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003106
#//SYSUT3   DD  UNIT=SYSDA,SPACE=(TRK,(30,30))                           00003206
#//SYSPRINT DD  DISP=MOD,DSN=MVTSRC.COBOL.LISTINGS(&MEM)                 00003306
#//SYSPUNCH DD  DISP=MOD,DSN=MVTSRC.COBOL.OBJECT(&MEM)                   00003406
#//SYSIN    DD  DISP=SHR,DSN=MVTSRC.LM546(&MEM)                          00003506
#//         PEND                                                         00003606
#//IKFCBL00 EXEC ASMFC,MEM=IKFCBL00                                      00003706
#//IKFCBL01 EXEC ASMFC,MEM=IKFCBL01                                      00003806
#//IKFCBL1B EXEC ASMFC,MEM=IKFCBL1B                                      00003906
#//IKFCBL10 EXEC ASMFC,MEM=IKFCBL10                                      00004006
#//IKFCBL20 EXEC ASMFC,MEM=IKFCBL20                                      00004106
#//IKFCBL30 EXEC ASMFC,MEM=IKFCBL30                                      00004206
#//IKFCBL40 EXEC ASMFC,MEM=IKFCBL40                                      00004306
#//IKFCBL50 EXEC ASMFC,MEM=IKFCBL50                                      00004406
#//IKFCBL51 EXEC ASMFC,MEM=IKFCBL51                                      00004506
#//IKFCBL6A EXEC ASMFC,MEM=IKFCBL6A                                      00004606
#//IKFCBL60 EXEC ASMFC,MEM=IKFCBL60                                      00004706
#//IKFCBL70 EXEC ASMFC,MEM=IKFCBL70                                      00004806
#//*                                                                     00004906
#//ILBOACP0 EXEC ASMFCL,MEM=ILBOACP0                                     00005006
#//ILBOANE0 EXEC ASMFCL,MEM=ILBOANE0                                     00005106
#//ILBOANF0 EXEC ASMFCL,MEM=ILBOANF0                                     00005206
#//ILBOATB0 EXEC ASMFCL,MEM=ILBOATB0                                     00005306
#//ILBOBID0 EXEC ASMFCL,MEM=ILBOBID0                                     00005406
#//ILBOBIE0 EXEC ASMFCL,MEM=ILBOBIE0                                     00005506
#//ILBOBII0 EXEC ASMFCL,MEM=ILBOBII0                                     00005606
#//ILBOCKP0 EXEC ASMFCL,MEM=ILBOCKP0                                     00005706
#//ILBOCLS0 EXEC ASMFCL,MEM=ILBOCLS0                                     00005806
#//ILBODCI0 EXEC ASMFCL,MEM=ILBODCI0                                     00005906
#//ILBODSP0 EXEC ASMFCL,MEM=ILBODSP0                                     00006006
#//ILBODTE0 EXEC ASMFCL,MEM=ILBODTE0                                     00006106
#//ILBOEFL0 EXEC ASMFCL,MEM=ILBOEFL0                                     00006206
#//ILBOERR0 EXEC ASMFCL,MEM=ILBOERR0                                     00006306
#//ILBOETB0 EXEC ASMFCL,MEM=ILBOETB0                                     00006406
#//ILBOFPW0 EXEC ASMFCL,MEM=ILBOFPW0                                     00006506
#//ILBOGPW0 EXEC ASMFCL,MEM=ILBOGPW0                                     00006606
#//ILBOIDB0 EXEC ASMFCL,MEM=ILBOIDB0                                     00006706
#//ILBOIDR0 EXEC ASMFCL,MEM=ILBOIDR0                                     00006806
#//ILBOIDT0 EXEC ASMFCL,MEM=ILBOIDT0                                     00006906
#//ILBOIFB0 EXEC ASMFCL,MEM=ILBOIFB0                                     00007006
#//ILBOIFD0 EXEC ASMFCL,MEM=ILBOIFD0                                     00007106
#//ILBOITB0 EXEC ASMFCL,MEM=ILBOITB0                                     00007206
#//ILBOIVL0 EXEC ASMFCL,MEM=ILBOIVL0                                     00007306
#//ILBOMVL0 EXEC ASMFCL,MEM=ILBOMVL0                                     00007406
#//ILBOPTV0 EXEC ASMFCL,MEM=ILBOPTV0                                     00007506
#//ILBOSAMR EXEC ASMFCL,MEM=ILBOSAMR                                     00007606
#//ILBOSAM0 EXEC ASMFCL,MEM=ILBOSAM0                                     00007706
#//ILBOSCH0 EXEC ASMFCL,MEM=ILBOSCH0                                     00007806
#//ILBOSGM0 EXEC ASMFCL,MEM=ILBOSGM0                                     00007906
#//ILBOSPA0 EXEC ASMFCL,MEM=ILBOSPA0                                     00008006
#//ILBOSRT0 EXEC ASMFCL,MEM=ILBOSRT0                                     00008106
#//ILBOSTI0 EXEC ASMFCL,MEM=ILBOSTI0                                     00008206
#//ILBOSTP0 EXEC ASMFCL,MEM=ILBOSTP0                                     00008306
#//ILBOTEF0 EXEC ASMFCL,MEM=ILBOTEF0                                     00008406
#//ILBOTRN0 EXEC ASMFCL,MEM=ILBOTRN0                                     00008506
#//ILBOUTB0 EXEC ASMFCL,MEM=ILBOUTB0                                     00008606
#//ILBOVCO0 EXEC ASMFCL,MEM=ILBOVCO0                                     00008706
#//ILBOVMO0 EXEC ASMFCL,MEM=ILBOVMO0                                     00008806
#//ILBOVTR0 EXEC ASMFCL,MEM=ILBOVTR0                                     00008906
#//ILBOWTB0 EXEC ASMFCL,MEM=ILBOWTB0                                     00009006
#//ILBOXDI0 EXEC ASMFCL,MEM=ILBOXDI0                                     00009106
#//ILBOXMU0 EXEC ASMFCL,MEM=ILBOXMU0                                     00009206
#//ILBOXPR0 EXEC ASMFCL,MEM=ILBOXPR0                                     00009306
#//                                                                      00009406
#
#
