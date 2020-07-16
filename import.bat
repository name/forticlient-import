@echo off

:: Change the below details with what you need :)

set config_key="HKLM\SOFTWARE\Fortinet\FortiClient\Sslvpn\Tunnels\Connection Name"
set server="Server Address"
set description="Connection Description"

:: Apply Registry Changes

:: [NOTE] Enc key changes when settings are changed, completed some testing and this doesn't have to be added but it's here anyway because i worry
reg add %config_key% /v DATA1 /t REG_SZ /d "EncLM 892e4184e8562e276edca330d1c4fe273fa751ca602c613e4118398f906b76d089184028799d7ac495acfb1906bb8331956de3f18c224d9a53eaf1f940fbaed821a46848dc4e8d68d025da1922569eb65d831fb6dd65bdc87cc496a3458560586232d7b8dbb27340925dd1a28d5f41b90ba4de159d746d90f80874aa64205f0488c4a00df8255c8723fa4f71a20db54aab0d3a354825fc4ab2f3a5a5f335bce0fc438b7dbddaa1e0dbda3e79e8d86c80b1bbb4a5920f7ea5703c70377defae0329f7197861a3cb97bc06846af9a88e7612417af6aa906141d362722085f5542a4e5eeda544e36d86235f1574c09718ce4090711c8ed17dcb88182c760ac0749e1af26e19039b08b2eda6e8a875d1bc44c3bc354d99e779c48241ec0c842e88d051b75048fea4"
reg add %config_key% /v DATA3 /t REG_MULTI_SZ /d ""
reg add %config_key% /v Description /t REG_SZ /d %description%
reg add %config_key% /v promptcertificate /t REG_DWORD /d 0
reg add %config_key% /v promptusername /t REG_DWORD /d 1
reg add %config_key% /v Server /t REG_SZ /d %server%
reg add %config_key% /v ServerCert /t REG_SZ /d 0
reg add %config_key% /v sso_enabled /t REG_DWORD /d 0