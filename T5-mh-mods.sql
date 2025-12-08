/*

ITO4132 Monash Hospital Task 5

Student ID: 32527942
Student Name: Nia Nelluri

Comments for your marker: Check constraint not needed for part a because NUMBER(4) is already limited to values 0-9999.


*/

/* (a) */

-- Describe table before changes
DESC doctor;

ALTER TABLE doctor ADD (
    doctor_no_of_adm NUMBER(4) DEFAULT 0 NOT NULL
);
COMMENT ON COLUMN doctor.doctor_no_of_adm IS
    'No. of admissions the doctor has supervised';
COMMIT;

-- Describe changes
DESC doctor;

UPDATE doctor d
   SET
    doctor_no_of_adm = (
        SELECT COUNT(*)
          FROM admission a
         WHERE a.doctor_id = d.doctor_id
    );
COMMIT;

-- Show changes (select)
SELECT doctor_id,
       doctor_fname,
       doctor_lname,
       doctor_no_of_adm
  FROM doctor
 ORDER BY doctor_id;


/* (b) */

-- i.
ALTER TABLE admission ADD (
    adm_daily_bed_cost NUMBER(3) DEFAULT 321
);
COMMENT ON COLUMN admission.adm_daily_bed_cost IS
    'The daily charge for admitted patients to use a hospital bed';
COMMIT;

-- Describe changes
DESC admission;

--ii.
DROP TABLE invoice CASCADE CONSTRAINTS;

CREATE TABLE invoice (
    inv_no               NUMBER(6) NOT NULL,
    adm_no               NUMBER(6) NOT NULL,
    inv_adprc_total_cost NUMBER(6),
    inv_total_bed_charge NUMBER(4) NOT NULL,
    inv_paid             CHAR(1) DEFAULT 'N'
);
COMMENT ON TABLE invoice IS
    'Stores all billing and payment information';
COMMENT ON COLUMN invoice.inv_no IS
    'The unique invoice number for a given admission (PK)';
COMMENT ON COLUMN invoice.inv_adprc_total_cost IS
    'The total cost of all procedures during a given admission (patient procedure and item costs)'
    ;
COMMENT ON COLUMN invoice.inv_total_bed_charge IS
    'The total bed charge for the entire admission duration';
COMMENT ON COLUMN invoice.inv_paid IS
    'Shows whether the invoice has been paid, Yes - "Y" or No - "N"';
COMMIT;

-- Describe changes
DESC invoice;

ALTER TABLE invoice
    ADD CONSTRAINT admission_invoice_fk FOREIGN KEY ( adm_no )
        REFERENCES admission ( adm_no );
ALTER TABLE invoice ADD CONSTRAINT invoice_pk PRIMARY KEY ( inv_no );
ALTER TABLE invoice ADD CONSTRAINT uq_adm_no UNIQUE ( adm_no );
ALTER TABLE invoice
    ADD CONSTRAINT ck_inv_paid CHECK ( inv_paid IN ( 'Y',
                                                     'N' ) );
COMMIT;

-- Describe changes
DESC invoice;

CREATE SEQUENCE inv_no START WITH 100 INCREMENT BY 1;

INSERT INTO invoice (
    inv_no,
    adm_no,
    inv_paid,
    inv_adprc_total_cost,
    inv_total_bed_charge
)
    SELECT inv_no.NEXTVAL,
           adm_no,
           'N',
           0,
           0
      FROM admission
     WHERE adm_discharge IS NOT NULL;
COMMIT;

-- Show changes (select)
SELECT *
  FROM invoice;

UPDATE invoice i
   SET
    inv_adprc_total_cost = (
        SELECT SUM(ad.adprc_pat_cost + ad.adprc_items_cost)
          FROM adm_prc ad
         WHERE i.adm_no = ad.adm_no
    );
COMMIT;

-- Show changes (select)
SELECT *
  FROM invoice;

UPDATE invoice i
   SET
    inv_total_bed_charge = (
        SELECT ceil(a.adm_discharge - a.adm_date_time) * a.adm_daily_bed_cost
          FROM admission a
         WHERE i.adm_no = a.adm_no
    );
COMMIT;

-- Show changes (select)
SELECT *
  FROM invoice;









