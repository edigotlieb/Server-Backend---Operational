INSERT INTO APP_PERMISSIONS (APP_ID,TABLE_ID,PERMISSION_TYPE,PERMISSIONGROUP_ID)
VALUES ((SELECT APP_ID FROM APPS WHERE APPS.APP_NAME = ?),
(SELECT TABLE_ID FROM DYNAMIC_TABLES WHERE DYNAMIC_TABLES.TABLE_NAME = ?), ?,
(SELECT PERMISSIONGROUP_ID FROM PERMISSION_GROUPS WHERE PERMISSION_GROUPS.PERMISSION_NAME = ?));