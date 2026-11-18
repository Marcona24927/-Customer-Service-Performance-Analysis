## Suggested Power BI dashboard

**KPI cards:** Total Tickets, Open Tickets, Average First Response (minutes), Average Resolution (hours), Average CSAT.

**Visuals:**
- Line chart: ticket volume by month.
- Bar chart: tickets by issue type and channel.
- Column chart: average CSAT by agent.
- Scatter chart: first response time versus CSAT.
- Matrix: agent by ticket status and priority.

**Slicers:** created date, channel, issue type, priority, agent.

**Suggested measures:** Ticket Count = COUNTROWS(customer_tickets); Average CSAT = AVERAGE(customer_tickets[csat_score]); Open Tickets = CALCULATE([Ticket Count], customer_tickets[status] = "Open").

Treat the supplied records as synthetic practice data. Compare service levels across channels and agents, and investigate whether slower responses coincide with lower satisfaction.