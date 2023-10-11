 
 /*------------------------------------------------------------------------
    File        : FirstCustomerTest
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : rahulk
    Created     : Wed Oct 11 14:43:53 IST 2023
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING OpenEdge.Core.Assert FROM PROPATH.
USING sports.FirstCustomer FROM PROPATH.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS sports.FirstCustomerTest:
    
    /*------------------------------------------------------------------------------
            Purpose:                                                                        
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
   
    @Setup.
    METHOD PUBLIC VOID setUp(  ):
        RETURN.
    END METHOD.
    
    /*------------------------------------------------------------------------------
            Purpose:                                                                        
            Notes:                                                                        
    ------------------------------------------------------------------------------*/
    @Test. 
    METHOD PUBLIC VOID testGetName(  ):
        VAR CHAR custNameExpected.
        VAR CHAR custNameActual.
        VAR FirstCustomer firstCustomer.
        
        FIND FIRST Customer.
        custNameExpected = Customer.City.
        
        firstCustomer = NEW FirstCustomer().
        custNameActual = firstCustomer:getName().
        
        Assert:Equals(custNameExpected, custNameActual).
        RETURN.
    END METHOD.
    
    /*------------------------------------------------------------------------------
            Purpose:                                                                        
            Notes:                                                                        
    ------------------------------------------------------------------------------*/

    @TearDown.
    METHOD PUBLIC VOID tearDown(  ):
        RETURN.
    END METHOD.
     
END CLASS.