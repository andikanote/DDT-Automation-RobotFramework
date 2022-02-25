*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource   ../Resources/Resources.robot
Library     DataDriver      ../Resources/Data.xlsx
#Library     DataDriver      ../Resources/DataJr.xlsx
Suite Setup    Opening My Browser
Suite Teardown  Closing My Browser
Test Template   InputDataUsingExcel
#Test Template   InputDataUsingExcelData1

*** Test Cases ***
LoginTestUsingExcel
    inputdatausingexcel

#TC2
#    [Template]

*** Keywords ***
InputDataUsingExcel
    [Arguments]     ${name}	    ${pwd}	    ${prod}    ${jbdtk}	    ${jt}	    ${size}	${kat}	${stcok}	${satuan}	${qty}	${url}
    wait until element is visible   xpath=//input[@type='text']
    Input Text                      xpath=//input[@type='text']         ${name}
    Input Text                      xpath=//input[@type='password']     ${pwd}
    Click Element                   xpath=//input[@type='submit']
    click element                   xpath=//span[contains(text(),'PRODUCT AREA')]
    wait until element is visible   xpath=//a[contains(text(),'DATA PRODUCT')]
    click element                   xpath=//a[contains(text(),'DATA PRODUCT')]
    wait until element is visible   xpath=//a[@class='icon-btn pulse-grow']
    click element                   xpath=//a[@class='icon-btn pulse-grow']
    Sleep                           2s
    Input Text                      xpath=//*[@id="judul"]                                               ${prod}
    Sleep                           2s
    Input Text                      xpath=//*[@id="harga"]                                               ${jbdtk}
    Sleep                           2s
    Input Text                      xpath=//*[@id="harga1"]                                              ${jt}
    Sleep                           2s
    Input Text                      xpath=//*[@id="tipeukuran"]                                          ${size}
    Sleep                           2s
    click element                   xpath=//*[@id="kategori"]
    wait until element is visible   xpath=/html/body/div[2]/div/div/div[2]/form/div/div/div[5]/select/option[${kat}]
    click element                   xpath=/html/body/div[2]/div/div/div[2]/form/div/div/div[5]/select/option[${kat}]
    Sleep                           2s
    Input Text      xpath=//*[@id="stok"]       ${stcok}
    Input Text      xpath=//*[@id="pengarang"]  ${satuan}
    Input Text      xpath=//*[@id="penerbit"]   ${qty}
    wait until element is visible   xpath=//*[@id="cover"]              2s
    Choose File                     xpath=//*[@id="cover"]              ${url}
    Sleep                           2s
    click element                   xpath=//button[contains(text(),'Tambah')]
    #Logout
    go to                           https://katalog.nurinnia.co.id/admin/index.php
    Sleep                           2s
    wait until element is visible   xpath=//span[contains(text(),'LOGOUT')]
    click element                   xpath=//span[contains(text(),'LOGOUT')]
    wait until element is visible   xpath=//a[@class='c-btn large blue-bg']
    click element                   xpath=//a[@class='c-btn large blue-bg']