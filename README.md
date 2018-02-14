# README

Event

index
- get
- localhost:3000/api/v1/events/
show
- get
- localhost:3000/api/v1/events/1
create
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
update
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
delete
- delete
- localhost:3000/api/v1/events/1
