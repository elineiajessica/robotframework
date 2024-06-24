*** Settings ***
Documentation    Essa suite testa o site da amazon.com.busca_produtos
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao Menu "Eletronicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da amazon.com.br
    ...                E da categoria de Computadores e Informática
    [Tags]             menus
    Acessar a home page do site amazon.com.br
#     Entrar no menu "Eletronicos"
#     Verificar se o titulo da página fica "Eletronicos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Computadores e Informatica"
#     Verificar se aparece a categoria "Computadores e Informatica"

# Caso de teste 02 - Pesquisa de teste de um Produto
#     [Documentation]    Esse teste verifica a busca de um Produto
#     [Tags]             busca_produtos
#     Acessar a home page do site amazon.com.br
#     Digitar o nome de um produto "Xbox Series 5" no campo de Pesquisa
#     Clicar no botão de Pesquisa
#     Verificar o resultado da pesquisa se está listando o produto escolhido

