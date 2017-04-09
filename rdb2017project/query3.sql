/* List name and ID for technicians in the Data Science unit who have SQL and R
programming as skills. */
SELECT t.technician_name, t.technician_id
FROM hornbd.technician t, hornbd.skill s
WHERE t.technician_id = s.technician_id AND s.skill_name = 'SQL' AND t.technician_id in(
    SELECT t.technician_id
    FROM hornbd.technician t, hornbd.skill s
    WHERE t.technician_id = s.technician_id AND s.skill_name = 'R');