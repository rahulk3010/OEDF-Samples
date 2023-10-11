 
 /*------------------------------------------------------------------------
    File        : FirstCustomer
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : rahulk
    Created     : Wed Oct 11 14:25:45 IST 2023
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS sports.FirstCustomer: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC CHARACTER getName(  ):
        FIND FIRST Customer.
        RETURN Customer.Name.
    END METHOD.

END CLASS.