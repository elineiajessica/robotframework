*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                            https://www.amazon.com.br/
${MENU_ELETRONICOS}               //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}             //h1[contains(.,'Eletrônicos e Tecnologia')]
${TEXTO_HEADER_ELETRONICOS}       Eletrônicos e Tecnologia

*** Keywords ***

Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window


Fechar o navegador
    Close Browser    

Acessar a home page do site amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_ELETRONICOS}
    Sleep    15s

Entrar no menu "Eletronicos"
    Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Computadores e Informatica"
    Wait Until Page Contains         text=${TEXTO_HEADER_ELETRONICOS}
    Wait Until Element Is Visible    locator=${HEADER_ELETRONICOS}

Verificar se o titulo da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "${CATEGORIA_NOME}"
    Element Should Be Visible    locator=//img[contains(@alt,'${CATEGORIA_NOME}')]


    