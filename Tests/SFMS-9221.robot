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
 
    ClickText                 Search...  
    DefaultTimeout            60                          
    TypeText                  Search...                            SA Test Account1\n
    setconfig                 DefaultTimeout                       200

    ClickText                 Accounts                             anchor=Cases
    setconfig                 DefaultTimeout                       500
    ${data_requests}=         Set Variable                         SA Test Account1
    ClickText                 ${data_requests}                     anchor=SAECR_01
    Sleep                     10s
