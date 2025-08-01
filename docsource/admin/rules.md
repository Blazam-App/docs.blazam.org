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

    Scheduled rules are powerful tools. Configurations exist that could,
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
* Contains
* Before Now
* After Now
* Historical Time Frame
* Future Time Frame

## Rule Actions
Rule actions allow for Blazam to modify Active Directory objects.

* Modify Field
* Send Email (Not Yet Implemented)
* Assign
* Unasign
* Lockout
* Unlock
* Enable
* Disable
* Move

## After Execution
A setting is available to prevent execution of remaining rules if a
rule should conflict with the intent of a lower priority rule.

## Matches Preview
When viewing rules, a matches button will show the matched Active Directory
objects for that rule's filtes when clicked. This allows visibility into
what objects will be affected when the rule is triggered/run.

## Rule Timestamps
Rules show the last triggered and last executed times.
### Last Triggerd
The last time a matching event within Blazam occurs, or the scheduled time
is reached.
### Last Executed
The last time a rule performed an action on an Active Directory object that
matched the rule's filters.

## Manual Execution
Scheduled rules allow for on-demand execution to process the
rule before the scheduled time.


