*** Settings ***
## Variable Scope
# Global - Acess to the entirely script and keywords, if is going to be used to other file, must be called by Resource  ${UPPER_CASE}
# Suite - Acess from tests on suite
# Test Case - Only Acessible inside the test case where it was defined  ${lower-case}
# Keyword - Only accessible with that keyword   ${lower-case}

*** Variables ***
# Creating Global variables, SetVariable is not used here
${MY_SCALAR_VARIABLE} =     Hello there                                                     # Scalar variable - Defines the variable with a SINGLE VALUE
@{MY_LIST_VARIABLE} =       Hello there     This is value 2     I am item 3                 # List variable - Defines the variable with a MULTIPLE VALUES
# Set Variable and Create List are Keywords, they do not work on Variables section
*** Test Cases ***
Variable Demonstration
        Log     ${MY_SCALAR_VARIABLE}                                                   # Return the variable info
Variable Demonstration 2
        ${my_scalar_variable} =  Set Variable  Something else                           # Scalar variable - Other way to defines the variable with a SINGLE VALUE
        Log     ${my_scalar_variable}
Variable Demonstration 3
        Log     ${MY_LIST_VARIABLE}[0]                                                  # The index really need to be together to the variable name
        Log     ${MY_LIST_VARIABLE}[1]
Variable Demonstration 4
        ${my_list_variable} =   Create List      Item 1      Item 2      Item 3         # List variable - Other way to defines the variable with a MULTIPLE VALUE
        Log     ${my_list_variable}[0]
        Log     ${my_list_variable}[1]

*** Keywords ***