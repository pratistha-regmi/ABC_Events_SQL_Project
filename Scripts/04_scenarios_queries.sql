-- =========================================
-- 04_scenarios_queries.sql
-- Purpose: Scenarios & Queries (MySQL)
-- =========================================

/* ---------------------------------------------------------
Scenario 1:
Most expensive event + client + theme + paid vs remaining
--------------------------------------------------------- */
SELECT
    e.eventID,
    c.CLIENT_NAME,
    e.`DATE` AS event_date,
    th.TYPE  AS theme_type,
    totals.TotalInvoiceAmount,
    (totals.TotalInvoiceAmount - totals.RemainingBalance) AS TotalPaid,
    totals.RemainingBalance
FROM (
    SELECT
        e.eventID,
        SUM(i.AMOUNT) AS TotalInvoiceAmount,
        COALESCE(SUM(p.BALANCE_DUE), 0) AS RemainingBalance
    FROM EVENT e
    INNER JOIN EVENT_INVOICES ei ON ei.eventID = e.eventID
    INNER JOIN INVOICES i        ON i.invoiceID = ei.INVOICEID
    LEFT JOIN PAYMENT p          ON p.invoiceID = i.invoiceID
    GROUP BY e.eventID
) AS totals
INNER JOIN EVENT  e  ON e.eventID  = totals.eventID
INNER JOIN CLIENT c  ON c.clientID = e.clientID
INNER JOIN THEME  th ON th.themeID = e.themeID
ORDER BY totals.TotalInvoiceAmount DESC
LIMIT 1;


/* ---------------------------------------------------------
Scenario 2:
View events occurring between a specified time period
--------------------------------------------------------- */
SELECT eventID, `DATE`, `TIME`, themeID, venueID, clientID
FROM EVENT
WHERE `DATE` BETWEEN '2024-12-10' AND '2024-12-18';


/* ---------------------------------------------------------
Scenario 3:
Report of events happening at top venues (V01, V03, V05)
--------------------------------------------------------- */
SELECT eventID, `DATE`, `TIME`, venueID
FROM EVENT
WHERE venueID IN ('V01','V03','V05');


/* ---------------------------------------------------------
Scenario 4:
Link events to their invoices (billing details)
--------------------------------------------------------- */
SELECT 
    ei.eventID,
    i.invoiceID,
    i.ISSUE_DATE,
    i.AMOUNT,
    i.CLIENT_NAME
FROM EVENT_INVOICES ei
JOIN INVOICES i
  ON ei.INVOICEID = i.invoiceID
ORDER BY ei.eventID, i.invoiceID;


/* ---------------------------------------------------------
Scenario 5:
Most popular events by number of attendees
--------------------------------------------------------- */
SELECT 
    ae.eventID,
    COUNT(ae.ATTENDEE_NAME) AS attendee_count
FROM ATTENDEE_EVENT ae
GROUP BY ae.eventID
ORDER BY attendee_count DESC;


/* ---------------------------------------------------------
Scenario 6:
Repeated clients + how many events they hosted
--------------------------------------------------------- */
SELECT
    c.clientID,
    c.CLIENT_NAME,
    COUNT(e.eventID) AS number_of_events
FROM CLIENT c
LEFT JOIN EVENT e
  ON c.clientID = e.clientID
GROUP BY c.clientID, c.CLIENT_NAME
ORDER BY number_of_events DESC;


/* ---------------------------------------------------------
Scenario 7:
Invoice amount statistics for events that have payments
--------------------------------------------------------- */
SELECT
    MIN(i.AMOUNT)           AS Minimum_Amount,
    MAX(i.AMOUNT)           AS Maximum_Amount,
    ROUND(AVG(i.AMOUNT), 2) AS Average_Amount
FROM INVOICES i
INNER JOIN PAYMENT p
  ON i.invoiceID = p.invoiceID
WHERE p.BALANCE_DUE = 0;
