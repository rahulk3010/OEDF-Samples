
/*------------------------------------------------------------------------
    File        : main
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : rahulk
    Created     : Wed Oct 11 14:27:04 IST 2023
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

USING sports.FirstCustomer FROM PROPATH.
USING avengers.FirstAvenger FROM PROPATH.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
VAR FirstCustomer firstCustomer = NEW FirstCustomer().
VAR FirstAvenger firstAvenger = NEW FirstAvenger().

MESSAGE firstCustomer:getName().
MESSAGE firstAvenger:getName().