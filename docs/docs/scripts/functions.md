# Functions Script

The `functions.sh` script contains a set of utility functions that were originally intended to be used by the other scripts in this repository.

## Current Status

As of the latest version, this script is **not used**. The functions defined within it have been duplicated directly into the `setup-new-computer.sh` and `badal-io.sh` scripts.

This was likely done for simplicity, to keep the main script self-contained. However, this duplication means that any changes to the functions need to be made in multiple places.

## Future Cleanup

For better maintainability, the duplicated functions in the other scripts should be removed and sourced from this file instead. This would be a good candidate for future code cleanup.
