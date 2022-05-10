# CS151 Final Project

**Per the instructor's request, this repository does not contain any code.** 

Course description: https://www.cs.tufts.edu/t/courses/description/spring2022/CS/151-01

Using [sRDI (Shellcode Reflective DLL Injection)](https://github.com/monoxgas/sRDI), the client is able to download additional component to adjust its own privileges or run command in higher integrity.

## Project Structure

The project contains the following functional modules:

- `Client`: client to be implanted on the target's machine.
- `Server`: command and control infrastructure consisting of a server and a command line interface (Cli)
- `Upload`, `Download`: test modules for file transmission between client and server
- `Base64`, `MD5`, `RC4`: cryptography modules

## Project Setup

### Configuration

- Client configuration: `Client\Client\config.h`
- Cli configuration:
  - Server IP and default alias: `Server\cli\config.toml`
  - Warning level and prompt color: `Server\cli\cli.py`

### Compilation

- `Client\compile.bat`: Client release build; run with in VS2017 command prompt
- `Client\debug.bat`: Client debug build; run with VS2017 command prompt.

### C2 setup options

- `Server\run-debug-server.bat` enable auto-reload, displays debug message, and clears database before starting server.
- `Server\run-server.bat`: disable auto-reload and debug message in server log.
- `Server\run-cli.bat`: Start cli.
- `Server\clean.bat`: Manually purge database.

## Cli Commands

### Base commands

- `agents`: enter agents menu.
- `back`: go back to the last menu.
- `help`: display help message.
- `quit`: exit cli.
- `alias`: manage alias for a cli or client command.

### Agents menu commands

- `list`: list available agents.
- `use`: enter interactive agent menu via agent's id or index. e.g. `use 8f87d0ce` or `use 1`.
- `dropdb`: clear server database.

### Interactive agent menu commands

- `resource`: load client commands from a file.
- `sysinfo`: details of the client's machine.
- `task`: get task detail via task id or index. `task 4f993dc1` or `task 1`.
- `history`: get current agent's task history.
- Client commands: see below.


## Client Commands

### Basic Tasking

- `whoami`: show current user.  
- `pwd`: print working directory.  
- `cd`: change working directory.  
- `ps`: get a list of running processes.
- `shell`: execute shell command under the current privilege.
- `screenshot`: take a screenshot of the client machine's desktop.  
- `sleep`: adjust the time between client check-ins.
- `terminate`: terminate the client process.

### File Transfer

- `download`: download a file from client to server.
- `upload`: upload a file from server to client.

### Remote Shellcode Injection

`scinject`: inject shellcode into another process.

### Privilege Escalation

```
whoami /groups | findstr Level
```

- `listprivs`: list the privileges of the current process  
- `setpriv`: enable or disable a privilege of the current process
- `bypassuac`: from medium integrity, run a command in high integrity without prompting user account control.
- `getsystem`: from high integrity, run a command in system integrity

### Credential Dumping

`mimikatz`: run mimikatz commands.
