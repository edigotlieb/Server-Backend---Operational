INSERT INTO PERMISSION_GROUPS (PERMISSION_NAME,PERMISSIONGROUP_DESCRIPTION,PERMISSION_GROUP_ADMIN)
VALUES (?,?,(SELECT USER_ID FROM USERS WHERE USERS.USERNAME = ?));