SELECT notes FROM purchase_orders
WHERE notes LIKE 'Purchase generated based on Order #%'
  AND CAST(SUBSTRING(notes, LENGTH(notes) - LOCATE('#', REVERSE(notes)) + 2) AS UNSIGNED) >= 30
  AND CAST(SUBSTRING(notes, LENGTH(notes) - LOCATE('#', REVERSE(notes)) + 2) AS UNSIGNED) <= 39;
