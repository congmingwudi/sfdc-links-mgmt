USER_ALIAS=LinksMgmt_Sandbox
#LOGIN_URL=https://test.salesforce.com
LOGIN_URL=https://login.salesforce.com
echo authenticating org w/ USER_ALIAS = $USER_ALIAS and LOGIN_URL = $LOGIN_URL
sfdx force:auth:web:login -a $USER_ALIAS -r $LOGIN_URL