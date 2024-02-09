# Automatic Updates

!!! info

	Auto-update is now in Beta


## Setup
Some manual configuration is neccessary to perform self-updates for now.

First decide the account to use. There are two options.

1. Use the Active Directory Credentials provided to Blazam
1. Use a custom set of credentials. *(This can be a local user account with no administrative permissions)*

Finally, apply write permissions to the application installation directory 
for the chosen account.

## How?
To configure automatic updates, go to `Configure` -> `Settings` -> `Update` and enable auto updates.

You can then choose a time of day to perform the update. The default value is 2:00 local server time. Choose a time with minimal user activity to avoid disruptions.

When an update is released, Blazam will schedule a self update at the configured time.

