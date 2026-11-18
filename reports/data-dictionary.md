# Customer service data dictionary

| Field | Meaning | Type |
|---|---|---|
| ticket_id | Unique support ticket | Text |
| created_date | Ticket creation date | Date |
| channel | Email, Chat or Phone | Category |
| issue_type | Customer issue category | Category |
| priority | Low, Medium or High | Category |
| agent | Fictional assigned agent | Category |
| first_response_minutes | Minutes to first response | Decimal |
| resolution_hours | Hours to resolution | Decimal |
| csat_score | Satisfaction score from 1 to 5 | Integer |
| status | Resolved or Open | Category |

All ticket and agent records are synthetic.