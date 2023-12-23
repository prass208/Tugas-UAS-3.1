*** Settings ***
Library           SeleniumLibrary


*** variables ***

${HOST}        http://localhost:8000/
${BROWSER}    chrome


*** Test Cases ***
test-1
    Open Browser   ${HOST}    ${BROWSER}
    Sleep    5s
    Close Browser

testcase-2
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://a[@type='button']
    input text        name:nama    SEMEN PADANG
    input text        name:harga    500000
    input text        name:deskripsi    TERBUAT DARI SEMEN PILIHA
    Click Element     xpath://button[@type='submit']
    Alert Should Be Present    data berhasil disimpan.
    Sleep    5s
    Close Browser

testcase-3
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://a[@type='edit']
    input text        name:nama    edit
    input text        name:harga    500000
    input text        name:deskripsi    edit
    Click Element     xpath://button[@type='submit']
    Alert Should Be Present    data berhasil diupdate.
    Sleep    5s
    Close Browser

testcase-4
    Open Browser    ${HOST}    ${BROWSER}
    Click Element     xpath://a[@type='hapus']
    Handle Alert    action=accept
    Alert Should Be Present    data berhasil dihapus.
    Sleep    10s
    Close Browser    
