# Testing

## Using Test Script

```powershell
cd Tests
run-test.ps1 <test_file_name>
```

## Procedure

`Tests/run-test.ps1` streamlines the testing procedure with the following steps:
1. Start server
2. Start client
3. Retrieve client ID using cli
4. Read 1 line of test commands and send to client to execute
5. Wait
6. Retrieve execution result
7. Go back to step 4 until all commands are executed

## Assumptions
- Test script can only assign task to 1 client (top client in the agents list)
