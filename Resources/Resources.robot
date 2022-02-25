*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}          https://katalog.nurinnia.co.id/admin/
${BROWSER}      chrome

*** Keywords ***
Opening My Browser
    Open Browser        ${URL}      ${BROWSER}      false
    Maximize Browser Window

Closing My Browser
    Close Browser

Logining Into Page
    go to               ${URL}

#Login Valid
#    Input Text                      xpath=//input[@type='text']         nurinnia
#    Input Text                      xpath=//input[@type='password']     Farrel110614
#    Click Element                   xpath=//input[@type='submit']
#    click element                   xpath=//span[contains(text(),'PRODUCT AREA')]
#    wait until element is visible   xpath=//a[contains(text(),'DATA PRODUCT')]
#    click element                   xpath=//a[contains(text(),'DATA PRODUCT')]
#    wait until element is visible   xpath=//a[@class='icon-btn pulse-grow']
#    click element                   xpath=//a[@class='icon-btn pulse-grow']
#
#InputData
#    [Arguments]     ${username} ${password} ${product}	${jabodetabek}	${jateng}	${ukuran}	${stcok}	${satuan}	${qty}
#    Input Text      xpath=//*[@id="judul"]      ${product}
#    Input Text      xpath=//*[@id="harga"]      ${jabodetabek}
#    Input Text      xpath=//*[@id="harga1"]     ${jateng}
#    Input Text      xpath=//*[@id="tipeukuran"] ${ukuran}
#    Input Text      xpath=//*[@id="stok"]       ${stcok}
#    Input Text      xpath=//*[@id="pengarang"]  ${satuan}
#    Input Text      xpath=//*[@id="penerbit"]   ${qty}

