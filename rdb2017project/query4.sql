/* List the technicians (identifier and name) who can repair a product that they have also
sold for a cost greater than $1000. */
SELECT t.technician_id, t.technician_name
FROM hornbd.technician t, hornbd.can_repair r, hornbd.sells s
WHERE t.technician_id = r.technician_id AND t.technician_id = s.technician_id AND s.sales_amount > 1000;