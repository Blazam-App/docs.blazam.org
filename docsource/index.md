---
hide:
  - feedback
---
# Blazam

[Main Site](https://blazam.org)

Blazam is a powerful, free, web-based Active Directory management portal.

Enable you and your users to manage legacy Active Directory in a modern way.

## Environment Requirements
* Active Directory
* Domain-joined Windows Host Machine (Workstation/Server)
* Well-defined OU structure

!!! warning "Sorry"

    This app is simply not designed for organizations that clump all their users into a select few OU's. 
    Having a well defined OU structure is imperitive to the operation of this application.

    Sure you can use it, but the granularity of your delegation control is proportional to the granularity
    of your OU tree.

!!! note "Continuing"

    If you're looking for an app that delegates to groups instead of OU's, good luck.
    The technical reality of LDAP and Active Directory prohibit any tolerable experience
    delegating groups to groups.
## Open Source
Blazam and it's documentation are open source. Contributions are encouraged.
