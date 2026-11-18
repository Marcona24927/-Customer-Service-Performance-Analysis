-- PostgreSQL | Customer Service Performance Analysis
SELECT COUNT(*) AS total_tickets, ROUND(AVG(first_response_minutes),2) AS avg_response_min,
 ROUND(AVG(resolution_hours),2) AS avg_resolution_hours, ROUND(AVG(csat_score),2) AS avg_csat
FROM customer_tickets;
SELECT channel,COUNT(*) AS tickets,ROUND(AVG(first_response_minutes),2) AS avg_response_min,
 ROUND(AVG(csat_score),2) AS avg_csat FROM customer_tickets GROUP BY channel ORDER BY avg_response_min;
SELECT issue_type,COUNT(*) AS tickets,ROUND(AVG(csat_score),2) AS avg_csat
FROM customer_tickets GROUP BY issue_type ORDER BY avg_csat;
SELECT agent,COUNT(*) AS tickets,ROUND(AVG(first_response_minutes),2) AS avg_response_min,
 ROUND(AVG(resolution_hours),2) AS avg_resolution_hours,ROUND(AVG(csat_score),2) AS avg_csat
FROM customer_tickets GROUP BY agent ORDER BY avg_csat DESC;
SELECT status,priority,COUNT(*) AS ticket_count FROM customer_tickets GROUP BY status,priority;
SELECT COUNT(*) AS rows,COUNT(DISTINCT ticket_id) AS unique_tickets,
 COUNT(*) FILTER (WHERE csat_score NOT BETWEEN 1 AND 5 OR first_response_minutes<0 OR resolution_hours<0) AS invalid_rows
FROM customer_tickets;