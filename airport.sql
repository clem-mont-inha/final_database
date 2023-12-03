SET check_function_bodies = false
;

CREATE TABLE "AircraftLocation"
  ("AircraftID" integer NOT NULL, "AirportID" integer NOT NULL);

CREATE TABLE "Aircrafts"(
  id integer NOT NULL,
  "Model" integer NOT NULL,
  "AirlineID" integer NOT NULL,
  "Capacity" integer NOT NULL,
  CONSTRAINT "Aircrafts_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Airlines"(
id integer NOT NULL, "name" integer NOT NULL,
  CONSTRAINT "Airlines_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Airports"(
  id integer NOT NULL,
  "Name" text NOT NULL,
  "Location" text NOT NULL,
  "Abbreviation" text NOT NULL,
  CONSTRAINT "Airports_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Baggage"(
  id integer NOT NULL,
  "Weight" integer NOT NULL,
  "Status" text NOT NULL,
  "PassengerID" integer NOT NULL,
  "FlightID" integer NOT NULL,
  CONSTRAINT "Baggage_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Booking"(
  id integer NOT NULL,
  "FlightID" integer NOT NULL,
  "PassengerID" integer NOT NULL,
  "Seat" text NOT NULL,
  "BookingDate" date NOT NULL,
  "TicketStatus" text NOT NULL,
  "Price" integer NOT NULL,
  CONSTRAINT "Booking_pkey" PRIMARY KEY(id)
);

CREATE TABLE "CrewMembers"(
  id integer NOT NULL,
  "FirstName" text NOT NULL,
  "LastName" text NOT NULL,
  "Role" text NOT NULL,
  "Airlines_id" integer NOT NULL,
  "Flights_id" integer NOT NULL,
  CONSTRAINT "CrewMembers_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Flights"(
  id integer NOT NULL,
  "AirlineID" integer NOT NULL,
  "AircraftID" integer NOT NULL,
  "DepartureTime" time with time zone NOT NULL,
  "ArrivalTime" time with time zone NOT NULL,
  "OriginAirportID" integer NOT NULL,
  "DestinationAirportID" integer NOT NULL,
  CONSTRAINT "Flights_pkey" PRIMARY KEY(id)
);

CREATE TABLE "Passengers"(
  id integer NOT NULL,
  "FirstName" text NOT NULL,
  "Lastname" text NOT NULL,
  "Nationality" text NOT NULL,
  "Passport" text NOT NULL,
  "Age" integer NOT NULL,
  CONSTRAINT "Passengers_pkey" PRIMARY KEY(id)
);

ALTER TABLE "Booking"
  ADD CONSTRAINT "Booking_FlightID_fkey"
    FOREIGN KEY ("FlightID") REFERENCES "Flights" (id);

ALTER TABLE "Booking"
  ADD CONSTRAINT "Booking_PassengerID_fkey"
    FOREIGN KEY ("PassengerID") REFERENCES "Passengers" (id);

ALTER TABLE "Flights"
  ADD CONSTRAINT "Flights_AircraftID_fkey"
    FOREIGN KEY ("AircraftID") REFERENCES "Aircrafts" (id);

ALTER TABLE "Baggage"
  ADD CONSTRAINT "Baggage_PassengerID_fkey"
    FOREIGN KEY ("PassengerID") REFERENCES "Passengers" (id);

ALTER TABLE "Baggage"
  ADD CONSTRAINT "Baggage_FlightID_fkey"
    FOREIGN KEY ("FlightID") REFERENCES "Flights" (id);

ALTER TABLE "Flights"
  ADD CONSTRAINT "Flights_OriginAirportID_fkey"
    FOREIGN KEY ("OriginAirportID") REFERENCES "Airports" (id);

ALTER TABLE "Flights"
  ADD CONSTRAINT "Flights_Airports_id_fkey1"
    FOREIGN KEY ("DestinationAirportID") REFERENCES "Airports" (id);

ALTER TABLE "AircraftLocation"
  ADD CONSTRAINT "AircraftLocation_AircraftID_fkey"
    FOREIGN KEY ("AircraftID") REFERENCES "Aircrafts" (id);

ALTER TABLE "AircraftLocation"
  ADD CONSTRAINT "AircraftLocation_AirportID_fkey"
    FOREIGN KEY ("AirportID") REFERENCES "Airports" (id);

ALTER TABLE "Aircrafts"
  ADD CONSTRAINT "Aircrafts_AirlineID_fkey"
    FOREIGN KEY ("AirlineID") REFERENCES "Airlines" (id);

ALTER TABLE "CrewMembers"
  ADD CONSTRAINT "CrewMembers_Airlines_id_fkey"
    FOREIGN KEY ("Airlines_id") REFERENCES "Airlines" (id);

ALTER TABLE "CrewMembers"
  ADD CONSTRAINT "CrewMembers_Flights_id_fkey"
    FOREIGN KEY ("Flights_id") REFERENCES "Flights" (id);

ALTER TABLE "Flights"
  ADD CONSTRAINT "Flights_AirlineID_fkey"
    FOREIGN KEY ("AirlineID") REFERENCES "Airlines" (id);
