USER_ALIAS=LinksMgmt_Scratch
echo deleting scratch org w/ USER_ALIAS = $USER_ALIAS
sfdx force:org:delete -u $USER_ALIAS