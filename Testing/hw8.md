# HW8 Testing

## Success Case

### Medium integrity

Test command: 
```
listprivs
setpriv SeChangeNotifyPrivilege disabled
listprivs
```
Output (Expect `SeChangeNotifyPrivilege` to be disabled)

```
PS C:\Users\User\cs151\Testing\Tests> .\run-test.ps1 .\test_hw8


============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : c3c6afcf
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:39:53 GMT
Updated         : Tue, 05 Apr 2022 02:40:04 GMT
-------
c3c6afcf >
4819164b

ID              : 4819164b
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:39:54 GMT
Updated         : Tue, 05 Apr 2022 02:40:04 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Enabled
SeCreateGlobalPrivilege: Disabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Disabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Disabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

c3c6afcf >

============================
[run-test] Executing Command: setpriv SeChangeNotifyPrivilege disabled
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : c3c6afcf
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:39:53 GMT
Updated         : Tue, 05 Apr 2022 02:40:14 GMT
-------
c3c6afcf >
8b15f579

ID              : 8b15f579
Type            : SetPrivs
Created         : Tue, 05 Apr 2022 02:40:08 GMT
Updated         : Tue, 05 Apr 2022 02:40:14 GMT
Input           : SeChangeNotifyPrivilege disabled
Status          : Complete
Result          :

c3c6afcf >

============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : c3c6afcf
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:39:53 GMT
Updated         : Tue, 05 Apr 2022 02:40:24 GMT
-------
c3c6afcf >
997bc0d3

ID              : 997bc0d3
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:40:19 GMT
Updated         : Tue, 05 Apr 2022 02:40:24 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Disabled
SeCreateGlobalPrivilege: Disabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Disabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Disabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

c3c6afcf >
```


### High integrity

Test command: 
```
listprivs
setpriv SeDebugPrivilege enabled
listprivs
```
Output (Expect `SeChangeNotifyPrivilege` to be enabled)

```
PS C:\Users\User\cs151\Testing\Tests> .\run-test.ps1 .\test_hw8


============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : d6761532
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 4
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:43:36 GMT
Updated         : Tue, 05 Apr 2022 02:43:46 GMT
-------
d6761532 >
a2d47926

ID              : a2d47926
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:43:37 GMT
Updated         : Tue, 05 Apr 2022 02:43:46 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Enabled
SeCreateGlobalPrivilege: Enabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Disabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Enabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

d6761532 >

============================
[run-test] Executing Command: setpriv SeDebugPrivilege enabled
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : d6761532
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 4
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:43:36 GMT
Updated         : Tue, 05 Apr 2022 02:43:56 GMT
-------
d6761532 >
68ec53fc

ID              : 68ec53fc
Type            : SetPrivs
Created         : Tue, 05 Apr 2022 02:43:51 GMT
Updated         : Tue, 05 Apr 2022 02:43:56 GMT
Input           : SeDebugPrivilege enabled
Status          : Complete
Result          :

d6761532 >

============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : d6761532
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 4
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:43:36 GMT
Updated         : Tue, 05 Apr 2022 02:44:07 GMT
-------
d6761532 >
56beccd1

ID              : 56beccd1
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:44:01 GMT
Updated         : Tue, 05 Apr 2022 02:44:07 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Enabled
SeCreateGlobalPrivilege: Enabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Enabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Enabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

d6761532 >
```


## Failure Case


### Medium integrity 

Test command: 
```
listprivs
setpriv SeDebugPrivilege enable
listprivs
```
Output (Expect `SeChangeNotifyPrivilege` to be disabled)

