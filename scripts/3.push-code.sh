USER_ALIAS="${USER_ALIAS:-LinksMgmt_Scratch}"
./push-changes-to-scratch-org.sh
./assign-perm-set-to-user.sh
cd data
./import-links.sh
cd ..
./open-scratch-org.sh