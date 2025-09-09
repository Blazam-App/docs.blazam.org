# Notifications
Blazam offers a flexible notification system for both in-app and email notifications.

!!! note "Limitations"

    It's important to point out that Blazam can only notify about changes made from
    within Blazam itself. It does not actively monitor Active Directory or track
    changes.

## Requirements
In order for email notifications to be sent, email must be enabled in `Configure -> Settings`.

## Behavior
Notification settings, much like permissions, are applied to OUs and propagate down the OU tree
unless a `Block` is placed at a lower level.

In-app and email notification types can be included/excluded together or independently.

## User Access
All users can manage their own notification settings via the `User Button` in the top right of Blazam.

## Admin Management
Super-admins can manage all other user notifications via the `Configure -> Notifications` feature.