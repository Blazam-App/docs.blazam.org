## Subscriptions
Notifications in Blazam operate on the principle of subscriptions.

Subscriptions can either allow or block notifications.

Each subscription is assigned the specific object actions it should
notify or block.

Notifications are sent for all Active Directory object types for the
subscribed actions.

Notifications inherit down the directory, meaning that an allow subscription
at the top of the directory will trigger for every object in Blazam. If a block
subscription is created at a lower level, any object in that or deeper Organizational
Units will be ignored for those notification action triggers.
!!! note "Limitations"

    It's important to point out that Blazam can only notify on changes made from
    within Blazam itself. It does not actively monitor Active Directory and track
    changes.

## Notification Scope
Notifications respect the permissions provided to your account.

You must have read access to the AD objects in question to be
able to receive notifications about their changes.

## Notification Types

### Create
When a user, group, or OU is created.

### Delete
When an object is deleted.

### Modify
When any field is changed, except for password changes and group membership changes.

### Group Assignment
When an object is assigned or unassigned from a group, a notification will be sent.

### Password Change
When a password is reset.

## Delivery Types

### In App
Subscriptions applying to In App will be posted for display in the notifications
panel within the Blazam web application. A highlight of unread message count will
be displayed next to the Notifications button as they arrive.

### To Email
Subscriptions set for email will send an email notification to the user's configured
email address within Blazam (accessible from the `User Button` of each Blazam user).

By default, Blazam populates all users' emails with the value in Active Directory, if available.

### Block
Subscriptions that block do the exact opposite of those that don't. It provides a way to easily
exclude certain OUs or objects from sending unnecessary notifications.