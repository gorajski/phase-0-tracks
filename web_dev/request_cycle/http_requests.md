*What are some common HTTP status codes?*
GET - (idempotent) Retrieve whatever is identified by the Request-URI.  Assumed to be unsecured communications.
HEAD - (idempotent) Retrieves whatever minus the message body.
OPTIONS - (inherently idempotent) Allows a request to be made on the resource to see what options are availabe without making a retrieval.
POST - (NOT idempotent) Non-cacheable requests as determined by the particular server.  Can be used for secure communications, as opposed to GET.
PUT - (idempotent) Similar to POST, but identifies a specific target location for the request.
DELETE - (idempotent) Requests that the server deletes the target resource.


*What is the difference between a GET request and a POST request? When might each be used?*
The GET request is cacheable and so vulnerable to be read by a third party.  A POST request is not cacheable and can be used when communications must be secure, such as in a credit card transaction.

*Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?*
A cookie is a small file placed on a users local drive to record the state of the user's last visit, so that some continuity can be maintained.  This enables additional functionality for either the user or the server.
