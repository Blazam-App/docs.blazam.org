# System

## Manage Web Application

`Restart Web Application` - Restarts the entire web application. All connected users will be disconnected and must log in again. Use this when system changes require a full application restart.

!!! warning

    Restarting the application will disconnect all active users. Ensure users are notified before performing this action.

`Google Analytics ID` - Your Google Analytics 4 (GA4) measurement ID for tracking website analytics. This should be in the format `G-XXXXXXXXXX`. Leave blank to disable analytics tracking.

`Encryption Seed String` - A read-only field displaying the encryption key seed used by Blazam to secure sensitive data. This value is generated during installation and cannot be modified.

!!! important

    Keep your encryption seed string secure. If this value is lost or compromised, encrypted data may not be recoverable.

## Data Collection Settings

`Developer Logs` - When enabled, application logs are sent to the Blazam developers to help diagnose issues and improve the application. These logs may contain diagnostic information about errors and application behavior.

`Developer Analytics` - When enabled, anonymous usage analytics are sent to the Blazam developers. This helps improve the application by understanding how features are used.

!!! note

    Both data collection settings are optional and can be disabled at any time. No sensitive user data or Active Directory information is collected.

## Logging

`Installation Id` - A unique identifier for this Blazam installation. This read-only value is used to identify your installation when communicating with support.

`Download Logs` - Downloads all application log files as a compressed archive. Useful for troubleshooting issues or sharing logs with support. The current log directory path is displayed below the download button.

## Resource Usage

Displays real-time statistics about the application's resource consumption, including:

- Memory usage
- CPU usage
- Active connections
- Other performance metrics

Use this section to monitor the health and performance of your Blazam installation.

## Jobs Monitor

Displays the status of background jobs and scheduled tasks running within Blazam. This includes:

- Job name and description
- Current status (running, completed, failed)
- Last execution time
- Next scheduled execution

Monitor this section to ensure scheduled tasks are executing properly.

!!! tip

    If you notice jobs failing repeatedly, click a job to see error details or check the application logs for more detailed error information.
