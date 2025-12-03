# Deep Dive: functions.sh

**Note:** The functions documented here are also defined within the main `setup-new-computer.sh` script. The `functions.sh` file itself is likely a remnant of a previous version and may be redundant.

This script contains a set of shell functions that are used throughout the setup process to provide formatted output and consistent error handling.

## `printHeading()`

- **Usage:** `printHeading "My Heading"`

This function prints a large, eye-catching heading in cyan, which is used to signify the start of a major new section in the setup process.

## `printDivider()`

- **Usage:** `printDivider`

This function prints a horizontal line of hyphens that spans the width of the terminal. It's used to visually separate smaller steps within a section.

## `printError()`

- **Usage:** `printError "Package Name"`

This function is called when a command fails. It prints a prominent red error message. If a package name or step description is passed as an argument, it will be included in the message.

## `printStep()`

- **Usage:** `printStep "Package Name" "command-to-run"`

This is one of the most important functions. It performs two key actions:
1.  It prints a message indicating what is about to be installed (e.g., "Installing Git...").
2.  It executes the installation command that is passed as the second argument.

If the command fails (i.e., exits with a non-zero status code), `printStep` will automatically call `printError` to report the failure before the script continues.

## `exitscript()`

- **Usage:** `exitscript 1 "Error message"`

This function is used to immediately terminate the script with a specific exit code (the first argument) and an error message (the second argument). It's used for fatal errors where the script cannot continue.
