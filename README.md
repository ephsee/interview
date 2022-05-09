Build a REST API (levels 1 and 2 only; NOT for seniors)
Rubric Items Covered: System Design

CoderPad Link: https://coderpad.io/questions/94837

Problem

We have recently added a new database resource for “orders” living behind a deployed server. Any end client of this server (could be another internal server or a customer’s browser, etc) will need to be able to create new orders, fetch all existing orders, fetch individual orders, update individual orders, and delete individual orders. To support this, build out an API that follows RESTful practices.


Key Requirements

Design an API that supports each of:

Creating an order

Updating an order

Fetching a singular order

Fetch all orders

Deleting an order

The API should follow RESTful practices

Proper HTTP methods and URIs are used per action

The API should return error responses when appropriate

Response payload formats should be established

(Level II+) API should be versioned

(Level II+) the URI for returning all orders should be paginated

Solution

Candidates should write effective URIs for each of the required actions. Candidates should also map proper HTTP methods to each of the actions. Candidates should be cognizant of naming conventions and should use URL parameters instead of body or query parameters.


Candidates should be able to identify cases where the API may need to handle and return an error (e.g. missing resource). Furthermore, candidates should establish response body formats for both successful and unsuccessful requests. Similarly, candidates should note at least some of the expected status codes to be returned.


For level II engineers and above, URIs should be versioned and a pagination format should be established for fetching all orders.


Example Solution

```

# URI Set

GET /orders/v1/<int>  # fetch an order

GET /orders/v1  # fetch all orders

GET /orders/v1?page=<int>&per_page=<int>  # fetch all orders, paginated

POST /orders/v1  # create an order

PUT /orders/v1/<int>  # replace/update a full order

PATCH /orders/v1/<int>  # update part of an order

DELETE /orders/v1/<int>


# Response Format

{

  “orders”: [<order objects>],

}

# OR (depending on action)

{

  “order”: <order object>,

}


# Error Response Format

{

  “message”: <string>,

  “errors”: [<error object|string>],

}


# Status Codes

200 - success (e.g. order(s) returned, order updated)

201 - success (e.g. order created)

400 - bad request (e.g. missing data to create order)

401 - unauthorized (e.g. missing authorization header)

404 - not found (e.g. specified order is not found)

405 - method not found (e.g. cannot POST /orders/<int>)

```

Grading Rubric


Criteria

Engineer I

Engineer II

Senior Engineer

System Design

Is aware of RESTful practices and understands the basic concepts for establishing URIs. Can link actions to appropriate HTTP methods; may use PUT but not PATCH. Has seen similar APIs and can think through/establish what a basic response format may look like. Is aware of at least some status codes such as 200 and 404.

Meets Engineer I expectations. Is aware of several different status codes and their uses. Can version an API’s URIs. Can paginate a URI for fetching all orders. Is cognizant of end client needs in establishing response bodies.

N/A

