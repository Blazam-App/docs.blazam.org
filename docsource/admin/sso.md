# Single Sign-On (SSO) Administration Guide

## Overview
Single Sign-On (SSO) allows users to authenticate once and gain access to multiple applications without needing to log in separately to each one. This guide provides instructions for administrators on how to configure and manage SSO for your organization.

## Password Locker
For organizations with a secure password locker platform, Blazam can be configured to use it for SSO authentication. 
This allows users to log in using their password locker credentials.

To use this feature, have your password locker platform send a POST request to your Blazam instance like the following example.

```POST => http(s)://<your-blazam-domain>/sso```

```Form Body => {username:<username>,password:<password>}```