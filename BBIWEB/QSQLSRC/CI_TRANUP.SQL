000100171013 -- 2017-10-13    T. Detrow
000200171013 --               Add column AR_CO to output as literal STORE.
000300171017 -- 2017-10-17    Kes
000400171017 --               Changed above literal to passed in value.
000500171101 -- 2017-11-01    Kes
000600171101 --               Added user profile and store
000700171013
000800170109CREATE or replace PROCEDURE bbiweb.ci_tranup
000900171206   (IN ACRD_KEY BIGINT,ACUST_NUM CHAR(14), Aentered_IND CHAR(30),
001000171206    Aselected_ind char(30),
001100171017    alic_num char(10), aavail_crd double, apo_num char(25),
001200171031    aar_co char(5) , aemp_id char(20),alic_state char(2),
001300171211    acreate_prf CHAR(20),astore_no char(4) ,aclerk_ovr char(30))
001400160511result sets 1
001500160511LANGUAGE SQL
001600160511BEGIN
001700160511
001800170109  Insert into bbiweb.BBP160A
001900170109         (crd_key,
002000171013          AR_CO,
002100170109          cust_num,
002200171206          entered_ind,
002300171206          selected_ind,
002400170109          lic_num,
002500170109          avail_crd,
002600170111          po_num,
002700171025          emp_id,
002800171025          lic_state,
002900171031          date_time,
003000171101          create_prf,
003100171207          Store_no,
003200171207          clerk_ovr)
003300170109  values
003400170109         (acrd_key,
003500171017          aar_co,
003600170109          acust_num,
003700171206          aentered_ind,
003800171206          aselected_ind,
003900170109          alic_num,
004000170109          aavail_crd,
004100170109          apo_num,
004200171025          aemp_id,
004300171025          alic_state,
004400171031          now(),
004500171101          acreate_prf,
004600171207          astore_no,
004700171207          aclerk_ovr);
004800160511End
