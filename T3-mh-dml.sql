/*

ITO4132 Monash Hospital Task 3

Student ID: 32527942
Student Name: Nia Nelluri

Comments for your marker:

*/

/* (a) */
CREATE SEQUENCE patient_seq START WITH 200000 INCREMENT BY 10;
CREATE SEQUENCE admission_seq START WITH 200000 INCREMENT BY 10;
CREATE SEQUENCE adm_prc_seq START WITH 200000 INCREMENT BY 10;

/* (b) */
INSERT INTO patient (
    patient_id,
    patient_fname,
    patient_lname,
    patient_address,
    patient_dob,
    patient_contact_phn
) VALUES ( patient_seq.NEXTVAL,
           'Peter',
           'Xiu',
           '14 Narrow Lane Clayton',
           TO_DATE('01-10-1981','DD-MM-YYYY'),
           '0123456789' );
INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( admission_seq.NEXTVAL,
           TO_DATE('01-06-2024 13:00:00','DD-MM-YYYY HH24:MI:SS'),
           NULL,
           patient_seq.CURRVAL,
           (
               SELECT doctor_id
                 FROM doctor
                WHERE upper(doctor_lname) = 'HAISELL'
                  AND upper(doctor_fname) = 'SAWYER'
           ) );

COMMIT;

/* (c) */
INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) 
SELECT 
    adm_prc_seq.NEXTVAL,
    admission.adm_date_time + 26 / 24,
    procedure.proc_std_cost,
    item.item_cost * 2,
    admission.adm_no,
    procedure.proc_code,
    admission.doctor_id,
    NULL
  FROM admission
  JOIN patient ON admission.patient_id = patient.patient_id
  JOIN procedure ON upper(procedure.proc_name) = 'SCRATCH TEST'
  JOIN item ON item.item_description = '70% Alcohol Antiseptic Prep Pad, Sterile'
  WHERE patient.patient_fname = 'Peter' 
    AND patient.patient_lname = 'Xiu';
COMMIT;

/* (d) */
UPDATE doctor_speciality
   SET
    spec_code = (
        SELECT spec_code
          FROM speciality
         WHERE upper(spec_description) = 'VASCULAR SURGERY'
    )
 WHERE doctor_id = (
        SELECT doctor_id
          FROM doctor
         WHERE upper(doctor_lname) = 'BLANKHORN'
           AND upper(doctor_fname) = 'DECCA'
    )
   AND spec_code = (
    SELECT spec_code
      FROM speciality
     WHERE upper(spec_description) = 'THORACIC SURGERY'
);

COMMIT;


/* (e) */
DELETE FROM doctor_speciality
 WHERE spec_code = (SELECT spec_code FROM speciality WHERE upper(spec_description) = 'MEDICAL GENETICS');
DELETE FROM speciality
 WHERE upper(spec_description) = 'MEDICAL GENETICS';
COMMIT;

