/*

ITO4132 Monash Hospital Task 6 SQL

Student ID: 32527942
Student Name: Nia Nelluri

Comments for your marker:


*/

/* (a) */
SELECT
    JSON_OBJECT(
        '_id' VALUE d.doctor_id,
                'contact_details' VALUE
            JSON_OBJECT(
                'name' VALUE d.doctor_title
                             || ' '
                             || d.doctor_fname
                             || ' '
                             || d.doctor_lname,
                        'phone' VALUE d.doctor_phone
            ),
                'no_admissions' VALUE d.doctor_no_of_adm,
                'current_admissions' VALUE(
            SELECT COUNT(*)
              FROM admission ad
             WHERE ad.doctor_id = d.doctor_id
               AND ad.adm_discharge IS NULL
        ),
                'admissions_supervised' VALUE JSON_ARRAYAGG(
            JSON_OBJECT(
                'admission_no' VALUE ad.adm_no,
                        'discharged' VALUE ad.adm_discharge,
                        'patient_id' VALUE p.patient_id,
                        'patient_name' VALUE p.patient_fname
                                             || ' '
                                             || p.patient_lname,
                        'patient_phone' VALUE p.patient_contact_phn
            )
         ORDER BY ad.adm_no)
    FORMAT JSON)
  FROM doctor d
  JOIN admission ad
ON d.doctor_id = ad.doctor_id
  JOIN patient p
ON ad.patient_id = p.patient_id
 GROUP BY d.doctor_id,
          d.doctor_title,
          d.doctor_fname,
          d.doctor_lname,
          d.doctor_phone,
          d.doctor_no_of_adm
 ORDER BY d.doctor_id;