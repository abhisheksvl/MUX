# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Case ***

SFMS-9221: Testing for Account Dynamic Forms - Custom Actions (Front Office)
    [tags]                    Accounts
    Appstate                  Home

    ${user}=                  Set Variable                      Catherine Jung
    Login As                  ${user}
 
    LaunchApp                 Health Global Sales App

    ClickText                 Search...  
    Sleep                     3s                          
    TypeText                  Search...                            SA Test Account1\n
    setconfig                 DefaultTimeout                       200

    ClickText                 Accounts                             anchor=Opportunities
    setconfig                 DefaultTimeout                       500
    ${data_requests}=         Set Variable                         SA Test Account1
    ClickText                 ${data_requests}                     anchor=SAECR_01
    Sleep                     5s
