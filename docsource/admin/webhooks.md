# Webhooks
Webhooks are a way for applications to communicate
with each other in real-time by sending data over
HTTP when specific events occur.

## Subscriptions
Blazam utilizes a subscription model for webhooks.

Each connection is subscribed to specific event types.

For now, webhooks subscriptions are domain wide, but per
OU subscriptions may come in a future update.

## Subscription Options
Each subscription can listen for certain event types, send via POST
or GET (only POST is implemented for now), a destination URL, SSL validation,
and an authorization token if required.

## Webhook Creation
To create a subscription, go to `Configure`->`Webhooks` and create a new connection.

Each connection shows the status of the last communication attempt to allow for
easy identification of misccofigured connections.

## Audit and Monitoring
Webhooks by their very nature, are transparent. Failure is invisible
to the web app user. Therefore, extensive auditing of webhooks is recorded by Blazam.

Every attempted message is recorded with failure details. To monitor webhook activity
go to `Audit`->`Webhooks`