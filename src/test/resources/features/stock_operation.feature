Feature: Client can insert new quotes to an exists Stock

  Scenario Outline: Insert new quotes to a Stock
    Given a stock with id "<stockId>" and the quote with "<date>" and "<price>"
    When client request the api
    Then the quote is created and the client receive the response status and JSON with "<stockId>" and quotes

    Examples: 
      | stockId  |    date     |  price  |
      | vale5    |  2021-06-01 | 	 10		 |
      | vale5    |  2021-07-02 |   11    |
      | vale5    |  2021-08-03 |   14    |