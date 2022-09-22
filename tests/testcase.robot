*** Settings ***
Resource  ../operational/instruction.robot



*** Test Cases***
task1
    Open Flipkart
    Go to ‘Electronics’ tab
    Search for any of your desired Mobile from ‘Mobiles’ section.
    
    I.e, Try scrolling and search for the mobile and go to that specific mobile’s details page.
    Click on ADD TO CART button.
    
task2
    Open Flipkart
    Go to Cart
    Verify if the the Mobile which we added is available in the list