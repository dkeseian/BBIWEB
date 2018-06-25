000100170908 drop table BBP160A_backup ;
000200120112
000300170908 -- drop table BBP160A ;
000400170908 rename table bbp160a to BBP160A_Backup ;
000500170908
000600151020 create table bbp160a (
000700170925   crd_key      bigint NOT NULL WITH DEFAULT primary key,
000800151020   cust_num     CHAR (14) NOT NULL WITH DEFAULT,
000900171206   entered_ind  CHAR (30) NOT NULL WITH DEFAULT,
001000171206   selected_ind CHAR (30) NOT NULL WITH DEFAULT,
001100151020   lic_num      CHAR (10) NOT NULL WITH DEFAULT,
001200171024   lic_state    char(2) NOT NULL WITH DEFAULT,
001300151020   avail_crd    decimal (17,2) ,
001400171025   emp_id       CHAR (20) NOT NULL WITH DEFAULT,
001500151020   po_num       char(25) NOT NULL WITH DEFAULT,
001600170908   date_time    TIMESTAMP,
001700170908   AR_Co        CHAR (5),
001800170912   Store_no     char (4),
001900171101   create_prf   char(20) NOT NULL WITH DEFAULT,
002000171207   clerk_ovr    CHAR(30),
002100170911   Ticket_no    int ,
002200170908   ent_status   char(1) not null with default,
002300171009   status_time  timestamp,
002400171009   Face_amt     decimal (17,2) ,
002500171009   Redeem_amt   decimal (17,2) ,
002600171009   Exp_time     timestamp
002700171009                          ) ;
002800120112
002900151020 label on table bbp160a is 'Store Credit Transaction' ;
003000151020
003100151020 Label on column bbp160a (
003200151020   crd_key           is 'Credit              Key',
003300151020   cust_num          is 'Customer            Number',
003400171206   entered_ind       is 'Entered             Individual',
003500171206   selected_ind      is 'Selected            Individual',
003600151020   lic_num           is 'License             Number',
003700171024   lic_state         is 'License             State',
003800151020   avail_crd         is 'Avaliable           Credit',
003900171025   emp_id            is 'Employee            Id',
004000151020   po_num            is 'PO                  Number',
004100170908   date_time         is 'Date                Time',
004200170908   AR_co             is 'A/R                 Company',
004300170911   Store_no          is 'Retail              Store No',
004400171101   create_prf        is 'Create              Profile',
004500171207   clerk_ovr         is 'Clerk               Override',
004600170911   Ticket_no         is 'Retail              Ticket No',
004700170908   ent_status        is 'Entry               Status',
004800171009   Status_time       is 'Status              Time',
004900171009   Face_amt          is 'Face                Amount',
005000171009   Redeem_amt        is 'Redeemed            Amount',
005100171009   Exp_time          is 'Expiration          Time'
005200171009                          ) ;
005300120112
005400151020 Label on column bbp160a (
005500171206   crd_key      text  is 'Credit Key',
005600171206   cust_num     text  is 'Customer Number',
005700171206   entered_ind  text  is 'Entered Individual',
005800171206   selected_ind text  is 'Selected Individual',
005900171206   lic_num      text  is 'License Number',
006000171206   lic_state    text  is 'License State',
006100171206   avail_crd    text  is 'Available Credit',
006200171206   emp_id       text  is 'Employee Id',
006300171206   po_num       text  is 'PO Number',
006400171206   date_time    text  is 'Date/Time',
006500171206   AR_co        text  is 'A/R Company',
006600171206   Store_no     text  is 'Retail Store No',
006700171206   create_prf   text  is 'Create Profile',
006800171207   clerk_ovr    text  is 'Clerk Override',
006900171206   Ticket_no    text  is 'Retail ticket no',
007000171206   ent_status   text  is 'Entry Status',
007100171206   Status_time  text  is 'Status Time',
007200171206   Face_amt     text  is 'Face Amount',
007300171206   Redeem_amt   text  is 'Redeemed Amount',
007400171206   Exp_time     text  is 'Expiration Time'
007500171009                          ) ;
007600151020
007700170908 insert into bbp160a
007800170908          (
007900170908          crd_key,
008000170908          cust_num      ,
008100171206          entered_ind   ,
008200171206          selected_ind  ,
008300170908          lic_num       ,
008400171024          lic_state     ,
008500170908          avail_crd     ,
008600171025          emp_id        ,
008700170908          po_num        ,
008800170908          date_time     ,
008900170908          AR_co         ,
009000170912          Store_no      ,
009100171101          create_prf    ,
009200171207          clerk_ovr     ,
009300170912          Ticket_no     ,
009400170908          ent_status    ,
009500170908          Status_time
009600171009   --     Status_time,
009700171009   --     Face_amt   ,
009800171009   --     Redeem_amt ,
009900171009   --     Exp_time
010000170908          )
010100170908   select
010200170908          crd_key,
010300170908          cust_num      ,
010400171206          entered_ind   ,
010500171206          selected_ind  ,
010600170908          lic_num       ,
010700171024          lic_state     ,
010800170908          avail_crd     ,
010900171025          emp_id        ,
011000170908          po_num        ,
011100170908          date_time     ,
011200170908          AR_co         ,
011300170912          Store_no      ,
011400171207          create_prf    ,
011500171207          clerk_ovr     ,
011600170912          Ticket_no     ,
011700170908          ent_status    ,
011800170908          Status_time
011900171009   --     Status_time,
012000171009   --     Face_amt   ,
012100171009   --     Redeem_amt ,
012200171009   --     Exp_time
012300170908 from bbp160a_backup ;
012400170908
