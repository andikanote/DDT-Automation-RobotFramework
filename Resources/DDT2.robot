*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Resource   ../Resources/Resources.robot
Library     DataDriver      ../Resources/Data.xlsx
#Library     DataDriver      ../Resources/DataJr.xlsx
Suite Setup    Opening My Browser
Suite Teardown  Closing My Browser
Test Template   InputData

*** Test Cases ***
LoginTestUsingExcel using ${product} ${jabodetabek} ${jateng} ${ukuran} ${stcok} ${satuan} ${qty}


*** Keywords ***
InputData
    [Arguments]     ${product}  ${jabodetabek}  ${jateng}   ${ukuran}   ${stcok}    ${satuan}   ${qty}
    Input Text      xpath=//*[@id="judul"]      ${product}
    Input Text      xpath=//*[@id="harga"]      ${jabodetabek}
    Input Text      xpath=//*[@id="harga1"]     ${jateng}
    Input Text      xpath=//*[@id="tipeukuran"] ${ukuran}
    Input Text      xpath=//*[@id="stok"]       ${stcok}
    Input Text      xpath=//*[@id="pengarang"]  ${satuan}
    Input Text      xpath=//*[@id="penerbit"]   ${qty}