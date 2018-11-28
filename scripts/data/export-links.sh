USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
SOQL=soql/select-links.soql
sfdx force:data:tree:export -q $SOQL --json -d ./data -p -u $USER_ALIAS