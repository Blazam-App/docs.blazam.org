# Rules
Rules provide an additional level of automation. With it,
business rules and conformity standards can be applied. With the use of custom Active
Directory Schema unlimited functionality is possible.
## Creaion
Rules operate on a subscription model like many other Blazam
elements. To fire, the object type must be all or matching and 
any filters applied will be respected.
### Triggers
Availabble triggers.

* Assign
* Unassign
* Create
* Delete
* Locked Out
* Modify
* Password Changed
* Disable
* Enable
* Scheduled

### Filters
Filters allow filtering against any default or custom Active
Directory field. 

#### Operators
Not all operators available for all attribute types.

* Equals
* Starts With
* End With
* Coontains
* Before Now
* After Now
* Historicatal Time Frame
* Future Time Frame

#### Actions
* Modify Field
* Send Email (Not Implemented)
* Assign
* Unasign
* Lockout
* Unlock
* Enable
* Disabble
* Move


## Execution
Rules are executes in one of two ways.

1. An Active Directory Entry is modified in soome way.
1. A scheduled time has passed

### Event Driven
When a change in Blazam occurrs the rules are chhecked for
any applicable rules to execute for the changed enry.

### Scheduled
At the timee of day set the rule will execute against all Active Directory entries.
