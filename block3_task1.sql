SELECT departure_airport,
       COUNT(*) AS flight_count,
       AVG(EXTRACT(EPOCH FROM (scheduled_arrival - scheduled_departure))/3600) AS avg_duration_hours
FROM bookings.flights
GROUP BY departure_airport
ORDER BY departure_airport;