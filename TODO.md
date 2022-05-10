# List of Known Issues

## Client

1. Running client in windowless mode will cause cursor to briefly display a loading circle.
2. RC4 encoding fails when compiled with optimization: Compiler seems to optimize away / mess up RC4 functionality when any level of optimization is turned on (\O1, \O2, \Ox), resulting in RC4 encoding function outputting garbage. The only way to make RC4 work is to turn off optimization completely (\Od) or compile a debug build.
3. Client-Server and Cli-Server communications are not SSL encrypted.
4. `ls`/`dir` is not implemented.

## Server

1. Server does not handle exception for many cli request failure, such as client connection error.
2. Server sometimes stall with the following warning and refuse to feed client new tasks:

```
C:\Users\User\cs151\Server\app\main.py:208: SAWarning: fully NULL primary key identity cannot load any object.  This condition may raise an error in a future release.
  DownloadFile).get(task.downloadfile_id)
```

## Cli

1. Get agent/task by index is only available after running `list` or `history`. For example, run `use 1` will display error if `list` have not been run, even if at least 1 agent exist.
2. Commands loaded by `resource` may not necessaily specify client task, which could lead usability issues. For example, although `resource` is only available in interactive agent menu, it accept commands such as `back` and `use <agent_id>`, which puts cli in a different menu than where it started.
3. Server configuration file is sometimes not loaded properly.
4. Alias does not work through the `resource` command.
5. Unlike the previous version of cli, `quit` and `exit` exits the cli regardless of menu level, while `back`'s behavior remains unchanged.
