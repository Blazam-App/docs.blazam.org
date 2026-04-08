# Automatic Updates

Blazam can automatically apply updates on a schedule using a Windows Scheduled
Task coordinated with the application's built-in download and staging pipeline.

## Setup

### 1. Register the Scheduled Task

Automatic updates require the **"BLAZAM Auto Updater"** Windows Scheduled Task
to be registered on the web host. Run the following script as **Administrator**
from your Blazam installation directory:

````powershell
.\updater\register-update-task.ps1
````

If the PowerShell execution policy prevents the script from running, you can temporarily bypass it by running:
````powershell
powershell -ExecutionPolicy Bypass -File .\updater\register-update-task.ps1
````

During registration you will be prompted to choose the account the task runs as:

| Option | Requirement |
|--------|-------------|
| **SYSTEM** | Default. No password required. Must have write access to the Blazam installation directory. |
| **Custom user** | Must be a local administrator. Domain accounts (e.g. `DOMAIN\ServiceAccount`) and local accounts (e.g. `.\LocalUser`) are supported. |

The registered task has the following behaviour:

- Executes `updater\update.ps1` using PowerShell with `-ExecutionPolicy Bypass`
- Runs with the **highest available** privilege level
- Enforces a **1-hour** maximum execution time
- Uses **StartWhenAvailable** — catches up if the server was offline at the scheduled time
- Uses **IgnoreNew** — will not queue a second run if already executing

### 2. Configure Update Credentials (Application Side)

In the Blazam application, go to `Configure` -> `Settings` -> `Update` and
configure the credentials used to download and stage update files:

1. Use the Active Directory credentials provided to Blazam *(this account must
   have write permissions to the application directory)*.
2. Use a custom set of credentials *(this account must have write permissions 
   to the application directory)*.

---

## How It Works

When an update is available and automatic updates are enabled, Blazam performs
the following coordinated sequence:

1. **Download & Stage** — The application downloads the update zip to a
   temporary directory and extracts it to `<app_root>\updater\staged\`. This
   happens within the running application process using the configured update
   credentials.

2. **Backup** — The current installation is backed up to the running user's
   temporary folder (e.g. `C:\Windows\Temp\Blazam\backup\`) before any files
   are replaced.

3. **Updater Self-Update** — The `updater\` scripts are replaced from the
   staged copy, keeping the task runner up to date.

4. **Coordination with Scheduled Task** — The application will stage the update files
   at the time scheduled in the app at `Configure` -> `Settings` -> `Update`. Set this
   time to 15 mins before the scheduled task to ensure the update is staged
   and ready to be applied when the task runs (Default Schedueled Task runs at 2AM so
   1:45AM is recommended).

---

## Configuring the Schedule

To enable automatic updates and set the update time, go to
`Configure` -> `Settings` -> `Update`:

- Toggle **Enable Automatic Updates**
- Set your preferred **time of day** — the default is **1:45 AM** local server time

> Choose a time with minimal user activity to avoid disruptions. If the server
> is offline at the scheduled time, the task will run as soon as it becomes
> available (`StartWhenAvailable`).

