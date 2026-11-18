/* Customer Service Performance Analysis */
-- 1. Ticket volume and resolution status
SELECT status, COUNT(*) AS ticket_count FROM customer_tickets GROUP BY status;

-- 2. Average first response and resolution time by channel
SELECT channel, AVG(first_response_minutes) AS avg_first_response_mins,
       AVG(resolution_hours) AS avg_resolution_hours
FROM customer_tickets GROUP BY channel ORDER BY avg_first_response_mins;

-- 3. CSAT by issue type
SELECT issue_type, COUNT(*) AS ticket_count, AVG(csat_score) AS avg_csat
FROM customer_tickets GROUP BY issue_type ORDER BY avg_csat DESC;

-- 4. Agent performance
SELECT agent, COUNT(*) AS tickets,
       AVG(first_response_minutes) AS avg_first_response_mins,
       AVG(resolution_hours) AS avg_resolution_hours,
       AVG(csat_score) AS avg_csat
FROM customer_tickets GROUP BY agent ORDER BY avg_csat DESC;

-- 5. Monthly ticket trend
SELECT DATE_TRUNC('month', created_date) AS ticket_month,
       COUNT(*) AS tickets, AVG(csat_score) AS avg_csat
FROM customer_tickets GROUP BY 1 ORDER BY 1;

-- 6. High-priority unresolved workload
SELECT agent, COUNT(*) AS open_high_priority
FROM customer_tickets
WHERE priority = 'High' AND status <> 'Resolved'
GROUP BY agent ORDER BY open_high_priority DESC;