SELECT PERMISSION_GROUPS.PERMISSION_NAME,PERMISSION_GROUPS.PERMISSIONGROUP_DESCRIPTION, (SELECT USERNAME FROM USERS WHERE USER_ID = PERMISSION_GROUPS.PERMISSION_GROUP_ADMIN) AS GROUPADMIN_USERNAME FROM USERS
RIGHT JOIN USER_PERMISSIONS ON USERS.USER_ID = USER_PERMISSIONS.USER_ID
RIGHT JOIN PERMISSION_GROUPS ON USER_PERMISSIONS.PERMISSIONGROUP_ID = PERMISSION_GROUPS.PERMISSIONGROUP_ID
WHERE USERS.USERNAME = ?