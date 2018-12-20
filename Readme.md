## Idea

Write a tool to find flight fares easily

## Use cases:

- Where can I go for a weekend? (or extended-weekend)
- I need to go to X country/city/airport. Which are the cheapest places to depart
from?
- I want to go to X, what are my options including jumps.

## Frontend

I'll experiment with use cases to come up with a UI that covers the use cases.
I expect to build a minimal thing and to iterate according to the feedback

I'll have a prototype in Elm

## Backend

There are a few sources. Skyscanner use to have a public API.
- Ryanair: https://api.ryanair.com/farefinder/3/oneWayFares?&departureAirportIataCode=STN&language=en&limit=16&market=en-gb&offset=0&outboundDepartureDateFrom=2018-12-15&outboundDepartureDateTo=2018-12-16&priceValueTo=50
- Wizzair seems interesting too
- ...
