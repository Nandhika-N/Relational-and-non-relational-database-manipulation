/*

ITO4132 Monash Hospital Task 4

Student ID: 32527942
Student Name: Nia Nelluri

Comments for your marker: File name kept as T4-mh-queries.sql as initially requested by instructions, this is the equivalent file to T4-mh-select.sql.

*/

/* (a) */
SELECT patient.patient_id AS "PATIENT_ID",
       patient.patient_fname
       || ' '
       || patient.patient_lname AS "PATIENT_NAME",
       to_char(
           admission.adm_date_time,
           'DD-Mon-YYYY HH24:MI'
       ) AS "ADMISSION_DATE_TIME",
       doctor.doctor_title
       || ' '
       || doctor.doctor_fname
       || ' '
       || doctor.doctor_lname AS "DOCTOR_NAME"
  FROM admission
  JOIN patient
ON admission.patient_id = patient.patient_id
  JOIN doctor
ON admission.doctor_id = doctor.doctor_id
 WHERE to_char(
    admission.adm_date_time,
    'DD-MM-YYYY'
) = '01-06-2024'
 ORDER BY admission.adm_date_time,
          patient.patient_id;

/* (b) */
SELECT procedure.proc_code,
       procedure.proc_name,
       procedure.proc_description,
       to_char(
           procedure.proc_std_cost,
           '$99999999.99'
       ) AS "STANDARD_COST"
  FROM procedure
 WHERE procedure.proc_std_cost < (
    SELECT AVG(proc_std_cost)
      FROM procedure
)
 ORDER BY procedure.proc_std_cost DESC,
          procedure.proc_code; 

/* (c) */
SELECT patient.patient_id,
       patient.patient_lname,
       patient.patient_fname,
       to_char(
           patient.patient_dob,
           'DD-Mon-YYYY'
       ) AS dob,
       COUNT(admission.adm_no) AS numberadmissions
  FROM patient
  JOIN admission
ON admission.patient_id = patient.patient_id
 GROUP BY patient.patient_id,
          patient.patient_lname,
          patient.patient_fname,
          patient.patient_dob
HAVING COUNT(admission.adm_no) >= 2
 ORDER BY COUNT(admission.adm_no) DESC,
          patient.patient_dob;

/* (d) */
SELECT admission.adm_no,
       patient.patient_id,
       patient.patient_fname,
       patient.patient_lname,
       lpad(
           to_char(trunc(admission.adm_discharge - admission.adm_date_time))
           || ' days '
           || to_char(round(
               MOD(
                   (admission.adm_discharge - admission.adm_date_time) * 24,
                   24
               ),
               1
           ))
           || ' hrs',
           20
       ) AS stay_length
  FROM patient
  JOIN admission
ON admission.patient_id = patient.patient_id
 WHERE admission.adm_discharge IS NOT NULL
   AND ( admission.adm_discharge - admission.adm_date_time ) > (
    SELECT AVG(adm_discharge - adm_date_time)
      FROM admission
     WHERE adm_discharge IS NOT NULL
)
 ORDER BY admission.adm_no;
 
/* (e) */
SELECT procedure.proc_code,
       procedure.proc_name,
       procedure.proc_description,
       procedure.proc_time,
       lpad(
           to_char(
               round(
                   procedure.proc_std_cost - avg(adm_prc.adprc_pat_cost),
                   2
               ),
               '9990.00'
           ),
           11
       ) AS "PRICE_DIFFERENTIAL"
  FROM procedure
  JOIN adm_prc
ON procedure.proc_code = adm_prc.proc_code
 GROUP BY procedure.proc_code,
          procedure.proc_name,
          procedure.proc_description,
          procedure.proc_time,
          procedure.proc_std_cost
 ORDER BY procedure.proc_code;
/* (f) */
SELECT procedure.proc_code,
       procedure.proc_name,
       nvl(
           item_treatment.item_code,
           '---'
       ) AS "ITEM_CODE",
       nvl(
           item.item_description,
           '---'
       ) AS "ITEM_DESCRIPTION",
       lpad(
           nvl(
               to_char(max(item_treatment.it_qty_used)),
               '---'
           ),
           12
       ) AS "MAX_QTY_USED"
  FROM procedure
  JOIN adm_prc
ON procedure.proc_code = adm_prc.proc_code
  JOIN item_treatment
ON adm_prc.adprc_no = item_treatment.adprc_no
  JOIN item
ON item.item_code = item_treatment.item_code
 GROUP BY procedure.proc_code,
          procedure.proc_name,
          item_treatment.item_code,
          item.item_description
HAVING MAX(item_treatment.it_qty_used) >= ALL (
    SELECT MAX(item_treatment.it_qty_used)
      FROM adm_prc
      JOIN item_treatment
    ON adm_prc.adprc_no = item_treatment.adprc_no
     WHERE adm_prc.proc_code = procedure.proc_code
     GROUP BY item_treatment.item_code
)
UNION
SELECT procedure.proc_code,
       procedure.proc_name,
       '---' AS "ITEM_CODE",
       '---' AS "ITEM_DESCRIPTION",
       lpad(
           '---',
           12
       ) AS "MAX_QTY_USED"
  FROM procedure
 WHERE procedure.proc_code NOT IN (
    SELECT adm_prc.proc_code
      FROM adm_prc
)
 ORDER BY 2,
          3;