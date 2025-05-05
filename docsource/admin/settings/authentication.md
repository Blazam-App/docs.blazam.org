# Authentication Settings
## Admin Password
Allows for changing the built-in admin account password

Use a strong password as this account has full
access

## Session Timeout
The time in minutes that a web user should be authenticated for. 
!!! note

    Blazam uses a rolling expiration, which means that the session expiration time is reset on every page navigation.

## MFA Type
Blazam supports two MFA types. Cisco DUO, and Google Authenticator (and compatible) mobile apps.
It is not currently possible to use both simultaneously.

## DUO Multi-Factor Authentication
Blazam supports DUO Security for 2FA/MFA

### Setup
To enable DUO...

1. Go to your DUO admin console and go to Applications.
1. Click the "Protect an Application" button to add a new application
1. Search and choose "Web SDK"
1. Copy the Client ID, Client secret, and API hostname to Blazam's authentication settings page.
1. Rename your DUO entry with the name of your Blazam App so your users know what the prompt is for.

#### DUO Unreachable Behavior
For times when the Blazam server is unable to reach the DUO servers due to connectivity, internet, or Cisco datacenter issues, this
setting determines how a successful first-factor logon attempt should behave afterwards.

Allow permits the login and bypass the second factor.

Block will prevent the logon until communication with DUO has been re-established.


## Google Authenticatior
Blazam supports Google Authenticator and compatible apps for 2FA/MFA

### Setup
To enabble Google Authenicator...

1. Download Google Authenticator or a compatible app like DUO Mobile or Microsoft Authenticator.
1. Log into Blazam.
1. If MFA is required and the MFA Type is configured as Google Authenticator in Blazam, a Google Authenticator setup prompt will show a QR code.
1. If MFA is not required, after logging in, click the user button in the top right, and open "Preferences", then click "Setup Google Authenticator"
1. Add a new account on your Authenticator mobile app, and scan the QR code shown in Blazam.
1. Confirm the configuration by entering a TOTP passcode from the app after adding the account.