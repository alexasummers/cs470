/* returns number of clients a drug is prescribed to */
call test.`aggregate med`();

/* returns number of clients per zip code */
call test.`aggregate patient zip`();

/* returns a list of doctor-client relations ordered by Staff_ID then client's Last name */
call test.`doc patient relations`();

/* returns client information based on entering the ClientID */
call test.get_client_information(1);

/* queries for Staff name and department by search using beginning letters of the last name 
	leave blank to query all */
call test.get_staff_information('a');

/* queries for client name and the drug(s) prescribed */
call test.`patient meds`();

SELECT Vitals FROM client WHERE clientID = 1;
/* update 'Vitals' column from 'client' table by passing new vitals varchar and clientID */
call test.update_vitals('Normal', 1);
SELECT Vitals FROM client WHERE clientID = 1;

