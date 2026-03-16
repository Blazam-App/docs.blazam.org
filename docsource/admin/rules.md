# Rules
Rules provide an additional level of automation. With them,
business rules and conformity standards can be applied. With the use of a custom Active
Directory schema, unlimited functionality is possible.

## Global Rule Settings

All automation rules can be enabled or disabled globally from the rules settings page. 
When disabled, no rules will execute regardless of their individual enabled state. This 
provides a master switch to quickly pause all automation without needing to disable 
rules individually.

## Exclusions

!!! info

    Rules are blocked from executing on the account provided to Blazam.

### Excluded Groups

A configurable list of excluded groups can be defined in the rules settings. Any Active 
Directory entry that is a member of an excluded group will be completely skipped by all 
rules, both event-based and scheduled.

This provides an additional safety mechanism to protect critical accounts or groups from 
automation. Common use cases include:

* Excluding Domain Admins or Enterprise Admins groups
* Protecting service accounts
* Preventing automation on VIP user accounts

To configure excluded groups:

1. Navigate to the Rules settings page
2. Click the "gear" settings button at the top of the page
3. Add groups that should be exempt from rule processing

#### Default Excluded Groups
If no changes are made to the excluded groups list, the following groups are excluded by default:

* Domain Admins
* Enterprise Admins
* Domain Controllers

## Rule Priority

Rules execute in order based on their assigned priority number. When multiple rules apply 
to the same trigger or schedule, they will process sequentially from highest to lowest 
priority (lowest number first).

This ordering is critical when rules interact with each other or when using the 
__Stop On This Rule__ setting described below.

## Rule Triggers
There are two types of rules in Blazam: Event-Based and Scheduled.

### Event-Based Rules
Event-based triggers fire when the object type of the rule is set to `All` or matches the
changed entry's type and all attribute filters applied are met.

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

Scheduled rules run on a schedule, of course.

To determine which Active Directory objects apply to the rule's
filter, the filter is converted to an LDAP query and polled against
AD. The returned objects are then verified a second time before applying
any rule actions to the object.

Currently, rules can only be scheduled to run daily at a specific time.
Depending on the response to this feature, additional
scheduling flexibility may be added in the future.

#### Scheduling Details

The rules processor runs every 5 minutes to check for scheduled rules. A scheduled 
rule will be queued for execution if:

* The scheduled run time is within the next 11 minutes
* The current time has not yet passed the scheduled time

If the scheduled time has already passed when the rule is queued, it will automatically 
be scheduled for the same time on the following day.

!!! note "Performance"

    Rule execution runs with low thread priority to minimize impact on system 
    performance. Large-scale scheduled rules may take time to complete without 
    affecting normal operations.

!!! danger

    Scheduled rules are powerful tools. Configurations exist that could,
    in very rare circumstances, disable every domain account other than the one
    provided to Blazam. This would be a very bad day.

    The following combination of conditions warrants precautions for this:

    * The Application Base DN is the domain root
    * The rule filter could apply to all domain admins
    * The action disables or otherwise incapacitates the account
    * No excluded groups are set in the Global Rule Settings


## Rule Expiration

Rules can be configured with an optional expiration date. Once a rule reaches its 
expiration date, it will automatically stop executing even if it remains enabled. 
This is useful for:

* Temporary automation during specific periods (e.g., holiday freeze, maintenance windows)
* Time-limited business rules that should automatically deactivate
* Testing automation with a built-in safety date

Expired rules can be re-enabled by either removing the expiration date or setting a 
new future expiration date.

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
Not all operators are available for all attribute types.

Operators can be inverted with the Negate checkbox.

* Equals
* Starts With
* Ends With
* Contains
* Before Now
* After Now
* Historical Time Frame
* Future Time Frame

## Rule Actions
Rule actions allow Blazam to modify Active Directory objects.

* Modify Field
* Send Email (Not Yet Implemented)
* Assign
* Unassign
* Lockout
* Unlock
* Enable
* Disable
* Move

## Stop On This Rule

Each rule has a __Stop On This Rule__ setting that controls whether subsequent lower-priority 
rules should execute.

When enabled, if the rule matches and executes successfully, no other rules with lower 
priority will be processed for that entry. This is useful to:

* Prevent conflicting rules from overwriting each other's changes
* Create "catch-all" rules that should be the final action
* Implement rule hierarchies where higher-priority rules take precedence

When disabled (default), all applicable rules will execute in priority order regardless 
of what previous rules have done.

!!! example

    You might have a high-priority rule that disables accounts based on specific criteria, 
    with __Stop On This Rule__ enabled. This ensures that any lower-priority rules that 
    might enable or modify those accounts won't interfere.

## Matches Preview
When viewing rules, a matches button will show the matched Active Directory
objects for that rule's filters when clicked. This allows visibility into
what objects will be affected when the rule is triggered/run.

## Rule Timestamps
Rules show the last triggered and last executed times.

### Last Triggered
The last time a matching event within Blazam occurs, or the scheduled time
is reached.

### Last Executed
The last time a rule performed an action on an Active Directory object that
matched the rule's filters.

## Manual Execution
Scheduled rules allow for on-demand execution to process the
rule before the scheduled time.

## Rule Audit
An audit log of rule executions is available and reports on errors that occur.

