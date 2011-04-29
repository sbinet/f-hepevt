      subroutine inihepevt
      implicit none
C...HEPEVT commonblock.
      integer nmxhep,nevhep, nhep,isthep,idhep,jmohep,jdahep
      PARAMETER (NMXHEP=4000)
      COMMON/HEPEVT/NEVHEP,NHEP,ISTHEP(NMXHEP),IDHEP(NMXHEP),
     &JMOHEP(2,NMXHEP),JDAHEP(2,NMXHEP),PHEP(5,NMXHEP),VHEP(4,NMXHEP)
      DOUBLE PRECISION PHEP,VHEP

      nevhep = 0
      nhep = 0
      isthep = 0
      idhep = 0
      jmohep = 0
      jdahep = 0
      phep = 0.
      vhep = 0.
      end
