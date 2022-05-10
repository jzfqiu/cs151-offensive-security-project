# Homework 4 Tests

0. Purge old database.
1. Fire up server.
2. Run cli.
3. Start a client.

## Registration

```
agents > list

--------------------------------------------------
ID              : df8dbc63
Machine GUID    : randomguid
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 01 Mar 2022 01:39:57 GMT
Updated         : Tue, 01 Mar 2022 01:39:57 GMT
-------
--------------------------------------------------
agents > use df8dbc63

ID              : df8dbc63
Machine GUID    : randomguid
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 01 Mar 2022 01:39:57 GMT
Updated         : Tue, 01 Mar 2022 01:39:57 GMT
-------
df8dbc63 >
```

## Whoami

```
df8dbc63 > whoami

{'agent_id': 'df8dbc63', 'input': '', 'status': 1, 'type': 5}
{'message': 'OK'}
df8dbc63 > history

--------------------------------------------------
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Queued
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:11 GMT
--------------------------------------------------
df8dbc63 > history

--------------------------------------------------
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 > task be9c4768

be9c4768

ID              : be9c4768
Type            : Whoami
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
Input           :
Status          : Complete
Result          :
 User
df8dbc63 >
```

## Print Working Directory

```
df8dbc63 > pwd

{'agent_id': 'df8dbc63', 'input': '', 'status': 1, 'type': 3}
{'message': 'OK'}
df8dbc63 > history

--------------------------------------------------
---
ID              : 84b1d22e
Type            : Pwd
Input           :
Status          : Queued
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:54 GMT
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 > history

--------------------------------------------------
---
ID              : 84b1d22e
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:58 GMT
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 > task 84b1d22e

84b1d22e

ID              : 84b1d22e
Type            : Pwd
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:58 GMT
Input           :
Status          : Complete
Result          :
 C:\Users\User\cs151\Client
df8dbc63 >
```

## Change Working Directory

```
df8dbc63 > cd Client

{'agent_id': 'df8dbc63', 'input': 'Client', 'status': 1, 'type': 4}
{'message': 'OK'}
df8dbc63 > history

--------------------------------------------------
---
ID              : 6be84e38
Type            : ChangeDir
Input           : Client
Status          : Completed
Created         : Tue, 01 Mar 2022 01:42:44 GMT
Updated         : Tue, 01 Mar 2022 01:42:48 GMT
---
ID              : 84b1d22e
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:58 GMT
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 > pwd

{'agent_id': 'df8dbc63', 'input': '', 'status': 1, 'type': 3}
{'message': 'OK'}
df8dbc63 > history

--------------------------------------------------
---
ID              : 675cfaaf
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:43:10 GMT
Updated         : Tue, 01 Mar 2022 01:43:18 GMT
---
ID              : 6be84e38
Type            : ChangeDir
Input           : Client
Status          : Completed
Created         : Tue, 01 Mar 2022 01:42:44 GMT
Updated         : Tue, 01 Mar 2022 01:42:48 GMT
---
ID              : 84b1d22e
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:58 GMT
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 > task 675cfaaf

675cfaaf

ID              : 675cfaaf
Type            : Pwd
Created         : Tue, 01 Mar 2022 01:43:10 GMT
Updated         : Tue, 01 Mar 2022 01:43:18 GMT
Input           :
Status          : Complete
Result          :
 C:\Users\User\cs151\Client\Client
```


## Exit 

```
df8dbc63 > terminate

{'agent_id': 'df8dbc63', 'input': '', 'status': 1, 'type': 1}
{'message': 'OK'}
df8dbc63 > history

--------------------------------------------------
---
ID              : b6e24cd0
Type            : Terminate
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:43:52 GMT
Updated         : Tue, 01 Mar 2022 01:43:58 GMT
---
ID              : 675cfaaf
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:43:10 GMT
Updated         : Tue, 01 Mar 2022 01:43:18 GMT
---
ID              : 6be84e38
Type            : ChangeDir
Input           : Client
Status          : Completed
Created         : Tue, 01 Mar 2022 01:42:44 GMT
Updated         : Tue, 01 Mar 2022 01:42:48 GMT
---
ID              : 84b1d22e
Type            : Pwd
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:54 GMT
Updated         : Tue, 01 Mar 2022 01:41:58 GMT
---
ID              : be9c4768
Type            : Whoami
Input           :
Status          : Completed
Created         : Tue, 01 Mar 2022 01:41:11 GMT
Updated         : Tue, 01 Mar 2022 01:41:17 GMT
--------------------------------------------------
df8dbc63 >
```