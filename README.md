
# DNS Switcher for Windows

A set of simple batch scripts to switch DNS resolvers on active Ethernet and Wi-Fi connections using Windows command-line utilities. These scripts do not require any background services or daemons—just built-in Windows networking tools.

## Features

- **Quick DNS switching**: Change DNS settings to popular public DNS providers (Google, Cloudflare, etc.).
- **Automatic revert**: Restore automatic DNS settings (via DHCP) with a single command.
- **No extra services**: Relies only on native Windows commands (`netsh` and `ipconfig`), so there's nothing to install or keep running in the background.

## Repository Structure

```text
dns/              # Scripts for DNS switching
├── SetDNS.bat     # Script to set custom DNS servers
└── DNS_remove.bat # Script to revert to automatic DNS
```

## Prerequisites

- Windows (Any modern version supporting `netsh` and `ipconfig`)
- **No background daemons** are used.

## Installation

1. **Create Shortcuts**:
   - First, you need to create shortcuts for the `SetDNS.bat` and `DNS_remove.bat` files. 
   - To do this, right-click each batch file and select **Create shortcut**.
   
2. **Grant Admin Permission**:
   - The batch files need administrative permissions to modify network settings.
   - Right-click the shortcut you created for each batch file, then select **Properties**.
   - Under the **Shortcut** tab, click **Advanced**.
   - Check the box that says **Run as administrator** and click **OK**.
   - This ensures that each time you run the script, it has the necessary privileges to change DNS settings.

3. **(Optional) Add to Start Menu**:
   If you want to make the batch files easily accessible from the Start Menu, you can place them in the Start Menu Programs directory:
   
   - Copy both `SetDNS.bat` and `DNS_remove.bat` or their shortcuts.
   - Navigate to the following directory:
     ```
     C:/ProgramData/Microsoft/Windows/Start Menu/Programs/
     ```
   - Paste the files or shortcuts into this folder.
   
   After this, you will be able to search for the scripts directly in the Windows Start Menu.

## Usage

### Direct Commands

- **Set custom DNS**:  
  Use the `SetDNS.bat` script to set custom DNS servers:

  ```batch
  SetDNS.bat 8.8.8.8 8.8.4.4
  ```

  This will set Google DNS (8.8.8.8 and 8.8.4.4) for your active network interfaces.

- **Revert to automatic DNS**:  
  Use the `DNS_remove.bat` script to revert back to the automatic DNS configuration (using DHCP):

  ```batch
  DNS_remove.bat
  ```

## How It Works

1. **Set custom DNS**:  
   The `SetDNS.bat` script uses `netsh interface ip set dns` to configure DNS servers for the active network interface.

   ```batch
   netsh interface ip set dns "Ethernet" static $DNS1
   netsh interface ip add dns "Ethernet" $DNS2 index=2
   ```

2. **Revert to automatic DNS**:  
   The `DNS_remove.bat` script uses `netsh` to remove custom DNS settings and restore automatic DNS resolution via DHCP.

   ```batch
   netsh interface ip set dns "Ethernet" dhcp
   ```

   This ensures that your system fetches DNS settings automatically from the router or DHCP server.

3. **No Background Services**:  
   Both scripts run directly without needing to install or maintain any background services, and they only rely on the built-in Windows networking utilities.
