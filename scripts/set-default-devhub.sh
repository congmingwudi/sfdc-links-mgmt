USER_ALIAS=DevHub
echo setting default dev hub to USER_ALIAS = $USER_ALIAS
sfdx force:config:set defaultdevhubusername=$USER_ALIAS --global