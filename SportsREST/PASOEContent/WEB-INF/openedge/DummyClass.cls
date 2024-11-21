 
/*------------------------------------------------------------------------
   File        : ClassA
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : rahulk
   Created     : Mon Oct 19 11:26:26 IST 2020
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS DummyClass:

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID meth1(  ):
        DISPLAY "Inside DummyClass - meth1".
        RETURN.

    END METHOD.

    METHOD PUBLIC VOID meth2(  ):
        DISPLAY "Inside DummyClass - meth1".
        RETURN.

    END METHOD.

END CLASS.