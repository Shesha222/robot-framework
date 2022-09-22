*** Settings ***
Library    SeleniumLibrary



*** Keywords ***
Open Flipkart
    Open Browser  https://www.flipkart.com/  gc

Search for any of your desired Mobile from ‘Mobiles’ section.
    Click Element    xpath=//*[@class="_37M3Pb"]/div[3]
Go to ‘Electronics’ tab
    Mouse Over    xpath=//*[@class="_331-kn"]/div/div/span[1]
    Wait Until Element Is Visible    xpath=//a[@title='iPhone SE']
    Click Element    xpath=//a[@title='iPhone SE']

I.e, Try scrolling and search for the mobile and go to that specific mobile’s details page.
    Scroll Element Into View    xpth=//*[@class="_36fx1h _6t1WkM _3HqJxg"]/div/div[2]/div[5]/div/div/div/a/div[2]/div/div
    Click Element    xpath=//*[@class="_36fx1h _6t1WkM _3HqJxg"]/div/div[2]/div[5]/div/div/div/a/div[2]/div/div
    # Wait Until Element Is Visible    xpath=//*[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    # Click Element    xpath=//*[@class="_2KpZ6l _2U9uOA _3v1-ww"]


Click on ADD TO CART button.
    Wait Until Element Is Visible    xpath=//*[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    Click Element    xpath=//*[@class="_2KpZ6l _2U9uOA _3v1-ww"]

Open Flipkart
    Click Element    xpath=//*[@class="_3qX0zy"]
Go to Cart
    Click Element    xpath=//*[@class="_2Xfa2_"]/div[6]/div/div/a/span

Verify if the the Mobile which we added is available in the list
    ${first} = Get Text    xpath=//*[@class="_2-uG6-"]/a
    ${value} = APPLE iPhone SE (Red, 256 GB)
    Should Be Equal As Strings    $first    $value

