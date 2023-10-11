 
 /*------------------------------------------------------------------------
    File        : FirstAvenger
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : rahulk
    Created     : Wed Oct 11 17:53:21 IST 2023
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS avengers.FirstAvenger:

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC CHARACTER getName(  ):
        FIND FIRST Avengers.
        RETURN Avengers.Name.
    END METHOD.

END CLASS.