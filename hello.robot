*** Settings ***
Library    Selenium2Library
Library    BuiltIn

*** Keywords ***
Open FizzBuzz Application
    ${chrome options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome options}   add_experimental_option    binary    /Applications/fizzbuzz.app/Contents/MacOS/fizzbuzz
    ${options}=     Call Method     ${chrome options}    to_capabilities
    Create Webdriver    Remote    desired_capabilities=${options}    command_executor=http://localhost:9515

Click Add Btn Times
    [Arguments]    ${click_times}
    FOR    ${index}    IN RANGE    ${click_times}
        Click Element    xpath: //*[@id="add_btn"]
    END

Result Should Be
    [Arguments]    ${expect_result}
    Element Text Should Be    xpath: //*[@id="result"]    ${expect_result}

Test FizzBuzz Application Template
    [Arguments]    ${times}    ${expect_result}
    Open FizzBuzz Application
    Click Add Btn Times  ${times}
    Result Should Be    ${expect_result}
    Sleep    1s
    [Teardown]    Close All Browsers

*** Test Cases ***
Test FizzBuzz Application
    [Template]    Test FizzBuzz Application Template
    1    nothing
    3    fizz
    5    buzz
    6    fizz
    9    fizz
    10    buzz
    12    fizz
    14    nothing
    15    fizzbuzz