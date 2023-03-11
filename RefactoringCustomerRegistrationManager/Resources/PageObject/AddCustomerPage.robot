*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_SIGNIN_SUBMIT_BUTTON} =   Submit
${ADDCUSTOMER_EMAIL_TEXTBOX} =          id=EmailAddress
${ADDCUSTOMER_FIRST_NAME_TEXTBOX} =     id=FirstName
${ADDCUSTOMER_LAST_NAME_TEXTBOX} =      id=LastName
${ADDCUSTOMER_CITY_TEXTBOX} =           id=City
${ADDCUSTOMER_STATE_DROPDOWN} =         id=StateOrRegion
${ADDCUSTOMER_GENDER_RADIO} =           gender
${ADDCUSTOMER_PROMO_CHECKBOX} =         name=promos-name

${ADDCUSTOMER_EMAIL_DATA} =          nobody@gmail.com
${ADDCUSTOMER_FIRST_NAME_DATA} =     Noel
${ADDCUSTOMER_LAST_NAME_DATA} =      Bodies
${ADDCUSTOMER_CITY_DATA} =           Hellcife
${ADDCUSTOMER_STATE_DATA} =          TX
${ADDCUSTOMER_GENDER_DATA} =         female


*** Keywords ***
Verify Page Loaded
    wait until page contains           Add Customer

Add New Customer
    Fill Customer Field
    Click "Submit" Button

Fill Customer Field
    input text                 ${ADDCUSTOMER_EMAIL_TEXTBOX}         ${ADDCUSTOMER_EMAIL_DATA}
    input text                 ${ADDCUSTOMER_FIRST_NAME_TEXTBOX}    ${ADDCUSTOMER_FIRST_NAME_DATA}
    input text                 ${ADDCUSTOMER_LAST_NAME_TEXTBOX}     ${ADDCUSTOMER_LAST_NAME_DATA}
    input text                 ${ADDCUSTOMER_CITY_TEXTBOX}          ${ADDCUSTOMER_CITY_DATA}
    select from list by value  ${ADDCUSTOMER_STATE_DROPDOWN}        ${ADDCUSTOMER_STATE_DATA}
    select radio button        ${ADDCUSTOMER_GENDER_RADIO}          ${ADDCUSTOMER_GENDER_DATA}
    select checkbox            ${ADDCUSTOMER_PROMO_CHECKBOX}

Click "Submit" Button
    click button                 ${ADDCUSTOMER_SIGNIN_SUBMIT_BUTTON}