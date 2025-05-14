# Permissions
Permissions in Blazam differ from Active Directory in one major (and extremely helpful) way.

|Feature |  Active Directory | Blazam |
| ----------- | ------------------------------------ | - |
| Reusable ACL's      | :fontawesome-regular-circle-xmark:{ .red } Each ACL is unique for each OU  | :fontawesome-regular-circle-check:{ .green } Create one type of access and reuse that list for any number of OU's |
| ACL Naming          | :fontawesome-regular-circle-xmark:{ .red } ACL's are simply a list of properties in the security tab with no real grouping or de-granularization | :fontawesome-regular-circle-check:{ .green } Named ACL's allow for quick identification of access and it's source as well as allowing the creation of role based ACL's |
| ACL inheritance     | :fontawesome-regular-circle-check:{ .green } ACL's at higher level OU's propagate down except for overriding deny's | :fontawesome-regular-circle-check:{ .green } Blazam behaves the same as Active Directory in this regard |

!!! info "TLDR"

	Blazam adds a layer of abstraction to Active Directory permissions. By including an `Access Level` layer between the OU permissions and the group assigned,
	you can create a single ACL rule and reuse it for as many groups on as many OU's as you'd like.

The `Access Level`'s you define can be reused or combined to create exactly the configuration you desire.

!!! example

	A group `HR` could be given the `Access Level` `Read Users` (which allows only read access to usr demographics  fields)
	and the `Read Groups` `Access Level` to the OU's `Company/Marketing` and `Company/IT` while also receiving `Rename Users` for the `Company/Marketing` OU
	as well as the `Deny Group Read` `Access Level` for the `Company/IT` OU.

	This will result in a member of `HR` to be able to read user demographics in `Company/Marketing` and `Company/IT` while being able to read
	the groups a user is a member of, only if the group is under the `Company/Marketing` OU.

	They will also be able to rename users under `Company/Marketing`


!!! note

	Permissions that are applied inherit fully down the OU tree unless a `Deny` permission is set at a lower level.

## Delegates
The core element of the permission system in Blazam is the "Delegate".

A "Delegate" can be any group or user.

Any "Delegate" added will allow that user or members of that group to log into the application.

Nested group members are counted.

## Access Levels
Access Levels improve upon the default permission system found in Active Directory.

### Parameters
#### Name
You can name your Access Levels however you'd like.
#### Object Permissions
Permissions are split between different Active Directory object types. You can set different permissions
for groups from users, computers, or OU's within the same OU, or any combination therein.
#### Field Permissions
Under each object type allowed, you can choose which fields will be denied, readable, or editable.

### Group Membership Access
Group membership control in Blazam is tied to the group and read permissions.
#### Assign/Unassing Action
The delegate user must have Assign/Unassign action permissions provided to the parent group in order to assign users or groups to it.
#### Read Users/Groups
The final permission that must be assigned to delegates is read access to users or groups to be able to add as a member of the parent group
## Mappings
Mapping permissions is similar to default Active Directory permissions, but utilizing the powerful `Access Level`
component to ease and enhance the delegation process.

## Impersonation
As a super admin, you will be able to impersonate the application experience of other users.
This is extremely helpful when setting up permissions to verify the access you intended.

## Effective Permissions
An effective permission simulator is available to test user->target applied permissions without having to enter impersonation

## Global Permission Settings
These permissions apply to all users and Active Directory search results

### Allow Access Requests
Allow users to request group assign and/or unassign access to groups that a user has read access to but lacks those assignment
action permissions from within Blazam.

Upon request, a notification is sent to all `Super-Users` for approval or rejection. If approved, Blazam automatically assigns
access to the group for the user.

### Allow self access
Allows all users that can log into Blazam (anyone under Delegates) to be able to have additional permissions applied to their
own Active Directory account within Blazam. The applied access is an additional `Access Level` with all the features it provides
applied only to their own accounts.

You could for instance allow additional fields to be read, like Employee ID.

You can provide edit access to phone numbers or home addresses for self service of address changes and emergency notification
destinations.

You can allow a user to disable their own accounts if that is something people do.