Feature: Lists
  A list is our top-level resource;
  it has a unique name
  and has many items

  Scenario: GET /lists
    Given some lists exist
    When I get a list of lists
    Then the response should have a status of 200
    And the response should includes a list of lists

  Scenario: POST /lists
    Given no list exists named "Books to Read"
    When I create a list named "Books to Read"
    Then the response should have a status of 201
    And the response should have a Location header
    And the response should include a json list

  Scenario: POST /lists - validation
    Given a list exists named "Books to Read"
    When I create a list named "Books to Read"
    Then the response should have a status of 422
    And the response should include a json error
