USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
DATA=./data/Link__c-plan.json
echo importing products into org w/ USER_ALIAS = $USER_ALIAS
sfdx force:data:tree:import -u $USER_ALIAS -p $DATA