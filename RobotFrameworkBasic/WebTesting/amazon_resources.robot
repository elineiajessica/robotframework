*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                    https://www.amazon.com.br/
${MENU_ELETRONICOS}    //a[contains(@class,'nav-logo-link nav-progressive-attribute')]

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Close Browser    

Acessar a home page do site amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    Sleep    25s


    
