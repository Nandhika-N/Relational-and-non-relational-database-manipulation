/*ITO4132 Monash Hospital Task 2
Student ID: 32527942
Student Name: Nia Nelluri
Comments for your marker: ASSUMING THAT BLOOD TESTS AND XRAYS ARE DONE BY TECHS, NOT DOCTORS.*/

-- INSERTING into ADMISSION
INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 101,
           TO_DATE('02-01-2024 02:02:44','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('05-01-2024 21:01:43','DD-MM-YYYY hh24:mi:ss'),
           100110,
           1005 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 120,
           TO_DATE('02-05-2024 01:02:44','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('04-05-2024 20:20:43','DD-MM-YYYY hh24:mi:ss'),
           100110,
           1027 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 122,
           TO_DATE('07-05-2024 02:02:44','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('11-05-2024 21:01:43','DD-MM-YYYY hh24:mi:ss'),
           100116,
           1012 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 102,
           TO_DATE('05-01-2024 03:06:34','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('08-01-2024 22:03:23','DD-MM-YYYY hh24:mi:ss'),
           100112,
           1012 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 103,
           TO_DATE('01-06-2024 13:00:00','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('06-06-2024 23:09:25','DD-MM-YYYY hh24:mi:ss'),
           100114,
           1018 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 104,
           TO_DATE('01-06-2024 02:06:25','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('16-06-2024 13:02:40','DD-MM-YYYY hh24:mi:ss'),
           100116,
           1027 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 105,
           TO_DATE('17-02-2024 03:11:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('22-02-2024 06:08:30','DD-MM-YYYY hh24:mi:ss'),
           100118,
           1028 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 106,
           TO_DATE('25-02-2024 03:08:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('28-02-2024 22:12:35','DD-MM-YYYY hh24:mi:ss'),
           100128,
           1033 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 124,
           TO_DATE('25-03-2024 03:06:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('29-03-2024 22:12:30','DD-MM-YYYY hh24:mi:ss'),
           100128,
           1028 );
INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 126,
           TO_DATE('01-04-2024 20:08:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('06-04-2024 01:12:30','DD-MM-YYYY hh24:mi:ss'),
           100128,
           1048 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 128,
           TO_DATE('02-05-2024 03:08:30','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('07-05-2024 20:12:35','DD-MM-YYYY hh24:mi:ss'),
           100128,
           1056 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 107,
           TO_DATE('03-03-2024 01:12:20','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('06-03-2024 20:11:15','DD-MM-YYYY hh24:mi:ss'),
           100140,
           1048 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 108,
           TO_DATE('23-03-2024 23:02:14','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('29-03-2024 22:44:30','DD-MM-YYYY hh24:mi:ss'),
           100152,
           1056 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 109,
           TO_DATE('04-04-2024 09:44:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('07-04-2024 17:49:32','DD-MM-YYYY hh24:mi:ss'),
           100175,
           1060 );

INSERT INTO admission (
    adm_no,
    adm_date_time,
    adm_discharge,
    patient_id,
    doctor_id
) VALUES ( 110,
           TO_DATE('08-04-2024 07:48:40','DD-MM-YYYY hh24:mi:ss'),
           TO_DATE('16-04-2024 19:42:32','DD-MM-YYYY hh24:mi:ss'),
           100187,
           1061 );

-- INSERTING into ADM_PRC
INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20100,
           TO_DATE('10-04-2024 12:40:30','DD-MM-YYYY hh24:mi:ss'),
           36.55,
           50,
           110,
           40100,
           1061,
           1028 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20101,
           TO_DATE('06-04-2024 11:40:30','DD-MM-YYYY hh24:mi:ss'),
           120.65,
           40,
           109,
           43114,
           1060,
           1005 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20102,
           TO_DATE('25-03-2024 11:40:30','DD-MM-YYYY hh24:mi:ss'),
           633.70,
           20,
           108,
           27459,
           1056,
           1060 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20103,
           TO_DATE('05-03-2024 11:40:30','DD-MM-YYYY hh24:mi:ss'),
           40.30,
           20,
           107,
           40099,
           1048,
           1012 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20104,
           TO_DATE('26-02-2024 11:30:30','DD-MM-YYYY hh24:mi:ss'),
           389.66,
           50,
           106,
           43112,
           1033,
           1060 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20105,
           TO_DATE('18-02-2024 10:40:30','DD-MM-YYYY hh24:mi:ss'),
           380.90,
           50,
           105,
           49518,
           1028,
           1298 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20106,
           TO_DATE('14-06-2024 2:55:30','DD-MM-YYYY hh24:mi:ss'),
           79.45,
           60,
           104,
           15510,
           1027,
           2459 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20107,
           TO_DATE('02-06-2024 7:30:20','DD-MM-YYYY hh24:mi:ss'),
           355.37,
           50,
           103,
           43111,
           1018,
           1005 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20108,
           TO_DATE('12-04-2024 01:45:30','DD-MM-YYYY hh24:mi:ss'),
           40.55,
           70,
           110,
           40099,
           1061,
           1012 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20109,
           TO_DATE('14-04-2024 07:20:30','DD-MM-YYYY hh24:mi:ss'),
           244.05,
           200,
           110,
           54132,
           1061,
           1084 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20110,
           TO_DATE('10-04-2024 11:40:30','DD-MM-YYYY hh24:mi:ss'),
           70.45,
           12,
           109,
           33335,
           1060,
           1060 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20111,
           TO_DATE('11-04-2024 11:40:30','DD-MM-YYYY hh24:mi:ss'),
           34.04,
           15,
           109,
           65554,
           1060,
           NULL );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20112,
           TO_DATE('19-02-2024 10:40:30','DD-MM-YYYY hh24:mi:ss'),
           243.10,
           190,
           105,
           43556,
           1028,
           1005 );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20113,
           TO_DATE('20-02-2024 10:40:30','DD-MM-YYYY hh24:mi:ss'),
           75.60,
           30,
           105,
           15509,
           1028,
           NULL );

INSERT INTO adm_prc (
    adprc_no,
    adprc_date_time,
    adprc_pat_cost,
    adprc_items_cost,
    adm_no,
    proc_code,
    request_dr_id,
    perform_dr_id
) VALUES ( 20114,
           TO_DATE('27-02-2024 10:40:30','DD-MM-YYYY hh24:mi:ss'),
           79.66,
           10,
           105,
           15510,
           1028,
           NULL );


-- INSERTING into ITEM_TREATMENT
INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20105,
           'KN056',
           1,
           123 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20100,
           'AN002',
           1,
           182.33 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20111,
           'AP010',
           1,
           2.2 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20105,
           'SS006',
           9,
           135.9 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20103,
           'EA030',
           1,
           110.15 );


INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20101,
           'TN010',
           1,
           0.45 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20107,
           'CA002',
           2,
           4.5 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20102,
           'AP050',
           1,
           81.2 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20109,
           'BI500',
           1,
           365.48 );

INSERT INTO item_treatment (
    adprc_no,
    item_code,
    it_qty_used,
    it_item_total_cost
) VALUES ( 20104,
           'LB250',
           1,
           215.1 );

COMMIT;
