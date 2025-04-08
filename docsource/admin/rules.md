# Rules
Rules provide an additional level of automation. With it,
business rules and conformity standards can be applied. With the use of custom Active
Directory Schema unlimited functionality is possible.


## Rule Triggers
There are two type of rules in Blazam, Event-Based and Scheduled.

### Event-Based Rules
Event-based triggers fire when the object type must be all or matching and 
any filters applied will be respected.

#### Trigger Types

* Assign
* Unassign
* Create
* Delete
* Locked Out
* Modify
* Password Changed
* Disable
* Enable

### Scheduled Rules

Scheduled Rules run, on a schedule, of course.

To determine which Active Directory objects apply to the rule's
filter, the filter is converted to an LDAP query and polled against
AD. The returned objects are then verified a second time before applying
any rule actions to the object.



Currently, rules can only be scheduled to run daily.
Depending on the response to this feature, additional
scheduling flexibillity may be added in the future.

!!! danger

    Rules are powerful tools. Configurations exist that could,
    in very rare circumstances, disable every Domain account, effectively disabling your domain.

    Chances are ~ 1/(Number of User Accounts)^2

    The following combniation of conditions warrant precautions for this
    * The Application Base DN is the domain root
    * The rule filter could apply to all domain admins
    * The action disables or otherwise incapacitates the account

   

## Rule Filters
Filters allow filtering against any default or custom Active
Directory field. 

Leaving a filter blank results in the rule running for every
entry triggered.

!!! danger

    Leaving a scheduled rule's filter blank will lead to every applicable
    object type in Active Directory under the Application Root DN
    being acted on.
   
### Operators
Not all operators available for all attribute types.

Operators can be inverted with the Negate checkbox.

* Equals
* Starts With
* End With
* Coontains
* Before Now
* After Now
* Historicatal Time Frame
* Future Time Frame

## Rule Actions
Rule actions allow for Blazam to modify Active Directory objects.

* Modify Field
* Send Email (Not Implemented)
* Assign
* Unasign
* Lockout
* Unlock
* Enable
* Disable
* Move


