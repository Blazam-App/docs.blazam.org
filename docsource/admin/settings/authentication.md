# Authentication Settings
## Admin Password
Allows for changing the built-in admin account password

Use a strong password as this account has full
access

## Session Timeout
The time in minutes that a web user should be authenticated for. 
!!! note

    Blazam uses a rolling expiration, which means that the session expiration time is reset on every page navigation.

## DUO Multi-Factor Authentication
Blazam currently only supports DUO Security for 2FA/MFA

### Setup
To enable DUO...

1. Go to your DUO admin console and go to Applications.
1. Click the "Protect an Application" button to add a new application
1. Search and choose "Web SDK"
1. Copy the Client ID, Client secret, and API hostname to Blazam's authentication settings page.
1. Rename your DUO entry with the name of your Blazam App so your users know what the prompt is for.
