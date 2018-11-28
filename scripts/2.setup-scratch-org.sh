USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
echo setting up scratch org with USER_ALIAS = $USER_ALIAS
./create-scratch-org.sh
./set-password-scratch-org.sh
./display-scratch-org.sh > ../config/org-$USER_ALIAS.txt
#./open-scratch-org.sh