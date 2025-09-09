# Fields
The fields configuration section allows for the definition of custom schema attributes
in your Active Directory environment.

Once a field is defined, it will become available for delegation in [Permissions](permissions.md).

## Display Name
This is the label that will be shown for this attribute in Blazam.
It can be in your localized language for your convenience.

## Field Name
This is the name of the attribute as shown on the Attributes tab of the object
in Active Directory.

Remember, you need to enable `Advanced View` in ADUC to see the Attributes tab.

## Field Type
This should be set based on the type of data that the attribute stores. Check the
attribute values to determine the best match. If the value does not show in Blazam,
try a different type.

## Object Types
The final section of defining a field is the selection of object types. Check whichever
types the attribute is used on.