USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
PERM_SET=links_mgmt
echo assigning permission set $PERM_SET to USER_ALIAS = $USER_ALIAS
sfdx force:user:permset:assign -n $PERM_SET -u $USER_ALIAS