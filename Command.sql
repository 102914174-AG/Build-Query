/*Addison Gale
102914174*/

/* ERD to Rational Schema*/
/*Tour(TourName, Description)
PK(Tourname)

Event(EventYear, EventMonth, EventDay, Fee, TourName)
PK(EventYear, EventMonth, EventDay)
FK(Tourname)

Booking(DateBooked, Payment, ClientID, Tourname, EventYear, EventMonth, EventDay)
FK(ClientID, Tourname, EventYear, EventMonth, EventDay)

Client(ClientID, Surname, GivenName, Gender)
PK(ClientID)