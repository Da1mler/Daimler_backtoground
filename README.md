# Daimler_backtoground

### Description
Ensure your players stay grounded and safe from map glitches with this Ground Check and Teleport Script. This script constantly monitors players' Z-coordinates and teleports them back to the ground if they fall below a certain level, preventing them from getting stuck. It also temporarily freezes the players to ensure proper placement and uses `ox_lib` for alert dialogs.

## Features
- **Ground Check**: Continuously monitors players' Z-coordinates to detect falls below the ground level.
- **Automatic Teleportation**: Teleports players back to the ground if they fall below the defined Z-coordinate.
- **Temporary Freeze**: Freezes players for a configurable amount of time after teleportation to ensure proper placement.
- **Alert Dialogs**: Uses `ox_lib` for displaying alert dialogs to inform players about the teleportation.

## Installation

1. **Download**: Get the latest release of the script from our GitHub repository.
2. **Extract Files**: Unpack the downloaded ZIP file.
3. **Server Resources**: Move the script folder into your FiveM server's `resources` directory.
4. **Configuration**: Add `ensure Daimler_backtoground` to your `server.cfg` file.
5. **Install `ox_lib` Dependency**:
   - Download `ox_lib` from the official [repository](https://overextended.dev/ox_lib).
   - Move `ox_lib` to your `resources` folder.
   - Add `ensure ox_lib` to your `server.cfg` file.
6. **Restart**: Restart your FiveM server to apply the changes.

## Support and Contribution
For any issues, feature requests, or contributions, please visit our GitHub repository. Your feedback and collaboration are highly valued.

Thank you for choosing the Daimler_backtoground script! Enhance player safety and experience on your FiveM server.
