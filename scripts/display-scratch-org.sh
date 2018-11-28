USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
echo displaying scratch org w/ USER_ALIAS = $USER_ALIAS
sfdx force:user:display -u $USER_ALIAS