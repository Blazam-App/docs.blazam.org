# API
Blazam is still young, and so the API is currently quite
limited.

## Documentation
For the latest API documentation, open up your Blazam installation,
log in, and click your user avatar button. There you will find the "API"
token creation menu option. A link to Swagger documentation is also available
from this menu.

## API Token Creation
The API token modal allows for the creation of API tokens for the account you
logged in with.

Tokens have a lifetime that is set upon creation. This can not be changed
after creation. After creation the tokens can be provided a description for
their purpose, along with revoking the token from future authentications as
well as outright deletion.

It is currently only possible to create an API token from an existing Blazam
user. This means that if you want a unique identity, for logging, from an
external system, an Active Directory account will need to be created,
along with permission in Blazam set and an API token created under said account.

## Permissions
API tokens respect the permissions of the derived user. API access follows
the exact same rules as applied in GUI. Currently only admins can create tokens
so this is a warning for future updates.

## Admin Management
As an admin, you can access `Configure` -> `API Tokens` to monitor and
control the API tokens created by your users. Every active token will be listed
and you can see latest activity and delete old or at risk tokens.