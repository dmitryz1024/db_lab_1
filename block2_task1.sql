UPDATE bookings.flights
SET scheduled_departure = scheduled_departure + INTERVAL '30 minutes',
    scheduled_arrival   = scheduled_arrival   + INTERVAL '30 minutes'
WHERE scheduled_departure::time >= '23:00:00' OR scheduled_departure::time <= '06:00:00'
  AND scheduled_departure::date BETWEEN '2017-09-11' AND '2017-09-12';