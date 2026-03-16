# Automatic Updates

## Self-Update Setup
Some manual configuration is necessary to perform self-updates for now.

First decide the account to use. There are two approved options.

1. Use the Active Directory credentials provided to Blazam *(This account must be an administrator on the web host.)*.
1. Use a custom set of credentials. *(This account must be a local administrator.)*


## How?
To configure automatic updates, go to `Configure` -> `Settings` -> `Update` and enable auto updates.

You can then choose a time of day to perform the update. The default value is 2:00 
AM local server time. Choose a time with minimal user activity to avoid disruptions.

When an update is released, Blazam will schedule a self update at the configured time.

