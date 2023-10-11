 
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
USING avengers.FirstAvenger FROM PROPATH.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS avengers.FirstAvengerTest:
    
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
        VAR CHAR nameExpected.
        VAR CHAR nameActual.
        VAR FirstAvenger firstAvenger.
        
        FIND FIRST Avengers.
        nameExpected = Avengers.Name.
        
        firstAvenger = NEW FirstAvenger().
        nameActual = firstAvenger:getName().
        
        Assert:NotEmpty(nameActual).
        Assert:Equals(nameExpected, nameActual).
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