```
PS C:\Users\User\cs151\Testing\Tests> .\run-test.ps1 .\test_hw8


============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : 882e5b71
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:45:34 GMT
Updated         : Tue, 05 Apr 2022 02:45:44 GMT
-------
882e5b71 >
86e34e46

ID              : 86e34e46
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:45:34 GMT
Updated         : Tue, 05 Apr 2022 02:45:44 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Enabled
SeCreateGlobalPrivilege: Disabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Disabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Disabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

882e5b71 >

============================
[run-test] Executing Command: setpriv SeDebugPrivilege enabled
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : 882e5b71
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:45:34 GMT
Updated         : Tue, 05 Apr 2022 02:45:54 GMT
-------
882e5b71 >
39db63d9

ID              : 39db63d9
Type            : SetPrivs
Created         : Tue, 05 Apr 2022 02:45:46 GMT
Updated         : Tue, 05 Apr 2022 02:45:54 GMT
Input           : SeDebugPrivilege enabled
Status          : Complete
Result          :

882e5b71 >

============================
[run-test] Executing Command: listprivs
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : 882e5b71
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:45:34 GMT
Updated         : Tue, 05 Apr 2022 02:46:04 GMT
-------
882e5b71 >
1611e1cd

ID              : 1611e1cd
Type            : ListPrivs
Created         : Tue, 05 Apr 2022 02:45:57 GMT
Updated         : Tue, 05 Apr 2022 02:46:04 GMT
Input           :
Status          : Complete
Result          :
 SeAssignPrimaryTokenPrivilege: Disabled
SeAuditPrivilege: Disabled
SeBackupPrivilege: Disabled
SeChangeNotifyPrivilege: Enabled
SeCreateGlobalPrivilege: Disabled
SeCreatePagefilePrivilege: Disabled
SeCreatePermanentPrivilege: Disabled
SeCreateSymbolicLinkPrivilege: Disabled
SeCreateTokenPrivilege: Disabled
SeDebugPrivilege: Disabled
SeEnableDelegationPrivilege: Disabled
SeImpersonatePrivilege: Disabled
SeIncreaseBasePriorityPrivilege: Disabled
SeIncreaseQuotaPrivilege: Disabled
SeIncreaseWorkingSetPrivilege: Disabled
SeLoadDriverPrivilege: Disabled
SeLockMemoryPrivilege: Disabled
SeMachineAccountPrivilege: Disabled
SeManageVolumePrivilege: Disabled
SeProfileSingleProcessPrivilege: Disabled
SeRelabelPrivilege: Disabled
SeRemoteShutdownPrivilege: Disabled
SeRestorePrivilege: Disabled
SeSecurityPrivilege: Disabled
SeShutdownPrivilege: Disabled
SeSyncAgentPrivilege: Disabled
SeSystemEnvironmentPrivilege: Disabled
SeSystemProfilePrivilege: Disabled
SeSystemtimePrivilege: Disabled
SeTakeOwnershipPrivilege: Disabled
SeTcbPrivilege: Disabled
SeTimeZonePrivilege: Disabled
SeTrustedCredManAccessPrivilege: Disabled
SeUndockPrivilege: Disabled
SeUnsolicitedInputPrivilege: Disabled

882e5b71 >
```


## Fixed PS From HW5

Test command: 
```
ps
```

Output (Without Admin Privilege)
```
PS C:\Users\User\cs151\Testing\Tests> .\run-test.ps1 .\test_hw8


============================
[run-test] Executing Command: ps
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : fc41009c
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 3
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:46:43 GMT
Updated         : Tue, 05 Apr 2022 02:46:54 GMT
-------
fc41009c >
2072181c

ID              : 2072181c
Type            : PsList
Created         : Tue, 05 Apr 2022 02:46:44 GMT
Updated         : Tue, 05 Apr 2022 02:46:54 GMT
Input           :
Status          : Complete
Result          :
 PID    Parent PID      Architecture    Username        Process Name
 5936   704             x64             User            rdpclip.exe
 5964   1408            x64             User            sihost.exe
 5988   664             x64             User            svchost.exe
 6028   664             x64             User            svchost.exe
 6092   1232            x64             User            taskhostw.exe
 6520   6504            x64             User            explorer.exe
 6624   664             x64             User            svchost.exe
 6716   804             x64             User            StartMenuExperienceHost.exe
 6024   804             x64             User            RuntimeBroker.exe
 5916   804             x64             User            SearchApp.exe
 7352   804             x64             User            RuntimeBroker.exe
 8180   6520            x64             User            SecurityHealthSystray.exe
 5396   6520            x64             User            vmtoolsd.exe
 872    6520            x64             User            OneDrive.exe
 7020   6520            x64             User            msedge.exe
 3928   7020            x64             User            msedge.exe
 8560   7020            x64             User            msedge.exe
 8580   7020            x64             User            msedge.exe
 8656   7020            x64             User            msedge.exe
 9136   804             x64             User            RuntimeBroker.exe
 9088   664             x64             User            svchost.exe
 1812   6520            x64             User            cmd.exe
 596    1812            x64             User            conhost.exe
 444    804             x64             User            ShellExperienceHost.exe
 6816   804             x64             User            RuntimeBroker.exe
 3856   804             x64             User            UserOOBEBroker.exe
 5200   804             x64             User            smartscreen.exe
 4168   6520            x64             User            powershell.exe
 4744   4168            x64             User            conhost.exe
 5448   4168            x64             User            cmd.exe
 7064   5448            x64             User            conhost.exe
 8068   5448            x64             User            flask.exe
 3032   8068            x64             User            python.exe
 3236   4168            x64             User            Client.exe
 4368   3236            x64             User            conhost.exe

fc41009c >
```

