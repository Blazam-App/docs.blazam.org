# Application Settings
## Application Name
Brand Blazam with your own personalized name.

## Homepage Message
Messages entered here will be displayed to all users
on their home page dashboard. The text has full HTML support
for message customization.

## Force HTTPS
Forces HTTP connections to HTTPS.

## User Helpdesk URL
!!! warning

	Not currently implemented

This is your organization's tech support portal for help buttons within Blazam.

## Branding Icon
Upload your organization's logo or other image to use within the app. 
!!! note
	
	The icons used in Blazam are sent to the browser in a method that
	tells the browser to cache the image for up to 24 hours. This reduces
	traffic between the web server and the database. Keep this in mind when
	changing the Branding Icon.

## Website FQDN
!!! note

	This must be set to allow for email links and self-service password reset email verifications

The fully qualified domain name of your Blazam instance for use in email notification links.

## SSL Certificate
!!! info

	Only available when running Blazam as a service. Use IIS Manager to control
	SSL when running under IIS. For nginx or Apache, configure SSL via their 
	respective hosting settings or by utilizing this settings.

Upload an SSL certificate with private key to use for encryption