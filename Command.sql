/*Addison Gale
102914174*/

/* ERD to Rational Schema*/
/*
Tour(TourName, Description)
PK(Tourname)

Event(EventYear, EventMonth, EventDay, Fee, TourName)
PK(EventYear, EventMonth, EventDay)
FK(Tourname)

Booking(DateBooked, Payment, ClientID, Tourname, EventYear, EventMonth, EventDay)
FK(ClientID, Tourname, EventYear, EventMonth, EventDay)

Client(ClientID, Surname, GivenName, Gender)
PK(ClientID)
*/

CREATE database ToursChallenge

CREATE table TOUR(
    TourName    NVARCHAR(100)
    ,Description NVARCHAR(500)
    ,Primary Key  (TourName)
);

CREATE table CLIENT(
    ClientID    INT
    ,Surname    NVARCHAR(100)   NOT NULL
    ,GivenName  NVARCHAR(100)   NOT NULL
    ,Gender     NVARCHAR(1)
    ,Primary Key        (ClientID)     
);

CREATE table EVENT(
    EventMonth  NVARCHAR(3)
    ,EventDay   INT
    ,EventYear  INT
    ,EventFee   MONEY
    ,TourName    NVARCHAR(100)
    ,Foreign Key (TourName) REFERENCES TOUR
);

CREATE table BOOKING(
    Payment     MONEY
    ,DateBooked DATE
    ,ClientID   INT
    ,TourName   NVARCHAR(100)
    ,EventMonth NVARCHAR(3)
    ,EventDay   INT
    ,EventYear INT
    ,Foreign Key (ClientID) REFERENCES CLIENT
    ,Foreign Key (TourName) REFERENCES TOUR
    ,Foreign Key (EventMonth) REFERENCES EVENT
    ,Foreign Key (EventDay) REFERENCES EVENT
    ,Foreign Key (EventYear) REFERECES EVENT
);
