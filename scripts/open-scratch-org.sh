USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
echo opening scratch org w/ USER_ALIAS = $USER_ALIAS
sfdx force:org:open -u $USER_ALIAS