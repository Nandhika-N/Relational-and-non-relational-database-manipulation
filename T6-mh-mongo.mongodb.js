// ITO4132 Monash Hospital Task 6 MongoDB
// *** Complete you details below ***
// Student ID: 32527942
// Student Name: Nia Nelluri
// Comments for your marker:
// **********************************

// ===================================================================================
// Do not modify or remove any of the comments below (items marked with //)
// ===================================================================================

// Use (connect to) your database - you MUST update/repalce xyz001
// with your authcate username

use("nnel0003");

// (b)
// PLEASE PLACE REQUIRED MONGODB COMMAND TO CREATE THE COLLECTION HERE
// YOU MAY PICK ANY COLLECTION NAME
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

// Drop collection
db.admissions.drop();

// Create collection and insert documents
db.admissions.insertOne({
  "_id": 1005,
  "contact_details": { "name": "Mr Erich Argabrite", "phone": "1755428382" },
  "no_admissions": 1,
  "current_admissions": 0,
  "admissions_supervised": [
    {
      "admission_no": 101,
      "discharged": "2024-01-05T21:01:43",
      "patient_id": 100110,
      "patient_name": "Abra Baltzar",
      "patient_phone": "4603386809"
    }
  ]
});
db.admissions.insertMany([
  {
    "_id": 1012,
    "contact_details": { "name": "Dr Tedi Jeeves", "phone": "9188264756" },
    "no_admissions": 2,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 102,
        "discharged": "2024-01-08T22:03:23",
        "patient_id": 100112,
        "patient_name": "Elberta Wisbey",
        "patient_phone": "5731239830"
      },
      {
        "admission_no": 122,
        "discharged": "2024-05-11T21:01:43",
        "patient_id": 100116,
        "patient_name": "Frannie Matthai",
        "patient_phone": "3589681689"
      }
    ]
  },
  {
    "_id": 1018,
    "contact_details": {
      "name": "Dr Caresa Cornilleau",
      "phone": "1334007521"
    },
    "no_admissions": 1,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 103,
        "discharged": "2024-06-06T23:09:25",
        "patient_id": 100114,
        "patient_name": "Florri MacGillespie",
        "patient_phone": "9676985009"
      }
    ]
  },
  {
    "_id": 1027,
    "contact_details": { "name": "Mr Mikaela Leyban", "phone": "9296294312" },
    "no_admissions": 2,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 104,
        "discharged": "2024-06-16T13:02:40",
        "patient_id": 100116,
        "patient_name": "Frannie Matthai",
        "patient_phone": "3589681689"
      },
      {
        "admission_no": 120,
        "discharged": "2024-05-04T20:20:43",
        "patient_id": 100110,
        "patient_name": "Abra Baltzar",
        "patient_phone": "4603386809"
      }
    ]
  },
  {
    "_id": 1028,
    "contact_details": { "name": "Ms Cherilyn Bray", "phone": "7359457889" },
    "no_admissions": 2,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 105,
        "discharged": "2024-02-22T06:08:30",
        "patient_id": 100118,
        "patient_name": "Carita Edscer",
        "patient_phone": "4874957355"
      },
      {
        "admission_no": 124,
        "discharged": "2024-03-29T22:12:30",
        "patient_id": 100128,
        "patient_name": "June Coskerry",
        "patient_phone": "4982146668"
      }
    ]
  },
  {
    "_id": 1033,
    "contact_details": { "name": "Dr Sawyer Haisell", "phone": "3914928134" },
    "no_admissions": 2,
    "current_admissions": 1,
    "admissions_supervised": [
      {
        "admission_no": 106,
        "discharged": "2024-02-28T22:12:35",
        "patient_id": 100128,
        "patient_name": "June Coskerry",
        "patient_phone": "4982146668"
      },
      {
        "admission_no": 200000,
        "discharged": null,
        "patient_id": 200000,
        "patient_name": "Peter Xiu",
        "patient_phone": "0123456789"
      }
    ]
  },
  {
    "_id": 1048,
    "contact_details": {
      "name": "Dr Steffane Banstead",
      "phone": "9466787825"
    },
    "no_admissions": 2,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 107,
        "discharged": "2024-03-06T20:11:15",
        "patient_id": 100140,
        "patient_name": "Gwenora Culter",
        "patient_phone": "3974025687"
      },
      {
        "admission_no": 126,
        "discharged": "2024-04-06T01:12:30",
        "patient_id": 100128,
        "patient_name": "June Coskerry",
        "patient_phone": "4982146668"
      }
    ]
  },
  {
    "_id": 1056,
    "contact_details": { "name": "Ms Minnnie Udey", "phone": "8158285073" },
    "no_admissions": 2,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 108,
        "discharged": "2024-03-29T22:44:30",
        "patient_id": 100152,
        "patient_name": "Neils Gravatt",
        "patient_phone": "8157726710"
      },
      {
        "admission_no": 128,
        "discharged": "2024-05-07T20:12:35",
        "patient_id": 100128,
        "patient_name": "June Coskerry",
        "patient_phone": "4982146668"
      }
    ]
  },
  {
    "_id": 1060,
    "contact_details": { "name": "Dr Decca Blankhorn", "phone": "4942993995" },
    "no_admissions": 1,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 109,
        "discharged": "2024-04-07T17:49:32",
        "patient_id": 100175,
        "patient_name": "Doralin O'Brogane",
        "patient_phone": "7905565879"
      }
    ]
  },
  {
    "_id": 1061,
    "contact_details": { "name": "Mr Jere Digman", "phone": "1281091935" },
    "no_admissions": 1,
    "current_admissions": 0,
    "admissions_supervised": [
      {
        "admission_no": 110,
        "discharged": "2024-04-16T19:42:32",
        "patient_id": 100187,
        "patient_name": "Sebastien Bodsworth",
        "patient_phone": "2089184475"
      }
    ]
  }
]);

// (c)
// List all documents you added
db.admissions.find();

// (d)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer

db.admissions.find(
  {
    "$and": [
      { "no_admissions": { "$gte": 2 } },
      { "current_admissions": { "$ne": 0 } }
    ]
  },
  { "_id": 1, "contact_details.name": 1, "contact_details.phone": 1 }
);

// (e)
// PLEASE PLACE REQUIRED MONGODB COMMAND/S FOR THIS PART HERE
// ENSURE that your query is formatted and has a semicolon
// (;) at the end of this answer
db.admissions.find(
  { _id: 1033 },
  { "_id": 1, "contact_details.name": 1, "contact_details.phone": 1 }
);

// Show the document before the patient is discharged
db.admissions.find(
  { _id: 1033, "admissions_supervised.admission_no": 200000 },
  { "_id": 1, "admissions_supervised.$": 1 }
);

// Discharge your patient
db.admissions.updateOne(
  { _id: 1033, "admissions_supervised.admission_no": 200000 },
  { "$set": { "admissions_supervised.$.discharged": "2024-06-11T20:25:15" } }
);

// Illustrate/confirm changes made
db.admissions.find(
  { _id: 1033 },
  {
    "_id": 1,
    "contact_details.name": 1,
    "contact_details.phone": 1,
    "admissions_supervised": 1
  }
);
