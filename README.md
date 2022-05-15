# MVT Cobol

This is the source for the COBOL compiler included with IBM OS/360.

According to [Wikipedia](https://en.wikipedia.org/wiki/OS/360_and_successors#MVT) this version of the OS is considered in the public domain.

The following source was extracted from a DASD volume provided by Jay Moseley. See http://www.jaymoseley.com/hercules/compilers/mvtsource.htm

The above webpage and DASD volume are included in this repository for future reference and use.

The code is written in assembler.

## Contents

The source datasets are:

* MVTSRC.CB545 - ALC source
* MVTSRC.LM546 - ALC source
* MVTSRC.COBOL.MACLIB - macros required to assemble the source
* MVTSRC.COBOL.CNTL - jobstreams to assemble, link, delink, and run a test compile
* MVTSRC.COBOL.LISTINGS - listings from the assemble and link jobs

## File extensions

The following extensions have been used for the source:

* MLC - Assembler source
* MAC - Assembler macro
* JCL - Job control language
* TXT - Assembly listings