Output (With Admin Privilege)

```
PS C:\Users\User\cs151\Testing\Tests> .\run-test.ps1 .\test_hw8


============================
[run-test] Executing Command: ps
[run-test] Press Enter to Retrieve Execution Result and Run Next Task:
>
agents >
ID              : 54b40eb5
Machine GUID    : 38481ef6-4a6a-42dd-b2b2-060126703b49
Username        : User
Hostname        : CS151-OFS-08
Integrity       : 4
Process Arch    : 1
Internal IP     : 192.168.1.100
External IP     : 1.1.1.1
First Checkin   : Tue, 05 Apr 2022 02:48:30 GMT
Updated         : Tue, 05 Apr 2022 02:48:41 GMT
-------
54b40eb5 >
2be429cf

ID              : 2be429cf
Type            : PsList
Created         : Tue, 05 Apr 2022 02:48:31 GMT
Updated         : Tue, 05 Apr 2022 02:48:41 GMT
Input           :
Status          : Complete
Result          :
 PID    Parent PID      Architecture    Username        Process Name
 5936   704             x64             User            rdpclip.exe
 5964   1408            x64             User            sihost.exe
 5988   664             x64             User            svchost.exe
 6028   664             x64             User            svchost.exe
 6092   1232            x64             User            taskhostw.exe
 6208   6152            x64             User            ctfmon.exe
 6520   6504            x64             User            explorer.exe
 6624   664             x64             User            svchost.exe
 6716   804             x64             User            StartMenuExperienceHost.exe
 6024   804             x64             User            RuntimeBroker.exe
 5916   804             x64             User            SearchApp.exe
 7352   804             x64             User            RuntimeBroker.exe
 8180   6520            x64             User            SecurityHealthSystray.exe
 5396   6520            x64             User            vmtoolsd.exe
 872    6520            x64             User            OneDrive.exe
 7020   6520            x64             User            msedge.exe
 3928   7020            x64             User            msedge.exe
 8560   7020            x64             User            msedge.exe
 8580   7020            x64             User            msedge.exe
 8656   7020            x64             User            msedge.exe
 9136   804             x64             User            RuntimeBroker.exe
 9088   664             x64             User            svchost.exe
 1812   6520            x64             User            cmd.exe
 596    1812            x64             User            conhost.exe
 444    804             x64             User            ShellExperienceHost.exe
 6816   804             x64             User            RuntimeBroker.exe
 4224   6880            x64             User            sshd.exe
 8040   4224            x64             User            cmd.exe
 8056   8040            x64             User            conhost.exe
 8860   8040            x64             User            powershell.exe
 8264   8860            x64             User            powershell.exe
 9032   8264            x64             User            powershell.exe
 4800   9032            x64             User            powershell.exe
 592    4800            x64             User            conhost.exe
 8380   4800            x64             User            cmd.exe
 9040   8380            x64             User            node.exe
 4912   9040            x64             User            node.exe
 7960   9040            x64             User            node.exe
 5256   9040            x64             User            node.exe
 7648   4912            x64             User            conhost.exe
 7656   4912            x64             User            powershell.exe
 7376   7960            x64             User            cpptools.exe
 2012   7960            x64             User            cmd.exe
 6044   2012            x64             User            OmniSharp.exe
 2460   4912            x64             User            conhost.exe
 4768   4912            x64             User            powershell.exe
 5340   9040            x64             User            node.exe
 5008   9040            x64             User            node.exe
 3856   804             x64             User            UserOOBEBroker.exe
 2588   5340            x64             User            cpptools.exe
 3024   5340            x64             User            cmd.exe
 4640   3024            x64             User            OmniSharp.exe
 8976   2588            x64             User            cpptools-srv.exe
 6068   7960            x64             User            node.exe
 4168   6520            x64             User            powershell.exe
 4744   4168            x64             User            conhost.exe
 5284   6784            x64             User            SearchFilterHost.exe
 7956   4168            x64             User            cmd.exe
 32     7956            x64             User            conhost.exe
 2364   7956            x64             User            flask.exe
 8532   2364            x64             User            python.exe
 6800   4168            x64             User            Client.exe
 6868   6800            x64             User            conhost.exe
 4952   7376            x64             User            cpptools-srv.exe

54b40eb5 >
```
