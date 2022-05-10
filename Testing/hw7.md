# Homework 7 Tests

## Upload

```
C:\Users\User\cs151\Server\cli>py .\cli.py
> agents

agents > list

--------------------------------------------------
ID              : faca17f0
Machine GUID    : randomguid
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 5
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 29 Mar 2022 00:30:55 GMT
Updated         : Tue, 29 Mar 2022 00:30:55 GMT
-------
--------------------------------------------------
agents > use faca17f0

ID              : faca17f0
Machine GUID    : randomguid
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 5
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 29 Mar 2022 00:30:55 GMT
Updated         : Tue, 29 Mar 2022 00:30:55 GMT
-------
faca17f0 > download 5MB.zip

{'agent_id': 'faca17f0', 'input': '5MB.zip', 'status': 1, 'type': 8}
{'message': 'OK'}
faca17f0 > download 100MB.zip

{'agent_id': 'faca17f0', 'input': '100MB.zip', 'status': 1, 'type': 8}
{'message': 'OK'}
faca17f0 > history

--------------------------------------------------
---
ID              : 9580f5a8
Type            : Download
Input           : 100MB.zip
Status          : Completed
Created         : Tue, 29 Mar 2022 00:31:34 GMT
Updated         : Tue, 29 Mar 2022 00:31:54 GMT
---
ID              : 0774a23c
Type            : Download
Input           : 5MB.zip
Status          : Completed
Created         : Tue, 29 Mar 2022 00:31:21 GMT
Updated         : Tue, 29 Mar 2022 00:31:26 GMT
---------------------
```

Hash of uploaded file:
```
PS C:\Users\User\cs151\Client> certutil -hashfile .\5MB.zip md5
MD5 hash of .\5MB.zip:
b3215c06647bc550406a9c8ccc378756
CertUtil: -hashfile command completed successfully.
PS C:\Users\User\cs151\Client> certutil -hashfile .\100MB.zip md5
MD5 hash of .\100MB.zip:
5b563100babfef2f2ec9ab2d55e97fd1
CertUtil: -hashfile command completed successfully.
```

Hashes of uploaded file from server outputs:
```
file saved to: C:\Users\User\cs151\Server\data\faca17f0\download\a2fb938a-5MB.zip
MD5:b3215c06647bc550406a9c8ccc378756
file saved to: C:\Users\User\cs151\Server\data\faca17f0\download\8027f2f1-100MB.zip
MD5:5b563100babfef2f2ec9ab2d55e97fd1
```

## Macros

We've run with `VERBOSE=1` and `VERBOSE=0`. No output printed when set to `VERBOSE=0`. Client outputs the following when `VERBOSE=1`:
```
[Upload.exe] Uploading first chunk...
[Upload.exe] Uploaded chunk 2
[Upload.exe] Uploaded chunk 3
[Upload.exe] Uploaded chunk 4
[Upload.exe] Uploaded chunk 5
[Upload.exe] Uploading completed.
[Upload.exe] Uploading first chunk...
[Upload.exe] Uploaded chunk 2
[Upload.exe] Uploaded chunk 3
[Upload.exe] Uploaded chunk 4
[Upload.exe] Uploaded chunk 5
[Upload.exe] Uploaded chunk 6
[Upload.exe] Uploaded chunk 7
[Upload.exe] Uploaded chunk 8
...
[Upload.exe] Uploaded chunk 100
[Upload.exe] Uploading completed.
```