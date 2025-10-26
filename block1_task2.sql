SELECT *
FROM bookings.flights
WHERE arrival_airport = 'SVO'
  AND scheduled_arrival BETWEEN
      '2017-07-22 16:00:00+00' AND '2017-07-22 19:00:00+00';