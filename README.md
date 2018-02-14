# README
Endpoint para crear eventos

Event
- index
  - get
  - localhost:3000/api/v1/events/
- show
  - get
  - localhost:3000/api/v1/events/1
- create
  - post
  - localhost:3000/api/v1/events/
  ```
    {
        "event": {
            "name": "Star Wars Concert",
            "event_date": "2018-05-12",
            "number_of_tickets": 10,
            "place": "Auditorio Nacional",
            "pricing_by_ticket": 100
        }
    }
  ```
- update
  - put
  - localhost:3000/api/v1/events/1
  ```
  {
      "event": {
          "name": "Star Wars Concert",
          "event_date": "2018-10-12",
          "number_of_tickets": 10,
          "place": "Auditorio Nacional"
      }
  }
  ```
- delete
  - delete
  - localhost:3000/api/v1/events/1

--

Endpoint para crear comisiones

Commissions
- index
  - get
  - localhost:3000/api/v1/commissions/
- show
  - get
  - localhost:3000/api/v1/commissions/1
- create
  - post
  - localhost:3000/api/v1/commissions/
  ```
  {
    "commission": {
        "payment_form": "Paypal",
        "commission_amount": 15,
        "commission_type": "money",
        "event_id": 1
    }
  }
  ```
- update
  - put
  - localhost:3000/api/v1/commissions/1
  ```
  {
  	"commission": {
          "payment_form": "Paypal",
          "commission_amount": 5,
          "commission_type": "money",
          "event_id": 1
      }
  }
  ```
- delete
  - delete
  - localhost:3000/api/v1/commissions/1

--

Endpoint para crear usuarios

users
- index
  - get
  - localhost:3000/api/v1/users/
- show
  - get
  - localhost:3000/api/v1/users/1
- create
  - post
  - localhost:3000/api/v1/users/
  ```
  {
      "user": {
          "nickname": "LuisOsnet",
          "email": "luis@test.com"
      }
  }
  ```
- update
  - put
  - localhost:3000/api/v1/users/1
  ```
  {
      "user": {
          "nickname": "Luis",
          "email": "luis@test.com"
      }
  }
  ```
- delete
  - delete
  - localhost:3000/api/v1/users/1

--

Endpoint para crear ventas

purchases
- create
  - post
  - localhost:3000/api/v1/purchases/
  ```
  {
  	"purchase": {
  		"number_of_tickets": 2,
  		"commission_type": "money", (deposito = money / tarjeta = percentage)
  		"event_id": 1,
  		"user_id": 1
  	}
  }
  ```
