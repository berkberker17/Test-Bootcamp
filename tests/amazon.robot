*** Settings ***
Library    Selenium2Library


*** Variables ***

*** Keywords ***


*** Test Cases ***
Should be able to
    open browser  https://www.amazon.com.tr/  chrome
    maximize browser window
    wait until element is visible    id=nav-logo-sprites
    click element  xpath=//*[@id="nav-xshop"]/a[3]
    wait until page contains    Moda
    click element    id=twotabsearchtextbox
    input text  id=twotabsearchtextbox  jean pantolon kadın
    click element  id=nav-search-submit-button
    wait until page contains    Aranan ürün: "jean pantolon kadın"
    click element    xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div[2]/div/span/a/div
    wait until page contains    DeFacto Paperbag Jean Pantolon Kot Pantolon Kadın
    click element    id=add-to-cart-button
    wait until page contains    Sepete Eklendi
    click element    id=hlb-ptc-btn-native
    wait until page contains    Giriş yap
    sleep    2s
    close browser


