BEGIN TRANSACTION;
CREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
);
INSERT INTO "auth_permission" VALUES(1,'Can add permission',1,'add_permission');
INSERT INTO "auth_permission" VALUES(2,'Can change permission',1,'change_permission');
INSERT INTO "auth_permission" VALUES(3,'Can delete permission',1,'delete_permission');
INSERT INTO "auth_permission" VALUES(4,'Can add group',2,'add_group');
INSERT INTO "auth_permission" VALUES(5,'Can change group',2,'change_group');
INSERT INTO "auth_permission" VALUES(6,'Can delete group',2,'delete_group');
INSERT INTO "auth_permission" VALUES(7,'Can add user',3,'add_user');
INSERT INTO "auth_permission" VALUES(8,'Can change user',3,'change_user');
INSERT INTO "auth_permission" VALUES(9,'Can delete user',3,'delete_user');
INSERT INTO "auth_permission" VALUES(10,'Can add message',4,'add_message');
INSERT INTO "auth_permission" VALUES(11,'Can change message',4,'change_message');
INSERT INTO "auth_permission" VALUES(12,'Can delete message',4,'delete_message');
INSERT INTO "auth_permission" VALUES(13,'Can add content type',5,'add_contenttype');
INSERT INTO "auth_permission" VALUES(14,'Can change content type',5,'change_contenttype');
INSERT INTO "auth_permission" VALUES(15,'Can delete content type',5,'delete_contenttype');
INSERT INTO "auth_permission" VALUES(16,'Can add session',6,'add_session');
INSERT INTO "auth_permission" VALUES(17,'Can change session',6,'change_session');
INSERT INTO "auth_permission" VALUES(18,'Can delete session',6,'delete_session');
INSERT INTO "auth_permission" VALUES(19,'Can add site',7,'add_site');
INSERT INTO "auth_permission" VALUES(20,'Can change site',7,'change_site');
INSERT INTO "auth_permission" VALUES(21,'Can delete site',7,'delete_site');
INSERT INTO "auth_permission" VALUES(22,'Can add log entry',8,'add_logentry');
INSERT INTO "auth_permission" VALUES(23,'Can change log entry',8,'change_logentry');
INSERT INTO "auth_permission" VALUES(24,'Can delete log entry',8,'delete_logentry');
INSERT INTO "auth_permission" VALUES(25,'Can add flat page',9,'add_flatpage');
INSERT INTO "auth_permission" VALUES(26,'Can change flat page',9,'change_flatpage');
INSERT INTO "auth_permission" VALUES(27,'Can delete flat page',9,'delete_flatpage');
INSERT INTO "auth_permission" VALUES(28,'Can add sponsor',10,'add_sponsor');
INSERT INTO "auth_permission" VALUES(29,'Can change sponsor',10,'change_sponsor');
INSERT INTO "auth_permission" VALUES(30,'Can delete sponsor',10,'delete_sponsor');
INSERT INTO "auth_permission" VALUES(31,'Can add soloist',11,'add_soloist');
INSERT INTO "auth_permission" VALUES(32,'Can change soloist',11,'change_soloist');
INSERT INTO "auth_permission" VALUES(33,'Can delete soloist',11,'delete_soloist');
INSERT INTO "auth_permission" VALUES(34,'Can add piece',12,'add_piece');
INSERT INTO "auth_permission" VALUES(35,'Can change piece',12,'change_piece');
INSERT INTO "auth_permission" VALUES(36,'Can delete piece',12,'delete_piece');
INSERT INTO "auth_permission" VALUES(37,'Can add composer',13,'add_composer');
INSERT INTO "auth_permission" VALUES(38,'Can change composer',13,'change_composer');
INSERT INTO "auth_permission" VALUES(39,'Can delete composer',13,'delete_composer');
INSERT INTO "auth_permission" VALUES(40,'Can add season',14,'add_season');
INSERT INTO "auth_permission" VALUES(41,'Can change season',14,'change_season');
INSERT INTO "auth_permission" VALUES(42,'Can delete season',14,'delete_season');
INSERT INTO "auth_permission" VALUES(43,'Can add location',15,'add_location');
INSERT INTO "auth_permission" VALUES(44,'Can change location',15,'change_location');
INSERT INTO "auth_permission" VALUES(45,'Can delete location',15,'delete_location');
INSERT INTO "auth_permission" VALUES(46,'Can add event',16,'add_event');
INSERT INTO "auth_permission" VALUES(47,'Can change event',16,'change_event');
INSERT INTO "auth_permission" VALUES(48,'Can delete event',16,'delete_event');
INSERT INTO "auth_permission" VALUES(49,'Can add pre concert discussion',17,'add_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(50,'Can change pre concert discussion',17,'change_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(51,'Can delete pre concert discussion',17,'delete_preconcertdiscussion');
INSERT INTO "auth_permission" VALUES(52,'Can add instrument',18,'add_instrument');
INSERT INTO "auth_permission" VALUES(53,'Can change instrument',18,'change_instrument');
INSERT INTO "auth_permission" VALUES(54,'Can delete instrument',18,'delete_instrument');
INSERT INTO "auth_permission" VALUES(55,'Can add orchestra member',19,'add_orchestramember');
INSERT INTO "auth_permission" VALUES(56,'Can change orchestra member',19,'change_orchestramember');
INSERT INTO "auth_permission" VALUES(57,'Can delete orchestra member',19,'delete_orchestramember');
CREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
);
CREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
);
CREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
);
CREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
);
CREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
);
INSERT INTO "auth_user" VALUES(1,'ewelker','','','ewelker@cdepot.com','sha1$17872$ed010e2b63a304878bdddb72fd11df8f6d5dd1cb',1,1,1,'2010-06-14 21:10:10.437851','2010-06-12 00:14:25.526220');
CREATE TABLE "auth_message" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "message" text NOT NULL
);
CREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
);
INSERT INTO "django_content_type" VALUES(1,'permission','auth','permission');
INSERT INTO "django_content_type" VALUES(2,'group','auth','group');
INSERT INTO "django_content_type" VALUES(3,'user','auth','user');
INSERT INTO "django_content_type" VALUES(4,'message','auth','message');
INSERT INTO "django_content_type" VALUES(5,'content type','contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'session','sessions','session');
INSERT INTO "django_content_type" VALUES(7,'site','sites','site');
INSERT INTO "django_content_type" VALUES(8,'log entry','admin','logentry');
INSERT INTO "django_content_type" VALUES(9,'flat page','flatpages','flatpage');
INSERT INTO "django_content_type" VALUES(10,'sponsor','sponsors','sponsor');
INSERT INTO "django_content_type" VALUES(11,'soloist','soloists','soloist');
INSERT INTO "django_content_type" VALUES(12,'piece','pieces','piece');
INSERT INTO "django_content_type" VALUES(13,'composer','pieces','composer');
INSERT INTO "django_content_type" VALUES(14,'season','events','season');
INSERT INTO "django_content_type" VALUES(15,'location','events','location');
INSERT INTO "django_content_type" VALUES(16,'event','events','event');
INSERT INTO "django_content_type" VALUES(17,'pre concert discussion','events','preconcertdiscussion');
INSERT INTO "django_content_type" VALUES(18,'instrument','roster','instrument');
INSERT INTO "django_content_type" VALUES(19,'orchestra member','roster','orchestramember');
CREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);
INSERT INTO "django_session" VALUES('9b3794ee1521511f1cc9eac75b37547b','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-26 00:14:57.964014');
INSERT INTO "django_session" VALUES('42f916209fb2c7af37f1da09711a1bf3','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-06-27 14:54:08.549923');
INSERT INTO "django_session" VALUES('9886b0b47d9907d8d469dc59fe783398','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-27 15:13:46.617085');
INSERT INTO "django_session" VALUES('e7590b714370298bedb8953d692863ea','gAJ9cQEuNmY4NzZmMDJjODkyYjUyOTMxZTE4YzI1NjUxMjY4NGI=
','2010-06-28 13:11:57.697539');
INSERT INTO "django_session" VALUES('db96a34ba261a1869f877dbcc0d44406','gAJ9cQEoVRJfYXV0aF91c2VyX2JhY2tlbmRxAlUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5k
cy5Nb2RlbEJhY2tlbmRxA1UNX2F1dGhfdXNlcl9pZHEESwF1LjlmMjg2Zjg1YjVkMTE3N2Y5ODg0
NTk4OWJjZTFiNjg4
','2010-06-28 21:10:10.466442');
CREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
);
INSERT INTO "django_site" VALUES(1,'columbiaorchestra.org','columbiaorchestra.org');
CREATE TABLE "django_admin_log" (
    "id" integer NOT NULL PRIMARY KEY,
    "action_time" datetime NOT NULL,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "content_type_id" integer REFERENCES "django_content_type" ("id"),
    "object_id" text,
    "object_repr" varchar(200) NOT NULL,
    "action_flag" smallint unsigned NOT NULL,
    "change_message" text NOT NULL
);
INSERT INTO "django_admin_log" VALUES(1,'2010-06-12 11:13:11.807221',1,16,'11','Land and Sea',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(2,'2010-06-12 11:18:25.631168',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',1,'');
INSERT INTO "django_admin_log" VALUES(3,'2010-06-12 11:18:59.339917',1,12,'15','Haydn, Franz Joseph - Music from The Creation',2,'Changed soloist.');
INSERT INTO "django_admin_log" VALUES(4,'2010-06-12 11:19:49.842223',1,16,'16','Creation and Destruction',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(5,'2010-06-12 11:23:21.624393',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(6,'2010-06-12 11:24:04.651182',1,11,'8','Masterworks Chorale of Carroll County, Margaret Boudreaux, director',2,'Changed slug.');
INSERT INTO "django_admin_log" VALUES(7,'2010-06-12 11:38:03.084469',1,11,'9','Stan Gilmer',1,'');
INSERT INTO "django_admin_log" VALUES(8,'2010-06-12 11:38:33.975750',1,16,'15','Symphonic Pops',2,'Changed soloists.');
INSERT INTO "django_admin_log" VALUES(9,'2010-06-12 13:21:16.137774',1,16,'12','Earth and Sky',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(10,'2010-06-13 11:28:26.149254',1,11,'9','Stan Gilmer',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(11,'2010-06-13 11:36:15.858282',1,11,'9','Stan Gilmer',2,'Changed bio.');
INSERT INTO "django_admin_log" VALUES(12,'2010-06-13 12:43:40.305348',1,13,'29',' ',1,'');
INSERT INTO "django_admin_log" VALUES(13,'2010-06-13 12:48:19.181404',1,16,'13','Young and Eclectic',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(14,'2010-06-13 14:14:37.824373',1,16,'4','Jonathan Carney & The Rite of Spring',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(15,'2010-06-13 14:15:10.817250',1,16,'6','A Time and Place',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(16,'2010-06-13 14:15:55.820626',1,16,'8','Short Stories',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(17,'2010-06-13 14:16:20.541509',1,16,'2','The Titans',2,'Changed pieces.');
INSERT INTO "django_admin_log" VALUES(18,'2010-06-13 15:14:11.817395',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(19,'2010-06-13 15:14:40.515680',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(20,'2010-06-13 15:14:59.190532',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(21,'2010-06-13 15:23:12.172942',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(22,'2010-06-13 15:23:39.142727',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(23,'2010-06-13 15:24:17.567739',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(24,'2010-06-13 15:24:43.244764',1,9,'10','/preludes/ -- Preludes',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(25,'2010-06-13 20:49:37.236886',1,7,'1','columbiaorchestra.org',2,'Changed domain and name.');
INSERT INTO "django_admin_log" VALUES(26,'2010-06-14 21:12:21.329660',1,9,'3','/history/ -- History',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(27,'2010-06-14 21:15:25.612578',1,9,'6','/advertise/ -- Advertise',2,'Changed content.');
INSERT INTO "django_admin_log" VALUES(28,'2010-06-14 21:16:50.009400',1,9,'6','/advertise/ -- Advertise',2,'No fields changed.');
INSERT INTO "django_admin_log" VALUES(29,'2010-06-14 21:19:00.400548',1,9,'5','/donate/ -- Donate',2,'Changed content.');
CREATE TABLE "django_flatpage_sites" (
    "id" integer NOT NULL PRIMARY KEY,
    "flatpage_id" integer NOT NULL,
    "site_id" integer NOT NULL REFERENCES "django_site" ("id"),
    UNIQUE ("flatpage_id", "site_id")
);
INSERT INTO "django_flatpage_sites" VALUES(1,14,1);
INSERT INTO "django_flatpage_sites" VALUES(3,4,1);
INSERT INTO "django_flatpage_sites" VALUES(4,2,1);
INSERT INTO "django_flatpage_sites" VALUES(5,13,1);
INSERT INTO "django_flatpage_sites" VALUES(6,8,1);
INSERT INTO "django_flatpage_sites" VALUES(7,9,1);
INSERT INTO "django_flatpage_sites" VALUES(10,12,1);
INSERT INTO "django_flatpage_sites" VALUES(11,17,1);
INSERT INTO "django_flatpage_sites" VALUES(12,1,1);
INSERT INTO "django_flatpage_sites" VALUES(13,16,1);
INSERT INTO "django_flatpage_sites" VALUES(15,20,1);
INSERT INTO "django_flatpage_sites" VALUES(16,11,1);
INSERT INTO "django_flatpage_sites" VALUES(17,18,1);
INSERT INTO "django_flatpage_sites" VALUES(18,15,1);
INSERT INTO "django_flatpage_sites" VALUES(19,7,1);
INSERT INTO "django_flatpage_sites" VALUES(20,19,1);
INSERT INTO "django_flatpage_sites" VALUES(21,10,1);
INSERT INTO "django_flatpage_sites" VALUES(22,3,1);
INSERT INTO "django_flatpage_sites" VALUES(23,6,1);
INSERT INTO "django_flatpage_sites" VALUES(24,5,1);
CREATE TABLE "django_flatpage" (
    "id" integer NOT NULL PRIMARY KEY,
    "url" varchar(100) NOT NULL,
    "title" varchar(200) NOT NULL,
    "content" text NOT NULL,
    "enable_comments" bool NOT NULL,
    "template_name" varchar(70) NOT NULL,
    "registration_required" bool NOT NULL
);
INSERT INTO "django_flatpage" VALUES(1,'/mission/','Mission Statement','<h2>Columbia Orchestra Mission Statement</h2>
<p>
  The Mission of the Columbia Orchestra is to foster lifelong appreciation of, enthusiasm for, and participation in music. This is accomplished by:
</p>
<ul>
  <li>Providing the community with high-quality musical performances by a locally-based symphony orchestra
  </li>
  <li>Providing area students, teachers, and educational institutions with a classical music resource
  </li>
  <li>Providing local classical musicians with an opportunity to explore and perform great orchestral literature and chamber music
  </li>
</ul>',0,'',0);
INSERT INTO "django_flatpage" VALUES(2,'/audio/','Audio','<h2>Audio Clips</h2>
<ul>
<li><a href="/uploads/2010/wbjc_interview_may2010.mp3">05/22/10 WBJC interview with Jason Love</a></li>

<li><a href="/uploads/2010/interview-091017.mp3">10/17/09 WBJC interview with Jason Love</a></li>
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(3,'/history/','History','<div class="history">
<h2>History of the Columbia Orchestra</h2>
<p>
  <img src="/images/Orch-80.jpg" align="right" vspace="10" hspace="10" /> In the fall of 1977, a handful of local string players began playing classical music as the Columbia Chamber Orchestra. Yong Ku Ahn became the group''s first Music Director and conductor in 1978.
</p>
<p>
  <img src="/images/Orch-88.jpg" align="right" vspace="10" hspace="10" /> Upon Ahn''s retirement in 1988, Carl Dietrich took over leadership of the orchestra. During his tenure, the membership was expanded to include winds and percussion, standard symphonic literature was programmed, and the orchestra dropped "chamber" from its name.
</p>
<p>
  <img src="/images/Orch-9798.jpg" align="right" vspace="10" hspace="10" /> Catherine Ferguson served as the Columbia Orchestra''s third Music Director from 1990 until 1999, expanding the repertoire, restructuring the annual Young Artist Competition, establishing a regular season at Howard Community College''s Smith Theatre, and leading the Columbia Orchestra''s first appearance at the Columbia Festival of the Arts.
</p>
<p>
  <img src="/images/Orch-04.jpg" align="right" vspace="10" hspace="10" /> Current Music Director Jason Love took the podium in 1999, quickly winning the hearts of orchestra members and audience alike with his humor, generosity, and consummate musicianship. Under his baton, <em>The Baltimore Sun</em> named the Columbia Orchestra "Howard County''s premier ensemble for instrumental music."
</p>
<p>
  In August 2000, the orchestra hired Tedd Griepentrog as its first Executive Director. During the 2001-2002 season, all Masterworks programs were moved to the Jim Rouse Theatre to accommodate the expanded size of the orchestra and its growing audience. The Young People''s Concert added a Musical Instrument Petting Zoo for children of all ages to see, hear, touch, and play orchestral instruments. In June 2002, the orchestra made its Kennedy Center debut in collaboration with the Tony Powell/Music & Movement dance ensemble. During its silver anniversary season, the Columbia Orchestra performed for the Maryland Music Educators Conference at the Baltimore Convention Center and announced its first biannual American Composer Competition.
</p>

<p>In 2005, the organization established an administrative office at the Howard County Center for the Arts and released its first commercial recording, <i>Flying Home: A Tribute to John Denver</i>, performing with members and songwriters of the original John Denver Band.  In June 2007, the orchestra joined renown fiddler and concert artist Mark O’Connor in a concert performed as part of the Columbia Festival of the Arts.</p>

 

<p>Celebrating it’s 30th Anniversary season, in 2008 the orchestra undertook a community arts project entitled “Embracing the Millions,” which enlisted members of the community area performing artists in exploring the questions raised by the world’s most famous symphony, Beethoven’s monumental <i>Symphony No. 9</i>.  The project culminated in the orchestra’s performance of the symphony with local choral groups in April 2008.</p>

 

<p>Now in its fourth decade, the orchestra continues its annual Young Artist Competition and its biannual American Composer Competition.  It has established a free chamber music series featuring members of the orchestra.  Popular pre-concert discussions, conducted by Howard Community College’s William Scanlon Murphy and now sponsored by Baltimore/Washington Financial Advisors, routinely draw up to 20% of the evening’s concert audience.  And the orchestra continues to perform not only the masterworks of the classical repertoire but also works by today’s new generation of composers, including Tan Dun, Osvaldo Goliov, Joan Tower, and Jonathan Leshnoff.</p>

 

<p>As it enters its 33rd season, The Columbia Orchestra is clearly matching its reputation as one of Howard Magazine’s “51 Things We Love About Living In Howard County.”</p>


</div>',0,'',0);
INSERT INTO "django_flatpage" VALUES(4,'/amazon/','Amazon','<h2>Shop AMAZON</h2>
<p>
  <a href="http://www.amazon.com/exec/obidos/redirect-home/columbiaorche-20" target="AMAZON"><img src="/images/button-amazon.gif" border="0" alt="Pop-up: Shop at Amazon.com" align="right" width="88" height="31" /></a> <strong>Go directly to AMAZON by clicking on this AMAZON button.</strong> It appears here and on all of our web pages on the left just below the side menu. AMAZON will donate to the orchestra a percentage of all purchases you make.
</p>
<p>
  Once the button has been clicked, a separate AMAZON window will appear. Use this window for your AMAZON shopping. If you close the window, no problem. Just click on any of our AMAZON buttons and a new window will open for you.
</p>
<p>
  <iframe src="http://rcm.amazon.com/e/cm?t=columbiaorche-20&o=1&p=27&l=qs1&f=ifr" width="180" height="150" frameborder="0" scrolling="no" align="right"></iframe> Make your visit to AMAZON more efficient by specifying search criteria and clicking on the gold GO button.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(5,'/donate/','Donate','<h2>Make a Donation</h2>
<p>
  <a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amount=10.00" target="paypal"><img src="/images/button-donation.gif" border="0" width="110" height="23" alt="Pop-up: Make a Donation" align="right" /></a> 
</p>
<p>
  We are grateful to our many loyal supporters, and hope you too will support the orchestra. Ticket sales cover only 25% of our expenses. Your donation helps make it possible for us to rent concert and rehearsal space, contract outstanding soloists, rent and purchase music, and keep the community informed of our activities. By contributing to the orchestra, you help to enrich our community and to sustain the priceless cultural heritage of classical music. Please help the Columbia Orchestra keep making <em>Your Community''s Music.</em>
</p>
<p>
  Contributors will be acknowledged in our programs grouped into these giving levels:
</p>
<ul>
  <li>FRIEND (up to $99)</li>
  <li>DONOR ($100-$249)</li>
  <li>PATRON ($250-$499)</li>
  <li>BENEFACTOR ($500-$999)</li>
  <li>SPONSOR ($1,000-$1,999)</li>
  <li>CONDUCTOR''S CIRCLE ($2,000 and greater)</li>
</ul>
<p>
  Thank you for your support. The Columbia Orchestra is incorporated in Maryland as a 501(c)(3) nonprofit corporation. All donations are tax-deductible. 
</p>
<p>
  <strong>How to make a donation:</strong>
</p>

<p>
  <a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amount=10.00" target="paypal"><img src="/images/button-donation.gif" border="0" width="110" height="23" alt="Pop-up: Make a Donation" /></a>

<br/>

<strong>Click the button to make a donation online using a credit card</strong>.
</p>
<p>All transactions are handled on a secure server hosted by PayPal. If you do not already have a PayPal account, you will have the option to paying with or without creating one. Simply click the button and follow the instructions. You will be asked to log in to your PayPal account. If you do not have a PayPal account, that is not a problem. You will have the options of paying with or without creating one. Your donation will be confirmed by e-mail, and you will receive a written acknowledgement and thank-you by mail. If you have any comments regarding the donation, type them in the <strong>''Message to Seller (Optional)''</strong> section at the bottom of the <strong>''Billing Information''</strong> page.
</p>
<p>
  <strong>Make a donation by mail.</strong> First complete our <a class="boldlink" href="/uploads/2010/donationform.pdf" target="co_link" title="PDF Pop-up">donation form</a>. Viewing and printing this form requires Adobe Acrobat Reader; if you don''t have Acrobat Reader, you can <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">download a free copy</a>. Then mail the form along with a check to The Columbia Orchestra, sending it to the address at the bottom of this web page.
</p>
<p>
  If you would like to make a non-cash donation to the orchestra, please contact the orchestra office at 410-465-8777. We will be happy to discuss other gifts with you.
</p>
<p>
  If you would prefer that your donation remain anonymous, just let us know and we will honor your wishes.
</p>
<p>
  The Columbia Orchestra is a 501(c)(3) organization&mdash;donations to which are tax deductible to the fullest extent allowed by law. A copy of our current financial statement is available upon request by calling our office. Documents submitted to the State of Maryland Charitable Solicitations Act are available from the Secretary of State, State House, Annapolis, MD 21401, for the cost of copying and mailing.
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(6,'/advertise/','Advertise','<h2>Program Underwriting</h2> 

<p>Underwriting information for the 2010-2011 will be available shortly. Please use the 2009-2010 information below as a reference and <a href="mailto:execdir@columbiaorchestra.org">contact us</a> to discuss underwriting and advertising opportunities.</p>

<p>If you missed the start of our season, don''t worry. We are accepting additional program underwriting for the rest of the season.</p>

<p>If you would like to underwrite the Columbia Orchestra''s programming, with your underwriting message seen in our 2009-2010 concert programs by thousands of concertgoers, you may either <em>sponsor</em> a specific activity (a concert, a soloist or a competition) or simply <em>take out an ad</em> in our printed concert programs. To sponsor a specific activity, please download a <a class="bodylink" href="/uploads/2010/CO_Sponsorship_Form_2009.pdf" target="co_link" title="Pop-up">Sponsorship form in PDF format</a>. For an ad in our printed concert programs, please download an <a class="bodylink" href="/uploads/2010/underwriting.pdf" target="co_link" title="Pop-up">Underwriting form in PDF format</a>.The forms are suitable for printing; simply fill out the appropriate form and return it to the address on the form. Viewing and printing these files requires <a class="bodylink" href="http://www.adobe.com/products/acrobat/readstep.html" target="co_link" title="Pop-up">Adobe Acrobat Reader</a>.</p>

<p>Please click <a class="bodylink" href="/uploads/2010/underwritingfacts.pdf" target="co_link" title="Pop-up">here for Underwriting Facts</a> to find out more about our season, reach, and program specifications.</p>

<h3>2009-2010 Concert Season</h3>
<p><strong>See your advertisement in the following programs!</strong></p>

<ul>

<li>
<strong>Classical Concert 2</strong>
<br/>
  Saturday, December 5, 2009
  <br />
  Rouse Theatre
</li>
<li>
<strong>Young People''s Concerts</strong>
<br/>
  Saturday, January 9, 2010
  <br />
  Rouse Theatre
</li>
<li>
<strong>Pops Concert</strong>
<br/>
  Saturday, February 13, 2010
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 3</strong>
<br/>
  Saturday, March 27, 2010
  <br />
  Rouse Theatre
</li>
<li>
<strong>Classical Concert 4</strong>
<br/>
  Saturday, May 22, 2010
  <br />
  Rouse Theatre
</li>
</ul>

<h3>The levels of underwriting and/or advertisement size are as follows:</h3>

<ul>
<li>
<strong>Concert Sponsor $5,000</strong><br/>
Includes corporate logo and/or company name in all season and concert press releases and printed materials pertaining to selected program, plus a full-page advertisement (6" wide x 7.5" high), website logo and link, complimentary tickets, concert banner, and lobby display.</li>

<li>
<strong>Soloist Sponsor $2,500</strong><br/>
Includes company name in all press releases and printed materials pertaining to selected soloist, plus a half-page advertisement (6" wide x 3.75" high), website logo and link, complimentary tickets, and concert banner.</li>

<li>
<strong>Competition Sponsor (Young Artist Competition, American Composer Competition) $1,000</strong><br/>
Includes company name in all printed materials pertaining to selected event, plus a business-card advertisement (3.5" wide x 2" high), website link, and complimentary tickets.</li>

<li>
<strong>Back or inside cover full-page color advertisement (6" wide x 7.5" high) SOLD OUT</strong><br/>
An extra 500 program covers will be printed for chamber music programs</li>

<li>
<strong>Full-page black&white advertisement (6" wide x 7.5" high) $410</strong>
</li>
<li>
<strong>Half-page black&white advertisement (6" wide x 3.75" high) $250</strong>
</li>
<li>
<strong>Business card black&white advertisement (3.5" wide x 2" high <strong>or</strong> 2" wide x 3.5" high) $160</strong>
</li>

</ul>
<p>BLACK & WHITE CAMERA-READY ARTWORK OR DIGITAL FILE DUE BY November 20, 2009.</p>

<p>An additional fee of $50 will be assessed for any artwork that must be modified.</p>


<p>If you have any questions, please contact us at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir&#64;columbiaorchestra.org</a>. </p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(7,'/volunteer/','Volunteer','<h2>Volunteer Opportunities</h2>

<p>The Columbia Orchestra is very grateful for all the volunteers who donate their time and talents at concerts and in our office.</p>

<p>If you would like to volunteer, please <a href="mailto:volunteers@columbiaorchestra.org">send an email</a> to our Volunteer Director. 

We''d love to have you!
</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(8,'/composer_competition/','Composer Competition','<h2>American Composer Competition</h2>

<p>The Columbia Orchestra began its American Composer Competition in 2003 to help promote new American works both locally and across the United States. The winning work receives its first, second, or third public performance, thereby expanding the performance history for music worthy to be heard again and again. The winner also receives a cash prize and a additional stipend if attendance at the concert and rehearsals is possible. </p>

<p>The next American Composer Competition is scheduled for 2011. </p>


<p>
  <img src="/images/cc-hurwit.jpg" alt="Albert Hurwit, composer" border="0" align="right" vspace="10" hspace="10" />
</p>
<h3>The winning work of the 2009 American Composer Competition was the Third Movement of Symphony No. 1 “Remembrance” by Albert Hurwit. The orchestra performed the work on December 5, 2009 with the composer in attendance. </h3>


<p>
  The orchestra received 124 submissions from throughout the United States. In addition to the winning work, seven finalists were selected (listed in alphabetic order):
</p>
<ul>
  <li>Brian Fennelly: Reflections/Metamorphosis
  </li>
  <li>Anthony Iannaccone: Dancing on Vesuvius
  </li>
  <li>Mark Lackey: Convergence
  </li>
  <li>Elizabeth Lim: Paranoia
  </li>
  <li>Justin Merritt: River of Blood
  </li>
  <li>Philip Rothman: Arc of Visibility
  </li>
  <li>David Schneider: Automation
  </li>
</ul>
<p>
  Congratulations to Dr. Hurwit, the finalists, and all who entered the competition. We are extremely grateful for your participation!
</p>
<p>
  Read more about the winning work and the competition in this <a class="bodylink" href="pr/091205-ACC.pdf" target="co_link" title="Pop-up: PDF">Press Release.</a>
</p>
<p>
  <a id="hurwit"><strong>About Albert Hurwit</strong> <img src="images/cc-hurwit.jpg" title="Albert Hurwit, composer" width="125" height="160" border="0" align="right" vspace="10" hspace="10" /></a>
</p>
<p>
  The composing career of Albert Hurwit began relatively late in his life. He was born in Hartford, Connecticut in 1931. After graduating from Harvard College and Tufts Medical School, he remained in Boston for four years of postgraduate radiology training. He returned to Hartford and practiced radiology until his retirement in 1986.
</p>
<p>
  Through most of his life, Hurwit had been casually involved with music and composing in an unstructured manner. Since 1986 he has dedicated all of his energies to composing music. He has had no formal training, but has received informal mentoring form Robert Carl, Chairman of the Composition Department of the Hartt School of Music at the University of Hartford, and Michael Lankester, the former Music Director of the Hartford Symphony Orchestra.
</p>
<p>
  In 1997 the Adaskin String Trio performed Hurwit&rsquo;s &ldquo;Adagio&rdquo; at the University of Hartford. It was then expanded into an &ldquo;Adagio for Orchestra,&rdquo; which was performed later that year by the Hartford Symphony Orchestra with Michael Lankester conducting at the Bushnell Center for Performing Arts.
</p>
<p>
  After three more years of self instruction, experimentation and musical exploration Hurwit began to compose a symphony. He completed the composition of Symphony No. 1 &ldquo;Remembrance&rdquo; in 2002.
</p>
<p>
  On November 8, 9 and 10, 2002, Movement III of the symphony (electronic rendition) was choreographed by Peggy Lyman and performed by the Hartt School of Music Dancers at the Lincoln Theater of the University of Hartford.
</p>
<p>
  On February 13 and 14, 2003, the third movement of this symphony was performed in a concert world premiere by the Hartford Symphony Orchestra under the direction of Edward Cumming at the Bushnell Center for Performing Arts.
</p>
<p>
  In July of 2004, the symphony was recorded by the Bulgarian National Radio Symphony Orchestra with Michael Lankester conducting. Hurwit spent eight days in Sofia and participated in the rehearsing, revisions, recording, mixing and finalizing process of the CD production. The CD of the symphony was released by MSR Classics in March of 2005, and it is being distributed by Albany Records.
</p>
<p>
  The West Hartford Symphony Orchestra under the baton of Richard Chiarappa presented world premiere concert performance of the entire Symphony No.1 &ldquo;Remembrance&rdquo; on March 5, 2006.
</p>
<p>
  <br />
  <strong>The Results of Previous Competitions</strong>
</p>
<p>
  <strong>2007</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> David Heuser: A Screaming Comes Across the Sky
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Randolph Partain: Blood Rite
    </li>
    <li>David Sartor: Concerto for Orchestra
    </li>
    <li>Arthur Gottschalk: Amelia
    </li>
    <li>Laurence Bitensky: A Perfect Rest
    </li>
    <li>Mark Lortz: Deus Ex Machina
    </li>
    <li>Anthony Iannaccone: The Colors of Dream
    </li>
    <li>Kevin Walczyk: Capriccio
    </li>
    <li>Takuma Itoh: Concerto for Orchestra
    </li>
    <li>Lee Actor: Variations and Fugue
    </li>
  </ul>
</div>
<p>
  <strong>2005</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> David Dzubay: Shadow Dance
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Lee Actor: Prelude to a Tragedy
    </li>
    <li>Arthur Gottschalk: Amelia
    </li>
    <li>Anthony Iannaccone: The Colors of Dream
    </li>
    <li>Rob Smith: Push
    </li>
    <li>Antonio Carlos DeFeo: What''s That I Hear?
    </li>
    <li>Charles Bestor: Variations for Orchestra
    </li>
    <li>Joshua Penman: Songs the Plants Taught Us
    </li>
    <li>Ernst Bacon: Smokey Mountain Scherzo
    </li>
  </ul>
</div>
<p>
  <strong>2003</strong>
</p>
<div class="c1">
  <p>
    <strong>Winner:</strong> Thomas Shnauber: Indigo Street
  </p>
  <p>
    <strong>Finalists:</strong>
  </p>
  <ul>
    <li>Yuanlin Chen: Overture - Rhapsody
    </li>
    <li>Paul Richards: Trip Hammer
    </li>
    <li>Stephan Prock: Garden Varieties
    </li>
    <li>Cynthia Miller: Frequent Flier
    </li>
    <li>Jeff Manookian: NEXUS
    </li>
    <li>Erich Stern: Escape
    </li>
    <li>Allen Menton: Shape-Note Fantasy
    </li>
    <li>Daniel Powers: The Starry Messenger
    </li>
    <li>James Ra: Awakened Spirit
    </li>
    <li>Christopher Pierce: Aquarelle
    </li>
    <li>Garrett Byrnes: The Flames of Imbolc
    </li>
  </ul>
</div>',0,'',0);
INSERT INTO "django_flatpage" VALUES(9,'/contact_us/','Contact Us','<h2>Contact Information</h2>

<p>
  If you would like information about Columbia Orchestra events and activities, <a class="bodylink" href="/mailing_list/">subscribe to our mailing list</a>.
</p>



  <h3>Address:</h3>

<p>
  The Columbia Orchestra
  <br />
  Howard County Center for the Arts
  <br />
  8510 High Ridge Road
  <br />
  Ellicott City, MD 21043
</p>
  <p>
    Howard County Center for the Arts is a converted elementary school on the left side of High Ridge Road. We are located in room #16.  Once inside go in the front door, take the left hall and our office is on the left near the end.
  </p>
  <p>
<a href="/locations/howard-county-center-arts/">Detailed directions to the building are located here</a>
  </p>
</div>

<h3>Phone Numbers</h3>
<dl>
	<dt>Phone</dt>
	<dd>410-465-8777</dd>
	<dt>Fax</dt>
	<dd>410-465-8778</dd>
</dl>

<h3>Email</h3>
<dl>
	<dt>General Information</dt>
	<dd><a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a></dd>
	<dt>Auditions</dt>
	<dd><a href="mailto:join@columbiaorchestra.org">join@columbiaorchestra.org</a></dd>
	<dt>Tickets</dt>
	<dd><a href="mailto:ticketinfo@columbiaorchestra.org">ticketinfo@columbiaorchestra.org</a></dd>
	<dt>Young Artist Competition</dt>
	<dd><a href="mailto:youngartists@columbiaorchestra.org">youngartists@columbiaorchestra.org</a></dd>
	<dt>American Composer Competition</dt>
	<dd><a href="mailto:compcomp@columbiaorchestra.org">compcomp@columbiaorchestra.org</a></dd>
</dl>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(10,'/preludes/','Preludes','<h2>Preludes</h2>

<h3>Sponsored by BWFA</h3>

<a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.jpg" alt="Baltimore-Washington Financial Advisors" style="" border="0" height="52" width="175"></a>

<p>The Columbia Orchestra 

<img src="/images/Prelude_discussion.jpg" alt="Bill Scanlan Murphy giving a Prelude lecture" style="float:right; margin:1em 0 1em 1em;">

presents a series of "Preludes," a discussion series held before each Classical Concert.  This enlightening, entertaining series allows you to experience the stories and ideas behind the concert''s selections in an interesting, informal setting. Each free session runs from 6:30-7:10 (Subscribers can still take advantage of priority seating at 7:10.)</p>

<p>Concertgoers everywhere agree that the more you know about the music you are hearing, the more you enjoy it. Our “Preludes” series is designed to offer you that knowledge in a way that is easy and fun. We hope that you will enhance your concert experience by joining us for each Prelude!</p>

<p>Join Bill Scanlan Murphy for an enlightening, entertaining pre-concert discussion.</p> 

<h3>About Bill Scanlan Murphy</h3>

<img src="/images/p-murphy.jpg" style="float: left; margin: 1em 1em 1em 0;"/>

<p>Bill Scanlan Murphy was born in Glasgow, Scotland, in 1954 and holds an MA degree from the University of Oxford. A professionally complex life has included hosting radio shows (rock, classical, and documentary) for the BBC, writing music for television dramas and working with diverse performers ranging from the BBC Scottish Symphony Orchestra to the Beach Boys and Charles Manson. “Cease To Exist,” a radio documentary on the musical life of Manson, remains the most-listened-to documentary in the history of the BBC Radio One network.</p>
 
<p>A parallel career as a naval historian has resulted in a book on early submariners and numerous articles and radio features, including one on how many composers have been naval officers. Bill Scanlan Murphy currently teaches at Howard Community College and is Director of Music at Lovely Lane United Methodist Church in Baltimore.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(11,'/program_notes/','Program Notes','<h2>Program Notes - Concert 5/22/10</h2>
<h3>by Bill Scanlan Murphy</h3>

<a name="wm">
</a></font><p><font face="verdana" size="2"><a name="wm"><br>
<b><font size="3">WOLFGANG AMADEUS MOZART (1759–1792)</font>
</b></a></font></p><p>
<font face="verdana" size="2"><a name="wm"><b>PIANO CONCERTO in D Minor, K. 466<br>
</b>
COMPOSED: 1785<br>
PREMIERED: Vienna, 1785<br>
I: Allegro<br>
II: Romanza<br>
III: Allegro assai; alla breve
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">This curiously dark work is one of only two of Mozart’s 27 piano concerti to be written in a minor key. That the first performance could barely be heard over the background noise in the Mehlgrube Casino probably contributed to the gloom, as did the fact that Mozart had barely finished it when he took his seat at the piano. The premiere was, in fact, a scramble. As his father wrote to Mozart’s sister Nannerl:
</a></font></p><ul>
<font face="verdana" size="2"><a name="wm">I heard an excellent new piano concerto by Wolfgang, on which the copyist was still at work when we got there, and your brother didn''t even have time to play through the rondo because he had to oversee the copying operation. 
</a></font></ul>
<font face="verdana" size="2"><a name="wm">Mozart conducted frantically from the keyboard, nodding occasionally to the terrified concertmaster, whose suspicion that the only full score was still in Mozart´s head was entirely justified. There would be similar scenes nearly 150 years later, as George Gershwin nodded to Paul Whiteman to tell him the (improvised!) piano solo sections were about to end during the first performance of <i>Rhapsody in Blue.</i> Mozart’s audience consisted of what his obsessively class-conscious father called “a vast concourse of people of rank,” hovering between his son’s music and the gaming tables. Only the previous evening, Joseph Haydn had told Leopold that Wolfgang was “the greatest composer known to me, either personally or be reputation,” yet here he was now, struggling for attention.
</a></font><p>
<font face="verdana" size="2"><a name="wm">A month earlier, the Mehlgrube’s star attraction had been the blind pianist Maria Theresia von Paradis (for whom Mozart wrote a concerto); the month before, there had been a conjurer. As always, the composer’s social standing teetered between very shaky popular adulation and the wow-but-so-what feeling that now (briefly) meets the denizens of <i>American Idol.</i> This hovering between the worlds of the courtly flunky and popular stardom (no problem at all for musicians only fifty years later) was an important factor in his ultimate impoverishment and early death. It’s therefore all the more surprising that Mozart chose an occasion like this to launch one of his darkest, most searching works.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">The first movement opens with—no, not the first subject of the inevitable sonata form opener. Instead, we hear motifs—fragments that together <i>add up</i> to thematic material, an astonishing foreshadowing of the gigantic mosaics of Wagner, set over nagging, syncopated string chords. Instead of the usual setting out of the structural shop that we expect at the opening of a Classical concerto, we instead are offered what can only be called mood-setting. It is only when the piano enters that our old friends A and B become clearly audible. There would be nothing like this again until the concertos of Beethoven, who revered this work and played it in public several times. Indeed, it is Beethoven’s cadenzas that we are hearing this evening in the first and last movements.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">Like Beethoven after him, Mozart often carried out his more outrageous formal experiments in his slow movements, and this concerto has a vivid example in its rondo structure—easily the least likely form to be expected here (not least because this movement is followed by another one). Even less likely is the dramatic lurch into G minor towards the end. Beethoven would often challenge himself (and us) with sudden plunges into distant keys, as though daring himself to find a way home; he may well have been inspired by Mozart’s leap into the tonal darkness here. Always civilized and precise, of course (it’s Mozart, after all), but with the faintest cracks and shadows in the porcelain. Nor should we forget that Mozart reserved his darkest thoughts (think of the fortieth symphony) for the key of G minor.
</a></font></p><p>
<font face="verdana" size="2"><a name="wm">The Finale is the rondo we might expect—but, once again, G minor lurks in the tonal forest. It is not hard to believe that Mozart looked at that Casino audience and saw, not the career-saving Fairy Godfather that his father saw that day, but the Wolf. The concerto’s optimistic D major ending barely dissipates the darkness. Only seven years later, Mozart would be in an unmarked grave barely ten blocks from the Casino.



</a><a name="gm">
</a></font></p><p><font face="verdana" size="2"><a name="gm"><br>
<b><font size="3">GUSTAV MAHLER (1860–1911)</font>
</b></a></font></p><p>
<font face="verdana" size="2"><a name="gm"><b>SYMPHONY No. 1 in D<br>
</b>
COMPOSED: 1884–88<br>
PREMIERED: Budapest, Hungary, 1889<br>
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">No, not the <i>Titan.</i> Mahler ditched the subtitle early in this work’s tortuous early history (read on!). His wife, the later much-married Alma, could never bear listening to the First Symphony, because she knew what it was about; few wives (and certainly not one as independent of spirit as Alma) wish to wallow in the murky history of their husband’s love lives. 
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">The Symphony began as music inspired by the soprano Johanna Richter, with whom Mahler had an absurdly one-sided non-affair in 1884. This object lesson in unrequited love resulted firstly in the doom-laden <i>Songs of a Wayfarer.</i> One of these, the deceptively chirpy <i>Ging heut’ Morgen,</i> is tested to destruction in the first movement of the Symphony. Johanna claimed, absurdly, to be related to Mahler’s favorite author, Jean-Paul Richter. Jean-Paul’s most popular novel, <i>Titan,</i> rarely left Mahler’s bedside. The book’s intimidating structure—35 chapters and 146 sub-chapters—has been cited as an arguable origin for Mahler’s later symphonic giantism, but rather more to the point is Jean-Paul’s concept of the <i>hoher Mensch,</i> the “superior man” that would eventually morph, at least for Mahler, into the Nietzschean <i>Übermensch.</i> The fact that Jean-Paul tells his tale in the form of a gargantuan, overwrought fairy-tale very nearly gives us Mahler’s musical thinking in a nutshell.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">After Fräulein Richter ditched him, Mahler embarked on a guilt-ridden liaison with Marion Weber, the wife of Carl Maria von Weber’s grandson, made all the worse by the fact that her husband was trusting him with editing the musical heritage of his grandfather, who was one of Mahler’s heroes. Mahler was not Wagner, and, unlike the Sage of Bayreuth, had a conscience; the halting, fumbling, emotionally frantic result suggests what might have happened happen if Schiller edited <i>Peyton Place;</i> the musical spin-off was Mahler’s incidental music for Joseph Victor von Scheffel’s play <i>Der Trompeter von Säckingen.</i> This music also found its way into the Symphony, only to be thrown out again. Like Mahler himself, one might say.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Symphony? Not originally. Mahler launched the work as a <i>“Titan,</i> a Symphonic Poem in Two Parts.” Following Jean-Paul’s baleful example, Mahler subdivided the two parts into three and two movements respectively. The second movement, <i>Blumine,</i> was the recycled <i>Trompeter von Säckingen</i> music; traumatic events with Marion Weber house resulted in Mahler scrapping the movement after its second performance, in 1894. It would lie forgotten until resurrected by (curiously) Benjamin Britten in 1967. Not entirely helpfully, Mahler supplied the audience with detailed program notes linking the music to Jean-Paul’s epic; an unappreciative Budapest audience laughed the work off the stage. Mahler admitted at the time that he had made up the programmatic content <i>after</i> writing the music. An old story in the ever-deceptive emotional world of Romanticism.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">It was only in 1896 that the Symphony finally appeared in its present form, minus <i>Blumine</i> and without its title. It was now the Symphony in D for Large Orchestra, and so it remains today. Ironically, the Berlin critics slammed the work for its <i>lack</i> of programmatic content.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">This apparent indecision points to the very heart of Mahler’s music. The Funeral March of Beethoven’s <i>Eroica</i> symphony evokes—in advance—the departed Napoleon; Mahler’s Funeral March is a mangled <i>Frère Jacques,</i> and suggests the obsequies for an unfortunate puppet. This sort of irony was always going to cause Mahler problems with an audience that liked its emotions untainted; indeed, it would be the 1960s before his music achieved the popularity it deserved. Two World Wars, grimly foreseen by Nietzsche, had made the old Romanticism not merely impossible but unbearable.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">The first movement, based largely on the song <i>Ging heut’ Morgen</i> (not so much inspired as <i>caused</i> by Johanna Richter), emerges from a drastic re-hearing of the opening of Beethoven’s Ninth, as distant fanfares and tweeting birds usher us into Mahler’s world. A symphony, he would tell Jean Sibelius, must be a world, and this is his. The <i>Wayfarer</i> song is heralded by the unmistakable sound of the cuckoo. Unmistakable, but nonstandard: Austrian cuckoos, it seems, sing a fourth, rather than the traditional third.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">One of Mahler’s early songs, <i>Hans und Grete</i> (another love song - inspiration, mercifully, unknown) is recycled in the second movement into a vision of precisely the pan-Germanic merriment that Mahler never felt at home in. Like the peasant dance in Bartók’s Concerto for Orchestra—once described as “a man trying to dance with a foot nailed to the floor”—this is music expressing almost exactly the opposite of what it seems to be. This is the music of the outsider, who always hears from afar, even when surrounded by the musicians.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Mahler knew <i>Frère Jacques</i> as <i>Bruder Martin.</i> Early audiences were violently offended by its transformation into a dirge in the third movement, as though it were an affront to the very thought of childish innocence. Which is exactly what it is. Mahler is at his grimmest precisely when he is joking. A lifelong admirer of Nietzsche, he was well acquainted with the philosopher’s motto—<i>Ridendo dicere severum;</i> saying stern things with a smile. Mahler claimed that the music was inspired by a woodcut called <i>The Hunter’s Funeral Procession</i>—which may even be true. But anyone who has been through the emotional mill of Stephen Sondheim’s <i>Into The Woods</i> knows what can happen to childish materials in the hands of a master. And so it is here.
</a></font></p><p>
<font face="verdana" size="2"><a name="gm">Mahler’s own early program note calls the last movement of the symphony “The cry of a wounded heart”—his, of course. The movement acts as the apotheosis of the early movements—the goal they never reached. The Wayfarer of the first movement finally reaches his destination (it is almost a surprise that he had one); even poor Marion Weber makes an appearance as the <i>Blumine</i> music drifts achingly by—referring back, ironically, to music that Mahler had cut. The music, all too obviously, is conjuring up an ecstasy that he never knew in the “real” world (is there one?); the blaze of brass (seven horns!) that closes the work is an invitation into the Beyond.
<op>
Jean-Paul once said, in a phrase that would echo eternally in Nietzsche, “Joy, unlike seriousness, is inexhaustible.” Mahler clearly knew what he meant; he had learned the hard way. Through his music, we can learn the same lesson. 
',0,'',0);
INSERT INTO "django_flatpage" VALUES(12,'/mailing_list/','Mailing List','<h2>Subscribe to the Mailing List</h2>

<p>To subscribe to the mailing list, simply <a href="mailto:mailinglist@columbiaorchestra.org?subject=Columbia Orchestra Mailing List Request">send an email to mailinglist@columbiaorchestra.org</a> with your name, address, phone number, and email address.</p>

<p><strong>Our Privacy Policy</strong>:  We will never share your information with any outside individuals or organizations without your permission. Period! The sole purpose of our mailing list is to provide information about Columbia Orchestra events and activities to those who have expressed interest in the orchestra. </p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(13,'/auditions/','Auditions','<h2>Join the Columbia Orchestra</h2>

<p>If you play an orchestral instrument and enjoy the challenge of playing the best of the symphonic repertoire with an inspiring conductor, you don''t want to miss the opportunity to join the Columbia Orchestra of Howard County, Maryland. The Columbia Orchestra is a volunteer adult community orchestra dedicated to fostering a lifelong appreciation of and participation in classical music. Advanced high school students are welcome. Come join us for an exciting season performing great music! We keep an active substitute list, so don''t hesitate to contact us.</p>

<p>Now how do you join? By auditioning for us at the auditions typically held near the end of August. We also have a limited number of audition times during the season, so if you miss our August auditions but are still interested, please contact <a href="mailto:join@columbiaorchestra.org">join@columbiaorchestra.org</a> or 410-465-8777, extension 4.</p>

<p>If the thought of preparing an audition frightens you, please remember - we are a friendly group of people who love to play music together, and we want to make joining us a fun experience for you!</p>

<h3>Audition Requirements (to last no longer than 15 minutes total)</h3>

<ul>
<li>Two octave major and minor scales through 3b and 3# (articulated/slurred as you wish)</li>
<li>2 prepared pieces of contrasting nature (orchestral/concerto excerpts are acceptable)</li>
<li>Sight-reading at the discretion of the Music Director</li>
</ul>

<p>Please look around our web site to familiarize yourself with our orchestra. Here are some specific items you may be interested in:</p>
<ul>
<li>Rehearsal Schedule</li>
<li><a href="/locations/">Rehearsal Locations</a></li>
<li><a href="/season/">Concert Season</a></li>
</ul>

<p>Auditions will be held <b>Sunday, August 15, 2010 1:00 – 5:00 PM</b>
and <b>Monday, August 16, 2010 7:00 – 10:00 PM</b>
at Christ Episcopal Church, 6800 Oakland Mills Road, Columbia. for the following:</p>

<ul><li>Permanent positions for all strings</li>
<li>Substitute list for percussion, woodwinds and brass </li></ul>

<p>For more information, please contact <a href="mailto:join@columbiaorchestra.org">join@columbiaorchestra.org</a> or 410-465-8777, extension 4.</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(14,'/about_the_orchestra/','About The Orchestra','<h2>About The Columbia Orchestra</h2>

<h3>Artistic Staff</h3>
<ul>
<li><a href="/members/jason_love/">Jason Love - Music Director</a></li>
<li><a href="/members/randall_stewart/">Randall Stewart - Assistant Conductor</a></li>
<li><a href="/members/brenda_anna/">Brenda Anna - Concertmaster</a></li>
<li><a href="/members/">Orchestra Roster &amp; Bios</a></li>
</ul>

<h3>Administrative Staff</h3>
<ul>
<li>Tedd Griepentrog - Executive Director, <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a> 410-465-8777</li>
<li>Tamara Sciullo - Administrative Assistant/Development Director, <a href="mailto:admin@columbiaorchestra.org">admin@columbiaorchestra.org</a></li>
<li>Norma Hooks - Librarian</li>
<li>Annette Szawan - Personnel, strings</li>
<li>Anne Ward - Personnel, winds</li>
</ul>


<h3>Board of Directors</h3>
<ul>
<li>Bruce Kuehne - President</li>
<li>Anne Ward - Vice President</li>
<li>Naomi Chang Zajic - Secretary</li>
<li>David Zajic - Treasurer</li>
<li>Glenn Caldwell</li>
<li>Robert Cassel</li>
<li>Monica DeLeon</li>
<li>Karen Hopkinson</li>
<li>Barbara Russell</li>
<li>Murray Simon</li>
<li>Holly Thomas, Board Member Emerita</li>
</ul>

<p><a href="/history/">History of the Columbia Orchestra</a></p>

<p><a href="/uploads/2010/CO_Annual_Report_FY09.pdf">The Columbia Orchestra 2009-2010 Season Annual Report</a></p>

<p><a href="/mission/">Mission Statement</a></p>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(15,'/tickets/','Tickets','<h2>Ticket Information</h2>
 

</font><p><font size="2" face="verdana"> 
<font size="3"><b>We have 2010-2011 season tickets waiting for you!</b>
</font> We provide many methods for you to choose from: use a credit card to order <a class="bodylink" href="ticketinfo.shtml#online">online</a>, send a check by <a class="bodylink" href="ticketinfo.shtml#mail">mail</a>, reserve tickets by <a class="bodylink" href="ticketinfo.shtml#phone">phone/e-mail</a> or purchase them <a class="bodylink" href="ticketinfo.shtml#person">in person</a> at any of several different locations.  Details for each method are given below. If you do not order in advance, the remaining available tickets can be purchased by cash or check at the performance.


</font></p><p>
<font size="2" face="verdana">Tickets purchased prior to September will be mailed in early September.
<!--

If you have not subscribed this season, please review all of the great benefits of subscribing and consider subscribing next year - you will get more than great music!

-->
<!-- -->
</font></p><p><font size="2" face="verdana"> 
<font size="3"><b>Subscription Ticket Prices: <i>(Save 20% when you get 5 concerts for the price of 4!)</i></b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $80<br> 
Seniors (60 and up) $64<br> 
Fulltime Students (To age 24) $40 
</font></blockquote>
<!-- -->

<p>
<font size="2" face="verdana"><font size="3"><b>Single Ticket Prices - Classical Concerts:
</b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $20<br> 
Seniors (60 and up) $16<br> 
Fulltime Students (To age 24) $10 <br>
Group Rates (10 or more) $16
</font></blockquote>


<p>
<font size="2" face="verdana"><font size="3"><b>Single Ticket Prices - Pops Concert:
</b></font> 
</font></p><blockquote>
<font size="2" face="verdana">Adult $22<br> 
Seniors (60 and up) $18<br> 
Fulltime Students (To age 24) $10<br>
Group Rates (10 or more) $18
</font></blockquote>



<p><font size="2" face="verdana"> 
<font size="3"><b>Single Ticket Prices - Young People''s Concert:</b></font> 
<br>
</font></p><blockquote>
<font size="2" face="verdana">Adults, children 12 and up $15<br> 
Children under 12 <b>FREE</b> 
</font></blockquote>

<!-- -->
<p><font size="2" face="verdana"> 
<font size="3"><b>Subscriber Benefits Include:</b></font> 
</font></p><blockquote>
<font size="2" face="verdana"><i><b>Savings of 20%!</b></i> Attend five concerts for the price of four. 
</font><p><font size="2" face="verdana"> 
<i><b>Early access to seating!</b></i> Subscribers may select the best seats in the house by entering the theatre ten minutes before single-ticket purchasers. 
</font></p><p><font size="2" face="verdana"> 
<i><b>Free ticket exchange!</b></i> When conflicts arise, exchange your ticket in advance for another program. 
</font></p><p><font size="2" face="verdana"> 
<i><b>Special highlights on upcoming events!</b></i> Receive early information about programs and guest artists. 
</font></p><p><font size="2" face="verdana"> 
<i><b>E-mail reminders!</b></i> Don''t miss a single concert. 
</font></p></blockquote>
<!-- -->

<p>
<font size="2" face="verdana"><br> 
<font size="3"><b>Tickets may be purchased in advance in any of the following four ways.</b></font>  All ticket orders placed within six days of a performance will be held at the concert''s will-call window . They may be picked up any time after 6:15 p.m. on the evening of the performance. 
</font></p><p><font size="2" face="verdana"> 
<a name="online">
<b><font size="3">1) Order online using a credit card.</font></b> All transactions are handled on a secure server hosted by PayPal (the same PayPal that is the most trusted and popular method to make purchases on ebay). In the </a><a class="bodylink" href="#table">table</a> below, simply click the "add to cart" button(s) for the ticket(s) you wish to purchase and follow the instructions. Your order will be confirmed by e-mail, and your tickets will be mailed to you (or held at will-call for orders placed within 6 days of the concert). Online orders will be accepted up until the morning of each concert. We would appreciate it, though, if you would order earlier as we are a bit busy concert day.  
</font></p><p><font size="2" face="verdana"> 
<i>Please note: Online ordering is currently the only way to use a credit card to purchase tickets other than going in person to the Columbia Association office on Wincopin Circle. We are not equipped to handle credit card purchases at the door.</i> 
</font></p><p><font size="2" face="verdana"> 
<a name="mail">
<b><font size="3">2) Order by mail.</font></b>

Tell us the concert date, type of tickets (senior, adult, student) and number of tickets for each type along with a check to The Columbia Orchestra. Send to the address at the bottom of the page.
<!--

To order by mail, please download a <A CLASS="bodylink" HREF="ticketorder.pdf">ticket order form in PDF format</A>. Then mail us the completed form with payment. Viewing and printing this form requires Adobe Acrobat Reader; if you don''t have Acrobat Reader, you can download a <A CLASS="bodylink" HREF="http://www.adobe.com/products/acrobat/readstep.html">free copy</A>. 

-->
</a></font></p><p><font size="2" face="verdana"><a name="mail"> 
</a><a name="phone">
<b><font size="3">3) Order by phone or e-mail.</font></b> We strongly encourage online payment in order to minimize your delay in the lobby prior to being seated. If you do not wish to pay online and would like to reserve tickets to purchase at will-call, please contact our Executive Director at (410) 465-8777, extension 2, or E-mail <b>ticketinfo<font size="2">@</font>columbiaorchestra.org</b>. 
</a></font></p><p><font size="2" face="verdana"><a name="phone"> 
</a><a name="person">
<b><font size="3">4) Purchase tickets in person.</font></b> Tickets may be purchased in person at the Music &amp; Arts Center at the Chatham Station Shopping Center, the Music &amp; Arts Center in Laurel, or the Columbia Association office on Wincopin Circle. Music &amp; Arts will accept payment by cash or check. Credit cards may be used at the Columbia Association office. Tickets are available at these locations shortly before each concert.
</a></font></p><p><font size="2" face="verdana"><a name="person"> 
<font size="3"> For those concerts which are not sold out in advance, tickets will be available for purchase (by cash or check only) at the door. 
</font> 
</a></font></p><p><font size="2" face="verdana"><a name="person"> 
<br><br>

</a><a class="bodylink" name="table">  

</a><table width="100%" cellpadding="20" border="1"><tbody><tr><td> 
 
<br> 
<center><font size="3" face="verdana"><b>Concert Tickets 2010-2011</b></font></center>
 
<p> 
<font size="2" face="verdana">For each desired item, click once on its ''Add to Cart'' button. The first click will cause a Paypal shopping cart window to appear. Quantities for each item can be changed or removed in this new window. To access the shopping cart window (without adding items), click the ''View Cart'' button.</font> 
</p><p> 
</p><center> 

<table cellpadding="3" border="1"> 

<tbody><tr><td colspan="2"><font size="2" face="verdana">View current contents of shopping cart
   </font></td>
   <td><a href="https://www.paypal.com/cart/display=1&amp;business=tickets%40columbiaorchestra.org" target="paypal">
   <img src="/images/button-viewcart.gif" alt="Pop-up: View Cart" height="23" width="78" border="0"></a> 
</td></tr>


<!---------------------------------------  %2C = , ----------------------------------->

<!-- -->

<tr><td rowspan="3"><font size="2" face="verdana">
  Season Tickets<br>Five concerts for the price of four:<br>
<b>Classical Concert</b> programs and <b>Pops Concert</b>
</font></td>
  <td><font size="2" face="verdana">Adult @ $80 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+Season+Ticket+Subscription&amp;amount=80.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">   
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $64 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+Season+Ticket+Subscription&amp;amount=64.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $40 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+Season+Ticket+Subscription&amp;amount=40.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 1</b>
<br>at Jim Rouse Theatre<br>Saturday, October 16, 2010
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+1+@JRT+October+16&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+1+@JRT+October+16.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 2</b>
<br>at Jim Rouse Theatre<br>Saturday, December 4, 2010 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+2+@JRT+December+4&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
   </td>
</tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+2+@JRT+December+4.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>   



<tr><td rowspan="2"><font size="2" face="verdana">
   Tickets to<br><b>The Young People''s Concert, 12:30</b><br>at Jim Rouse Theatre<br>Saturday, January 8, 2011<br>Please indicate how many ''free'' children<br>will be attending at the bottom of<br>the <b>Review Your Payment</b> page<br>in <b> Message to Seller</b>. 
  </font></td>
  <td><font size="2" face="verdana">Children under 12<br>are FREE
  </font></td>
  <td>&nbsp;
</td></tr>  
<tr><td><font size="2" face="verdana">All others @ $15 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+and+children+over+11+tickets+to+the+Young+Peoples+Concert+@JRT+January+8+**12:30**&amp;amount=15.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>  
</td></tr> 
 


<tr><td rowspan="2"><font size="2" face="verdana">
   Tickets to<br><b>The Young People''s Concert, 3:00</b><br>at Jim Rouse Theatre<br>Saturday, January 8, 2011<br>Please indicate how many ''free'' children<br>will be attending at the bottom of<br>the <b>Review Your Payment</b> page<br>in <b> Message to Seller</b>. 
  </font></td>
  <td><font size="2" face="verdana">Children under 12<br>are FREE
  </font></td>
  <td>&nbsp;
</td></tr>  
<tr><td><font size="2" face="verdana">All others @ $15 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+and+children+over+11+tickets+to+the+Young+Peoples+Concert+@JRT+January+9+**3:00**&amp;amount=15.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>  
</td></tr>  



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Pops Concert</b>
<br>at Jim Rouse Theatre<br>Saturday, February 12, 2011
  </font></td>
  <td><font size="2" face="verdana">Adult @ $22 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Pops+@JRT+February+12&amp;amount=22.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $18 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Pops+@JRT+February+12&amp;amount=18.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Pops+@JRT+February+12&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $18 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Pops+@JRT+February+12.+Change+QUANTITY+to+10+or+more.&amp;amount=18.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 3</b>
<br>at Jim Rouse Theatre<br>Saturday, March 26, 2011 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+3+@JRT+March+26&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+3+@JRT+March+26.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>   



<tr><td rowspan="4"><font size="2" face="verdana">
  Tickets to<br><b>Classical Concert 4</b>
<br>at Jim Rouse Theatre<br>Saturday, June 4, 2011 
  </font></td>
  <td><font size="2" face="verdana">Adult @ $20 each
  </font></td> 
  <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Adult+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=20.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Senior @ $16 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Senior+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  
<tr><td><font size="2" face="verdana">Student @ $10 each
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Student+tickets+to+Classical+Concert+4+@JRT+June+4&amp;amount=10.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>   
<tr><td><font size="2" face="verdana">Group Rate @ $16 each<br>You must buy at least 10
   </font></td>
   <td><a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Group+Rate+tickets+to+Classical+Concert+2+@JRT+June+4.+Change+QUANTITY+to+10+or+more.&amp;amount=16.00&amp;return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&amp;cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" target="paypal">
   <img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a>
</td></tr>     



<tr><td><font size="2" face="verdana">
Make a tax-deductible donation ...
</font><p>
<font size="2" face="verdana">After clicking ''Add to Cart'', change the<br>
donation ''QUANTITY'' to the number of<br>
$10 increments you would like to donate.<br>
Example: for a $250 donation,<br>
change ''QUANTITY'' to 25.<br>
Then click ''Update Cart''. 
</font></p></td><td><font size="2" face="verdana">
  $10 Increments
  <br><font color="WHITE">__________________</font><!--for formatting-->
</font></td><td width="90"><!--for formatting-->
  <a href="https://www.paypal.com/cart/add=1&amp;business=tickets%40columbiaorchestra.org&amp;item_name=Donation+-+under+quantity%2C+enter+multiple+of+%2410+%28e.g.+Qty%3D5+for+a+%2450+donation%29+and+click+on+UPDATE+CART&amp;amount=10.00" target="paypal">
<img src="/images/button-addtocart.gif" alt="Pop-up: Add to Cart" height="23" width="90" border="0"></a> 
</td></tr>  

<!-- *** 2010 raffle tickets. kept just in case can use as template in the future ***



<TR><TD ROWSPAN=8><FONT FACE=verdana SIZE=2>

  <A CLASS="boldlink" HREF="raffle.pdf" TARGET="co_link" TITLE="Pop-up: PDF"><B>Raffle Tickets: 5 tickets for $20</B></A>

<BR>Drawing Saturday, May 22, 2010 

  </TD>

  <TD><FONT FACE=verdana SIZE=2>Sports and Leisure @ 5 for $20

  </TD> 

  <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Sports+and+Leisure&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>Pamper Yourself @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Pamper+Yourself&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>For the Home @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+For+the+Home &amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Musician Musings @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Musician+Musings&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>A Family Affair @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+A+Family+Affair&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>An Event to Remember@ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+An+Event+to+Remember&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 1 @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Taste+of+the+Arts+1&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 2 @ 5 for $20

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=5+Tickets+Taste+of+the+Arts+2&amount=20.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   



<TR><TD ROWSPAN=8><FONT FACE=verdana SIZE=2>

  <A CLASS="boldlink" HREF="raffle.pdf" TARGET="co_link" TITLE="Pop-up: PDF"><B>Single Raffle Tickets</B></A>

<BR>Drawing Saturday, May 22, 2010 

  </TD>

  <TD><FONT FACE=verdana SIZE=2>Sports and Leisure @ $5 each

  </TD> 

  <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+ticket+Sports+and+Leisure&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>Pamper Yourself @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Pamper+Yourself&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>  

<TR><TD><FONT FACE=verdana SIZE=2>For the Home @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+For+the+Home &amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a> 

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Musician Musings @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Musician+Musings&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>A Family Affair @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+A+Family+Affair&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>An Event to Remember@ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+An+Event+to+Remember&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 1 @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Taste+of+the+Arts+1&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

<TR><TD><FONT FACE=verdana SIZE=2>Taste of the Arts 2 @ $5 each

   </TD>

   <TD><a href="https://www.paypal.com/cart/add=1&business=tickets%40columbiaorchestra.org&item_name=Single+Ticket+Taste+of+the+Arts+2&amount=5.00&return=http%3A//www.columbiaorchestra.org/paymentsuccess.shtml&cancel_return=http%3A//www.columbiaorchestra.org/paymentcancel.shtml" TARGET="paypal">

   <img src="/images/button-addtocart.gif" border=0 width=90 height=23 alt="Pop-up: Add to Cart"></a>

</TD></TR>   

-->

</tbody></table>  

<p>  
</p></center></td></tr></tbody></table><a class="bodylink" name="table">  


</a></font></p><p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(16,'/partners/','Partners & Sponsors','<h2>Sponsors and Strategic Partnerships</h2>


<p>The Columbia Orchestra gratefully acknowledges the following organizations and corporations which have provided us with support in the form of grants, in-kind donations, and other services.</p>

<p>The Orchestra also has a number of strategic partnerships with organizations
to whom we supply chamber music, educational programs, and other services.
If you would like to explore the possibility of a mutually beneficial
partnership with the Orchestra, please contact our Executive Director at 410-465-8777 or by e-mail at <a href="mailto:execdir@columbiaorchestra.org">execdir@columbiaorchestra.org</a>.</p>



<a href="http://www.hocoarts.org/" target="co_link"><img src="/images/logo-HCAC.gif" title="Pop-up: Howard County Arts Council" height="100" width="78" border="0"></a> 
<a href="http://www.bwfa.com/" target="co_link"><img src="/images/logo-bwfa.gif" title="Pop-up: Baltimore-Washington Financial Advisors" height="50" hspace="5" width="167" border="0"></a>
<img src="/images/logo-RCO.gif" title="The Rouse Company Foundation Logo" height="50" hspace="5" width="270" border="0">
<a href="http://www.msac.org/" target="co_link"><img src="/images/logo-msac.gif" title="Pop-up: Maryland State Arts Council" height="50" hspace="5" width="127" border="0"></a>
<a href="http://www.target.com/" target="co_link"><img src="/images/logo-target.gif" title="Pop-up: Target" height="100" width="90" border="0"></a>  
<a href="http://arts.endow.gov" target="co_link"><img src="/images/logo-nea.gif" title="Pop-up: National Endowment for the Arts" height="50" hspace="5" width="129" border="0"></a> 
<a href="http://www.musicarts.com" target="co_link"><img src="/images/logo-MA.gif" title="Pop-up: The Music and Arts Centers" height="50" hspace="5" width="167" border="0"></a>
<a href="https://www.pnc.com/" target="co_link"><img src="/images/logo-PNC.gif" title="Pop-up: PNC" height="50" hspace="5" width="166" border="0"></a> 
<a href="http://www.gailesviolin.com/" target="co_link"><img src="/images/logo-Gailes-small.jpg" title="Pop-up: Gailes Violin Shop" height="50" hspace="5" width="148" border="0"></a> 
<a href="http://columbiafoundation.org/" target="co_link"><img src="/images/logo-col-foundation.gif" title="Pop-up: Columbia Foundation" height="50" hspace="5" width="160" border="0"></a>
<a href="http://www.hcgh.org/content/" target="co_link"><img src="/images/logo-HCGH.gif" title="Pop-up: PNC" height="75" hspace="5" width="300" align="ABSMIDDLE" border="0"></a> 


<ul>
<li><a class="bodylink" href="http://amazon.com%20" target="co_link" title="Pop-up">Amazon</a></li>
<li>Audio Visual Innovations*</li>
<li><a class="bodylink" href="http://www.bsomusic.org/" target="co_link" title="Pop-up">Baltimore Symphony Orchestra</a>*</li>
<li><a class="bodylink" href="http://www.bwfa.com/" target="co_link" title="Pop-up">Baltimore Washington Financial Advisors</a></li>
<li><a class="bodylink" href="http://www.bankofamerica.com/" target="co_link" title="Pop-up">Bank of America</a></li>
<li><a class="bodylink" href="http://home.comcast.net/%7Ecandlelightconcerts/candleInfo.html" target="co_link" title="Pop-up">Candlelight Concert Series</a>*</li>
<li><a class="bodylink" href="http://www.chesapeakeshakespeare.com/" target="co_link" title="Pop-up">The Chesapeake Shakespeare Company</a>*</li>
<li><a class="bodylink" href="http://christchurchcolumbia.org/" target="co_link" title="Pop-up">Christ Episcopal Church</a>*</li>
<li><a class="bodylink" href="http://www.clydes.com" target="co_link" title="Pop-up">Clyde’s of Columbia</a>*</li>
<li><a class="bodylink" href="http://www.columbiaassociation.com" target="co_link" title="Pop-up">The Columbia Association</a></li>
<li><a class="bodylink" href="http://www.columbiafestival.com" target="co_link" title="Pop-up">The Columbia Festival of the Arts*</a></li>
<li>Cosi / CR Restaurant*</li>
<li><a class="bodylink" href="http://columbiafoundation.org" target="co_link" title="Pop-up">The Columbia Foundation</a></li>
<li>Duke Energy</li>
<li><a class="bodylink" href="http://www.gailesviolin.com/" target="co_link" title="Pop-up">Gailes’ Violin Shop</a></li>
<li><a class="bodylink" href="http://www.gardendesignbuild.com" target="co_link" title="Pop-up">Garden Design Build Group</a>*</li>
<li><a class="bodylink" href="http://www.thegatheringplace.tv" target="co_link" title="Pop-up">The Gathering Place</a>*</li>
<li><a class="bodylink" href="http://goodsearch.com" target="co_link" title="Pop-up">GoodSearch.com</a></li>
<li><a class="bodylink" href="http://www.hocoarts.org" target="co_link" title="Pop-up">Howard County Arts Council</a></li>
<li><a class="bodylink" href="http://www.co.ho.md.us" target="co_link" title="Pop-up">Howard County Government</a></li>
<li><a class="bodylink" href="http://www.visithowardcounty.com" target="co_link" title="Pop-up">Howard County Tourism Council</a>*</li>
<li><a class="bodylink" href="http://www.ironbridgewines.com" target="co_link" title="Pop-up">Iron Bridge Wine Company</a>*</li>
<li>James Ferry Photography* </li>
<li>Leadership Howard County*</li>
<li><a class="bodylink" href="http://www.msac.org" target="co_link" title="Pop-up">Maryland State Arts Council</a>*</li>
Medieval Times*</li>
<li><a class="bodylink" href="http://www.musicarts.com" target="co_link" title="Pop-up">Music and Arts Centers, Inc.</a></li>
<li><a class="bodylink" href="http://arts.endow.gov" target="co_link" title="Pop-up">National Endowment for the Arts</a></li>
<li>National Aquarium in Baltimore*</li>
<li>Oak Tree Furniture*</li>
<li>Patrick’s Hair Design*</li>
<li><a class="bodylink" href="http://www.patuxent.com" target="co_link" title="Pop-up">Patuxent Publications</a>*</li>
<li><a class="bodylink" href="https://www.pnc.com/" target="co_link">PNC</a></li>
<li>Pumplin Photography*</li>
<li>REP Stage*</li>
<li>The Rouse Company Foundation </li>
<li>Square D Foundation</li>
<li><a class="bodylink" href="http://www.target.com" target="co_link" title="Pop-up">Target</a></li>
<li>Toby’s Dinner Theatre*</li>
<li>Travelers Foundation</li>
<li>Treble C Music*</li>
<li>Unilever Foundation</li>
<li><a class="bodylink" href="http://www.community.ups.com/community/resources/foundation/" target="co_link" title="Pop-up">The UPS Foundation</a></li>
<li>Wal-Mart Foundation</li>
<li>Waverly Woods Golf Club*</li>
<li><a class="bodylink" href="http://www.wbal.com/" target="co_link" title="Pop-up">WBAL Radio</a>*</li>
<li><a class="bodylink" href="http://www.wbjc.com/" target="co_link" title="Pop-up">WBJC-FM</a>*</li>
<li>Wilhide’s Unique Flowers &amp; Gifts*</li>
</ul>

<p>* denotes in-kind contribution</p>
',0,'',0);
INSERT INTO "django_flatpage" VALUES(17,'/member_schedule/','Member Schedule','<h2>Members Schedule</h2>

<pre>

Next years concert dates -------------------

Fri/Sat October 15-16, 2010 Classical Concert #1 (Evening) 

Fri/Sat December 3-4, 2010 Classical Concert #2 (Evening)

Fri/Sat January 7-8, 2011 Young People’s Concert (Daytime)

Fri/Sat February 11-12, 2011 Pops Concert (Evening)

Fri/Sat March 25-26, 2011 Classical Concert #3 (Evening)

Fri/Sat June 3-4, 2011 Classical Concert #4 (Evening) 

Columbia Orchestra
May 22, 2010 Concert &ndash; Rehearsal Schedule


Saturday, May 8
DON’T FORGET THE CHAMBER CONCERT (7:30-Christ Episcopal)

Monday, May 10 &ndash; TGP
7:30	Mahler (iii, iv)
9:15	Mozart (ii, iii)

Monday, May 17 &ndash; TGP
7:30	Mozart (w/soloist
9:00	Mahler (all)

Friday, May 21 &ndash; ROUSE THEATRE
This rehearsal until 10:15
7:30	Mozart (w/soloist)
9:00	Mahler (all)

CONCERT: Saturday, May 21 &ndash; ROUSE THEATRE
Order: Mozart, intermission, Mahler, Sleigh Ride
</pre>',0,'',0);
INSERT INTO "django_flatpage" VALUES(18,'/stuff_from_jason/','Stuff From Jason','<h2>Stuff from Jason</h2>

',0,'',0);
INSERT INTO "django_flatpage" VALUES(19,'/young_artist_competition/','Young Artist Competition','<h2>Young Artist Competition</h2>

<p>The 2009-2010 Young Artist competition took place on January 23 &amp; 24, 2010. The players were outstanding, and we only wish that we could name more of them as winners. We are delighted to announce that the winners are:</p>

<p>
<h3>Qian Mei, violin &ndash; Junior Division</h3>
  
<img src="/images/ya-mei-10.jpg" alt="Qian Mei, violin" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Qian Mei is currently an 8th grader at Burleigh Manor Middle School. Qian has been studying violin for&nbsp;five years. For the past four years, she has been studying with Dr. Sheng-Tsung Wang. Qian has been a member of the Howard County GT and Enrichment Orchestras since 4th grade. She also&nbsp;participates in the Maryland All State Junior Orchestra.</p>

<p>Qian is also actively involved&nbsp;with the Burleigh Manor Mathalon team and the school newsletter committee, and&nbsp;she played volleyball in afterschool intramurals.&nbsp;Apart from school related activities, Qian loves play badminton. Qian also enjoys reading mystery novels, watching movies, making origami, and baking.</p>

<h3>Alternate:</h3>
<ul>
<li>Samuel Choi, violin</li>
</ul>

<h3>Honorable Mentions:</h3>

<ul>
<li>Sarah Kim, violin</li>
<li>Nathan Ko, clarinet</li>
<li>Kenneth Ryu Naito, violin</li>
<li>Joseph Aaron Michael Smith, clarinet</li>
<li>Winnie Tsao, cello</li>
</ul>

<h3>Jenny Lehtonen, flute &ndash; First Place, Senior Division, Wind Category</h3>

<img src="/images/ya-lehtonen-10.jpg" alt="Jenny Lehtonen, flute" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Jenny Lehtonen is a 17-year-old junior at Oakland Mills High School in Columbia. She has played flute for seven years and currently studies with Marlee Lindon. She is a member of the Oakland Mills High School Wind Ensemble and Marching Band, and the Chapelgate Church Orchestra. </p>

<p>Jenny was the winner of the Junior Division of the 2006–2007 Flute Society of Washington Student Honors Competition and 2008 winner of the Greater Laurel and Columbia MTA Young Musician Competition. She has been a member of the Maryland All-State 2008 Junior Band, 2009 Senior Band, and 2010 Senior Orchestra.</p>

<h3>Alternate:</h3>
<ul>
<li>Elizabeth Kim, flute</li>
</ul>

<h3>Honorable Mentions:</h3>

<ul>
<li>Kelley Klomparens, oboe</li>
<li>Felix Lee, clarinet</li>
<li>James Zhan, clarinet</li>
</ul>



<h3>Rena Shi, violin &ndash; First Place, Senior Division, String Category</h3>

<img src="/images/ya-shi-10-1.jpg" alt="Rena Shi, violin" border="0" height="160" hspace="10" vspace="10" width="125" align="RIGHT">

<p>Rena Shi, age 16, is a junior and an honor-roll student at River Hill High School. She began playing violin when she was three, and has been studying violin since with Ms. Ning Ma. She has been a member of the Maryland All State Orchestras every year since 2006, and is the principal second violin this year. Rena is the co-concertmaster and soloist of the River Hill High School Orchestra and the assistant concertmaster of the Howard County High School GT Orchestra.  She recently won the River Hill/Marriotts Ridge High School Young Artist Competition and gave a solo performance with the River Hill/Marriotts Ridge High School Orchestra</p>

<p>A resident of Clarksville, Rena is also a competitive tennis player.  She has won many USTA junior tournaments and in 2008 was among the top eight in her age group in Maryland.  In the 2009 season, after winning all of her matches, she attained the title of Howard County Girl’s Single Champion and Tennis Player of the Year.</p>


<h3>Alternate:</h3>

<ul>
<li>Alan Zhang, violin</li>
</ul>


<h3>Honorable Mentions:</h3>

<ul>
<li>Evangeline Chandran, violin</li>
<li>Samantha Cody, violin</li>
<li>Julie LeDuc, violin</li>
<li>Jonathan Terry, cello</li>
</ul>


<p>The winners will perform with the orchestra at our concert on Saturday, March 27, 2010, at the Jim Rouse Theatre. All winners, alternates and honorable mentions receive two complementary tickets to the performance. Come hear the future of music in Howard County!</p>',0,'',0);
INSERT INTO "django_flatpage" VALUES(20,'/press_room/','Press Room','<h2>Press Room</h2>

<p>The Press Room will be updated for the 2010-2011 season shortly.</p>',0,'',0);
CREATE TABLE "sponsors_sponsor" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(200) NOT NULL,
    "url" varchar(500),
    "slug" varchar(50) NOT NULL UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL
);
CREATE TABLE "soloists_soloist" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "instrument" varchar(100),
    "bio" text,
    "slug" varchar(50) NOT NULL UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL
);
INSERT INTO "soloists_soloist" VALUES(1,'Hsiu-Hui Wang','piano','<p>Dr. Hsiu-Hui Wang has enjoyed the enthusiastic applause of audiences across the United States and her native Taiwan. After a radiant performance of Beethoven’s First Piano Concerto, The Baltimore Sun admired her “graceful, buoyant” performance, adding that “there is an appealing sense of lift to her playing, which gave Beethoven’s passage work a balletic quality.” The New Britain Herald was impressed with the ardor of her playing, remarking that "watching the dramatic expressiveness with which [she] played was also a treat to behold. . . ." At the age of 19, Dr. Wang performed from memory the monumental first book of Bach''s Well-Tempered Clavier in recitals at Hartt School of Music and University of Maryland at College Park. She has since appeared with the Emerson String Quartet and performed with the Cayuga Chamber Orchestra, Hartt Symphony Orchestra, New Britain Symphony Orchestra, and Columbia Orchestra as well as performed at the Aspen Music Festival, La Jolla SummerFest, Waterloo Music Festival, and Yellow Barn Music Festival. Dr. Wang has won numerous competitions and awards (many won while still a teenager) such as the Emerson String Quartet Competition, the Connecticut MTNA Competitions, Renee B. Fisher Young Artist Piano Competitions, and the Hartford Symphony Auxiliary''s young Artist Competition.</p>

<p>As a founding member of the Gemini Piano Trio, Dr. Wang has won top prizes in the prestigious Chamber Music Yellow Springs National Competition, Music Teachers National Association (MTNA) Chamber Music Competition, and the 1997 Baltimore Chamber Music Awards competition. The trio was praised for their “amazing virtuosity” by Music Monthly, as well as for their Taipei debut performance that “epitomized the idiom of chamber music” by The Taipei times. The San Diego Union-Tribune hailed them as “mind readers, anticipating each other’s every move” while applauding their “almost uncanny musical closeness.” The trio has also performed guest engagements at the Phillips Collection, Princeton University, Penn State University, University of Maryland College Park, the Johns Hopkins University, the Southern Methodist University, the Chang Jung Christian University, and Soochow University in Taiwan and was featured on National Public Radio. The American Record Guide praised the trio’s début CD featuring works by Ives and Brahms saying, “There is an admirable balance between confidence, polished technique, and impulsive, romantic ardor in this performance.” Their second album, featuring trios by Ravel and Shostakovich, also has been well-received by audiences around the world with great enthusiasm. The trio recently joined the roster of artists at the Arabesque Records.</p>

<p>Dr. Wang received her bachelor''s degree (summa cum laude) from the Hartt School of Music, master''s degree from the University of Southern California, and her doctoral degree in piano performance from the University of Maryland, College Park. She has studied with international artists such as Raymond Hanson, Anne Koscielny, Gabriel Chodos, Stewart Gordon, and Thomas Schumacher. Dr. Wang has also received chamber music coachings from Menahem Pressler, Cecile Licad, Cho-Liang Lin, Ida Kavafian, David Finckel, and Wu Han. Her published doctoral dissertation, “Tracing the Development of the French Piano Trio” has been recognized by Maurice Hinson and Wesley Roberts’s newest edition of The Piano in Chamber Ensemble: An Annotated Guide as well as by John H. Baron’s Chamber Music: A Research and Information Guide.</p>

<p>Dr. Wang has been a dedicated teacher for over twenty-five years, and her students have won first prizes in various competitions. She has also been invited to chair and adjudicate many piano competitions and festivals. She is currently a music faculty member at Goucher College and Howard Community College where she has been selected as the 2003-2004 Arts and Humanities Division Outstanding Adjunct Faculty Member and as a co-founder /director of the Gemini Piano Trio Summer Chamber Music Workshop for the past five years. She also received the Honorary Citizenship from the City of Dallas, Office of Culture Affairs for her 2005 performances with the Gemini Piano Trio at the Southern Methodist University. Dr. Wang completed a three-city concert tour in Taiwan to great acclaim with the Gemini Piano Trio, including a sold-out debut concert at the Taipei National Concert Recital Hall in January of 2008. The trio is scheduled to appear on the Weill Recital Hall Chamber Music Series at Carnegie Hall in the fall of 2010. </p>','hsiu-hui-wang','src_imgs/soloists/Hsiu-Hui_Wang.jpg',1);
INSERT INTO "soloists_soloist" VALUES(2,'Jonathan Carney','violin','<p>Jonathan Carney was appointed concertmaster of the Baltimore Symphony Orchestra in 2001 after twelve seasons in the same position with London’s Royal Philharmonic Orchestra. He also held the concertmaster post with the Basque National Orchestra in Spain. Born in New Jersey, Jonathan Carney hails from a musical family with all six members of his family having graduated from the Juilliard School in New York. After completing his studies with Ivan Galamian and Christine Dethier, he was awarded a Leverhulme Fellowship to continue his studies in London at the Royal College of Music.</p>

<p>After enjoying critically acclaimed international tours as both concertmaster and soloist with numerous ensembles, Mr. Carney was invited by Vladimir Ashkenazy to become concertmaster of the Royal Philharmonic Orchestra in 1991. He was also appointed concertmaster of the Bournemouth Symphony Orchestra in 1994.</p>

<p>Recent solo performances have included concertos by Bruch, Nielsen, and Khatchaturian, the Brahms Double Concerto and Vaughan William’s <i>The Lark Ascending</i>, which was featured as a live BBC broadcast from London’s Barbican Hall. He has made a number of recordings, including concertos by Mozart, Vivaldi, and Nielsen, sonatas by Brahms, Beethoven, and Franck, and a disc of virtuoso works by Sarasate and Kreisler.</p>

<p>Mr. Carney lives in Maryland with his wife Ruthie and their three children, Hannah, Luke, and Gracie. He is a Connolly and Co. artist, exclusively playing Vision strings by Thomastik-Infeld. His violin is a 1687 Stradivarius, the Mercur-Avery.</p>','jonathan-carney','src_imgs/soloists/s-carney.jpg',3);
INSERT INTO "soloists_soloist" VALUES(3,'Ronald Mutchnik','violin','<p>Violinist Ronald Mutchnik graduated from the University of Maryland <i>summa cum laude</i>, where he studied with Robert Gerle. While there, he won the Baltimore Music Club’s and Baltimore Musicians’ competitions. He earned his Master’s degree from the New England Conservatory, where he studied with Joseph Gingold and Masuko Ushioda. He continued post-graduate studies at Tel Aviv University in Israel.</p>

<p>Mr. Mutchnik is active as an orchestral violinist, chamber musician, recitalist, and soloist. He has served as Concertmaster and Assistant Concertmaster with the Maryland Symphony, National Chamber Orchestra, Handel Choir and Columbia Pro Cantare Festival Orchestras, and the Baltimore Chamber Orchestra. He has appeared as a soloist with numerous orchestras in Maryland, as well as orchestras in Louisiana, Pennsylvania, South Carolina, and Minnesota. He appeared in the film <i>Washington Square</i>, performing his own composition. He was a featured soloist for the Maryland Ballet Theater and performed in Maryland and Alabama in a special recital, “Music of the Jewish Soul.”</p>

<p>Mr. Mutchnik has taught in several universities and colleges and currently teaches privately. He was President of the American String Teacher’s Association’s Maryland/DC Chapter and produced a video for violinists and violists entitled “Posture & Balance: The Dynamic Duo.” He has toured Korea, coaching and performing chamber music. Mr. Mutchnik is a founding member of and performer with the chamber music series based in Columbia, Maryland “ Sundays At Three” and is Chair of its artistic committee. Most recently, he performed in the United States State Department''s concert series and also formed Howard County''s first all professional chamber orchestra, The Orchestra of St. John''s. Upcoming concerts include performances of Bloch''s <i>Three Pictures of Chasidic Life</i> with the Columbia Orchestra and the Bruch <i>Scottish Fantasy</i> with the Frederick Symphony. </p>','ronald-mutchnik','src_imgs/soloists/s-mutchnik.jpg',2);
INSERT INTO "soloists_soloist" VALUES(4,'Theresa Bickham','soprano','<p>Soprano Theresa Bickham has been praised for her “fine piano nuances” and “expressive legato line.” She made her European concert debut in 2007 singing scenes from <i>La Traviata</i> under the direction of Maestro Eduardo Müller. Most recently, Ms. Bickham has been seen on the operatic stage as Adina in <i>L’Elisir d’Amore</i> with the Loudon Lyric Opera and Opera Camerata of Washington. In January 2009, she performed the role of the Princess in <i>A Bird in Your Ear</i> and Terenia in <i>The Beautiful Bridegroom</i> at the National Opera Association Convention in Washington, DC. Other roles include Rosalinde in <i>Die Fledermaus,</i> Musetta in <i>La Bohéme,</i> Arminda in <i>La finta giardiniera,</i> Constanza Piccolatura in <i>Impresario,</i> Frasquita in <i>Carmen,</i> Monica in <i>The Medium,</i> and Bessie in <i>Mahagonny Songspiel.</i>  No stranger to the musical theatre stage, Ms. Bickham has also performed the roles of The Baker’s Wife in <i>Into the Woods,</i> Tess in <i>Crazy for You,</i> Nancy in <i>Oliver,</i> and Mrs. Macafee in <i>Bye, Bye Birdie</i> among others.</p>

<p>A native of Maryland, Ms. Bickham has been a frequent guest artist throughout the Baltimore-Washington area.  Concert appearances include, Handel’s <i>Messiah,</i> Fauré’s <i>Requiem,</i> Vaughn Williams’ <i>Serenade to Music,</i> Bach’s <i>Cantata 25</i> and <i>Magnificat,</i> and Vivaldi’s <i>Gloria</i> and <i>Magnificat.</i>  She has also been the winner of many competitions including the Metropolitan Opera National Council Auditions—Mid-Atlantic Regional Finalist 2009, Palm Beach Opera 2008 Advanced Division Semi-Finalist, Shreveport Opera Singer of the Year Finalist 2008, MD/DC National Association of Teacher’s of Singing, Henry Sanborn Competition, Peggy Friedman-Gordon Competition, Moore’s Opera Center Concerto Competition, and the Gilbert and Sullivan Society of Houston.</p>

<p>Ms. Bickham earned a Master of Music degree from the Moore’s Opera Center at the University of Houston and a Bachelor of Music degree from Towson University. She has been on the faculty of Towson University’s Department of Music since 2006.</p>','theresa-bickham','src_imgs/soloists/s-bickham.jpg',0);
INSERT INTO "soloists_soloist" VALUES(5,'Neil Ewachiw','baritone','<p>Baritone Neil Ewachiw earned his Doctor of Musical Arts degree in Vocal Performance from The Catholic University of America in Washington, DC. Operatic roles include Sharpless in <i>Madama Butterfly,</i> Count Almaviva in <i>Le Nozze di Figaro,</i> Angelotti in <i>Tosca,</i> Pluton in <i>Orphée aux Enfers,</i> Dr. Falke in <i>Die Fledermaus,</i> Papageno in <i>Die Zauberflöte</i> and Count Monterone in <i>Rigoletto.</i>  Concert appearances have included the Vaughan Williams <i>Hodie,</i> Brahms <i>Liebeslieder Waltzer</i> and <i>Ein Deutsches Requiem,</i> Bach <i>St. Matthew Passion,</i> Mozart <i>Coronation Mass,</i> Haydn <i>Lord Nelson Mass, Handel Messiah,</i> and Saint-Saëns <i>Oratorio de Nöel.</i> </p>

<p>Neil is featured on the compact disc release, “Come to Me: Love Songs for Chorus by American Composers” by the American Repertory Singers on Arsis Audio. As a member of The United States Army Chorus, performances have included the arrival ceremony of Pope Benedict XVI at the White House, the State Dinner honoring Queen Elizabeth II, and the interments of former Presidents Ronald Reagan and Gerald R. Ford.</p>

<p>Concert venues have included Carnegie Hall, Avery Fisher Hall, D.A.R. Constitution Hall and the John F. Kennedy Center for the Performing Arts. Neil also teaches sacred music at Georgetown University, where he lectures on musical traditions as diverse as Native American ceremonial chant, West African Agbekor, Javanese gamelan and the evolution of the Roman Catholic mass as both a liturgical and musical form. </p>','neil-ewachiw','',1);
INSERT INTO "soloists_soloist" VALUES(6,'Jason Shafer','clarinet','<p>Clarinetist Jason Shafer just completed his first season as a member of the New World Symphony in Miami Beach, FL.  He graduated in May 2009 from the Eastman School of Music in Rochester, NY, receiving a Bachelor of Music degree (Highest Distinction) studying with Kenneth Grant.  He has previously performed as concerto soloist with the Round Top Festival Orchestra in June 2009, the Eastman Philharmonia in 2008, the Transylvania Symphony Orchestra at the 2006 Brevard Music Center, the Greater Baltimore Youth Orchestra in 2005, and the Columbia Orchestra in 2002.  Jason has also had the pleasure of working with Mr. Steven Cohen at the Brevard Music Center and with Dr. Kyle Coughlin in his hometown of Columbia, Maryland.  In addition to the clarinet, Jason is also a pianist, and loves to accompany other musicians. </p>','jason-shafer','src_imgs/soloists/Shafer.jpg',52);
INSERT INTO "soloists_soloist" VALUES(7,'Qing Li','violin','<p>Astonishing in her musical versatility, violinist Qing Li brings great warmth, poise, and insight to her music making. Solo performances have garnered such critical praise as, “ the highest level musically” David Zinman, “unsurpassed technical brilliance” by Hohenlohe, Germany newspaper, and "as the soloist, Qing was flawless... particularly in a stunning cadenza near the end of the first movement in  the Haydn violin concerto. Her style was impeccable..." by the Richmond Time, 2008. At the same time, she is a sought after chamber musician, having collaborated with such luminaries as Pinchas Zukerman, Eugenia Zukerman, Hilary Hahn, and Leon Fleischer. She is also admired as one of the country’s most accomplished orchestral players as the appointed Principal Second by Yuri Temirkanov.</p>

<p>Qing Li was born in Beijing China. At age four, she begin violin studies with her father Zhen-Kun Li. At age 12, Qing Li won her acceptance to the Central Conservatory. Begin her study with Wei-Jian Zhao. There she was discovered at a master class by Berl Senofsky, who enthusiastically brought her to Peabody Conservatory with a fellowship scholarship.She won fellowships in this country’s most major music festival programs including Tanglewood, Meadowmount, Aspen, Grand Tetons, and Alexander Schneider’s New York String Seminar. Her teachers include Berl Senofsky, legendary Joseph Gingold, Dorothy Delay.</p>

<p>Queen Elizabeth International Music Competition (1997, semifinalist), Marbury Violin Competition (1992, 1st prize), and Young Concert Artists International Competition (1997, semifinalist), and the first Beijing International Violin Competition (1986, prize-winner) are among just some of the prestigious awards Qing Li has received. </p>

<p>Meanwhile, Ms. Li won her first of what would become many posts with the Baltimore Symphony under David Zinman, in 1993. Her first of many concerto appearances with BSO followed rapidly. Since then, Qing Li has served as Assistant Concertmaster, and won her current chair of Principal Second Violin in 2001 under Yuri Temirkanov. 2008 November, Ms. Li performed the Butterfly Lovers concerto at the Kimmel Center in Philadelphia. In 2005, Hilary Hahn invited Qing Li to play the Bach double concerto in a benefit concert to a glowing press.</p>

<p>Ms. Li performs on a Nicolo Gagliano violin, was crafted in 1736, Naples.</p>','qing-li','src_imgs/soloists/QingLi.jpg',23);
INSERT INTO "soloists_soloist" VALUES(8,'Masterworks Chorale of Carroll County, Margaret Boudreaux, director','','<p>The Masterworks Chorale of Carroll County, known formerly as the Carroll County Choral Arts Society, was founded in 1977 under the direction of conductor David Kreider. Since its founding, the group has brought the community the works of Mozart, Brahms, Haydn, Handel, and Mendelssohn, as well as contemporary composers. The group has performed in Baltimore at the Cathedral of Saint Mary Our Queen, and with the Johns Hopkins Medical Institutions Choir. It has performed with the Baltimore Symphony Orchestra and has jointly hosted several concerts in Washington, D.C. with the Georgetown University Orchestra and Choir at the National Building Museum and at Georgetown University. The Carroll Festival Chorus, which combined members of both the Masterworks Chorale and the McDaniel College Choir, was selected in July 2005 to participate in Festival 500, “Sharing the Voices,” held in St. Johns, Newfoundland. In 2006, members of Masterworks Chorale formed the nucleus of the choir that premiered Lorraine Whittlesey''s "Einstein''s Dreams (it’s about time . . .),” based on the novel Einstein''s Dreams by Alan Lightman.</p>

<p>Dr. Margaret Boudreaux is the Artistic Director of the Masterworks Chorale of Carroll County and the Director of Choral Activities at McDaniel College. She has edited, arranged and performed choral music from the Renaissance and Baroque periods as well as folk-song, popular music, vocal jazz and musical theatre. She has published numerous articles and translations in the professional journals of the American Choral Directors Association, Chorus America and the International Federation of Choral Music. Currently, she has recently served as President of the Colleges and Universities division of the Maryland Music Educators Association and was the Maryland/DC Repertoire and Standards Chair for Ethnic and Multicultural Music for the American Choral Directors Association MD/DC Chapter for several years. A frequent clinician and conductor throughout the region, Dr. Boudreaux has performed with her choirs at conferences and for special presentations at the Kennedy Center, the Discovery Channel and other major Baltimore-Washington venues. In 2005, she conducted a choir at the Festival 500, “Sharing the Voices” International Choral Festival in St. John’s, Newfoundland. Her publishing company, Voices of Training, carries a number of scores combining a variety of voice levels and styles. Voices of Training will soon release Lorraine Whittlesey’s new choral work Einstein’s Dreams (its about time . . .) based on the Alan Lightman novel Einstein’s Dreams, which Dr. Boudreaux conducted in its 2006 premiere. She studied conducting with Helmuth Rilling and Donald Neuen. She holds degrees in music from the Universities of Arizona in Tucson, Oregon in Eugene, and Colorado in Boulder.  In May 2008 Dr. Boudreaux was awarded the Ira Zepp Excellence in Teaching Award by McDaniel College.</p>','masterworks-chorale','src_imgs/soloists/MasterworksChorale.JPG',8);
INSERT INTO "soloists_soloist" VALUES(9,'Stan Gilmer','','<p>Born March 2, 1948, Stan Gilmer grew up “down neck” in the Ironbound section of Newark, New Jersey. Life was tough, sho’nuff, but Stan certainly saw and heard enough to fill a jazz and blues singer''s repertoire for life. He acquired an early ear for the great crooners and performers of the day like Roy Hamilton, Harry Belafonte and Johnny Mathis. The words were one thing, but Stan’s instincts were drawn to the arrangements that supported the melodies, and gave the music passion... feeling.</p>
 
<p>In 1975, Stan moved to Northern California’s Bay area and teamed with Harvey Scales as a sometimes chauffeur and developing songwriter at Super Disc Productions. While there, he composed “Atlantic City: That Big-Time Town” with Harvey, and later recorded it with legendary bandleader Frank Foster. Shortly thereafter, Stan signed on as a staff writer with April Blackwood Music, a subsidiary of CBS Records.</p>
 
<p>Stan returned to New Jersey in 1980 and began working on his college degrees. In the meantime, he hooked up with super-pianist Michael Renzi at Cafe Carlyle in Manhattan while Renzi was sitting in for Bobby Short with Sylvia Syms. Mike invited him out to see Mel Torme, and before the night was over, Stan was rubbing elbows with pianist George Shearing and Ron O’Connell and his orchestra. As their relationship grew, Stan began compiling demos with Renzi. Along the way, Stan performed with some of New York’s most accomplished jazzmen, including a swinging performance at Newark’s Gateway Hotel with Tony Monte, Frank Wess, Jack Jennings and bandleader Tony Corbicello.</p>
 
<p>While at Essex County Community College (1980-1983) Stan worked with Professor Romolo Ferris’ Jazz Workshop developing his songwriting and music notation skills. Between 1983 and 1986 Stan worked regularly with local big bands, including the John Glock Orchestra, Joe Carson’s big band and the Rod Ruth Orchestra. The crowning achievement of this period was a featured performance with Frank Foster and his Loud Minority, during the Billy Taylor Jazz Mobile at Grant’s Tomb, in Manhattan.</p>
 
<p>With his formal education concluded, Stan hooked up with the Chink Wing jazz group in Newark, working as the male vocalist alongside Ann Bailey. There was work at the famous Hit Factory, commercial jingles, and still more club gigs keeping Stan busy.</p>
 
<p>In 1995, Stan packed up his wife of 34 years (and counting), their daughter Penny and son Stan, Jr., and moved to Howard County, Maryland, where they live today. He works regularly with The Whit Williams “Now’s The Time” big band, the Chuck Funn Orchestra and the Jimmy Wells quartet and has headlined recently with the Howard Burns Orchestra at Frederick (MD) Community College.</p>
 
<p>In 2003, Stan founded the Colonnade Of Music record label. The label’s first effort is “Stan Gilmer Sings Sammy,” with John Mosca leading the Vanguard Orchestra, recorded at Bennett studios in Englewood, NJ. Stan and Mosca “turned out” the 2003 Hartford Jazz Festival, with Jim Argiro conducting, straw boss Dave Glasser and Canadian Warren Chiasson on vibraphone. Look for more from Stan and Warren in the future.</p>
 
<p>~ Excerpted from Walter Allen’s biographical note</p>
','stan-gilmer','src_imgs/soloists/Stan_Gilmer.jpg',27);
CREATE TABLE "pieces_piece_soloist" (
    "id" integer NOT NULL PRIMARY KEY,
    "piece_id" integer NOT NULL,
    "soloist_id" integer NOT NULL REFERENCES "soloists_soloist" ("id"),
    UNIQUE ("piece_id", "soloist_id")
);
INSERT INTO "pieces_piece_soloist" VALUES(1,6,7);
INSERT INTO "pieces_piece_soloist" VALUES(2,21,3);
INSERT INTO "pieces_piece_soloist" VALUES(3,3,6);
INSERT INTO "pieces_piece_soloist" VALUES(4,30,1);
INSERT INTO "pieces_piece_soloist" VALUES(5,17,2);
INSERT INTO "pieces_piece_soloist" VALUES(6,15,8);
CREATE TABLE "pieces_piece" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(250) NOT NULL,
    "movement" varchar(100),
    "composer_id" integer NOT NULL
);
INSERT INTO "pieces_piece" VALUES(2,'Motor City Dance Mix','',2);
INSERT INTO "pieces_piece" VALUES(3,'Clarinet Concerto','',3);
INSERT INTO "pieces_piece" VALUES(4,'La Mer','',4);
INSERT INTO "pieces_piece" VALUES(5,'Fanfare for the Uncommon Woman','',5);
INSERT INTO "pieces_piece" VALUES(6,'Butterfly Lovers Violin Concerto','',6);
INSERT INTO "pieces_piece" VALUES(7,'The Planets','',7);
INSERT INTO "pieces_piece" VALUES(8,'Festive Overture','',8);
INSERT INTO "pieces_piece" VALUES(9,'Danzon No. 2','',9);
INSERT INTO "pieces_piece" VALUES(10,'Pavane for a Dead Princess','',10);
INSERT INTO "pieces_piece" VALUES(11,'Variations on a Theme by Haydn','',11);
INSERT INTO "pieces_piece" VALUES(12,'Threnody to the Victims of Hiroshima','',12);
INSERT INTO "pieces_piece" VALUES(14,'“Batter My Heart” from Doctor Atomic','',14);
INSERT INTO "pieces_piece" VALUES(15,'Music from The Creation','',15);
INSERT INTO "pieces_piece" VALUES(16,'Overture to Egmont','',16);
INSERT INTO "pieces_piece" VALUES(17,'Violin Concerto','',17);
INSERT INTO "pieces_piece" VALUES(18,'Rite of Spring','',18);
INSERT INTO "pieces_piece" VALUES(19,'Symphony No. 1, "Remembrance"','Third Movement',19);
INSERT INTO "pieces_piece" VALUES(20,'Hebrides Overture','',20);
INSERT INTO "pieces_piece" VALUES(21,'Baal Shem','',21);
INSERT INTO "pieces_piece" VALUES(22,'Pines of Rome','',22);
INSERT INTO "pieces_piece" VALUES(23,'"Malambo" from Estancia ','',23);
INSERT INTO "pieces_piece" VALUES(24,'The Noon Witch ','',24);
INSERT INTO "pieces_piece" VALUES(25,'Rush','',25);
INSERT INTO "pieces_piece" VALUES(26,'Mother Goose Suite','',10);
INSERT INTO "pieces_piece" VALUES(27,'Violin Concerto in d minor','Movement 1',26);
INSERT INTO "pieces_piece" VALUES(28,'Poem for Flute','',27);
INSERT INTO "pieces_piece" VALUES(29,'Violin Concerto','Movement 3',17);
INSERT INTO "pieces_piece" VALUES(30,'Piano Concerto No. 20','',3);
INSERT INTO "pieces_piece" VALUES(31,'Symphony No. 1','',28);
INSERT INTO "pieces_piece" VALUES(32,'Winners of the Young Artist Competition','',29);
CREATE TABLE "pieces_composer" (
    "id" integer NOT NULL PRIMARY KEY,
    "first_name" varchar(100),
    "middle_name" varchar(100),
    "last_name" varchar(100),
    "bio" text,
    "other_composer" varchar(100),
    "photo" varchar(100),
    "num_views" integer unsigned,
    "url" varchar(200)
);
INSERT INTO "pieces_composer" VALUES(2,'Jonathan','Bailey','Holland',NULL,NULL,'',NULL,'');
INSERT INTO "pieces_composer" VALUES(3,'Wolfgang','Amadeus','Mozart',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(4,'Claude','','Debussy',NULL,NULL,'',NULL,'');
INSERT INTO "pieces_composer" VALUES(5,'Joan','','Tower',NULL,NULL,'',NULL,'');
INSERT INTO "pieces_composer" VALUES(6,'','','',NULL,'Chen Gang and He Zhanhao','',NULL,'');
INSERT INTO "pieces_composer" VALUES(7,'Gustav','','Holst',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(8,'Dmitri','','Shostakovich',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(9,'Arturo','','Márquez',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(10,'Maurice','','Ravel',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(11,'Johannes ','','Brahms',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(12,'Krzystof','','Penderecki',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(13,'','','',NULL,'Radiohead','',NULL,'');
INSERT INTO "pieces_composer" VALUES(14,'John','','Adams',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(15,'Franz','Joseph','Haydn',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(16,'Ludwig','van','Beethoven',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(17,'Pyotr','Ilyich','Tchaikovsky',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(18,'Igor','','Stravinsky',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(19,'Albert','','Hurwit',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(20,'Felix','','Mendelssohn',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(21,'Ernest','','Bloch',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(22,'Ottorino','','Respighi',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(23,'Alberto','','Ginastera',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(24,'Antonín','Leopold','Dvořák',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(25,'Jonathan','','Leshnoff',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(26,'Henryk','','Wieniawski',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(27,'Charles','','Griffes',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(28,'Gustav','','Mahler',NULL,'','',NULL,'');
INSERT INTO "pieces_composer" VALUES(29,'','','','',' ','',0,'');
CREATE TABLE "events_season" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL UNIQUE,
    "startdate" date NOT NULL,
    "enddate" date NOT NULL,
    "description" varchar(200),
    "slug" varchar(50) NOT NULL UNIQUE
);
INSERT INTO "events_season" VALUES(1,'2009-2010 Season','2009-08-01','2010-05-22','','2009-2010_Season');
INSERT INTO "events_season" VALUES(2,'2010-2011 Season','2010-05-23','2011-06-05','','2010-2011-season');
CREATE TABLE "events_location" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "address" varchar(50) NOT NULL,
    "city" varchar(60) NOT NULL,
    "state" varchar(50) NOT NULL,
    "zip" varchar(10) NOT NULL,
    "url" varchar(500) NOT NULL,
    "alt_url" varchar(200),
    "slug" varchar(50) NOT NULL UNIQUE
);
INSERT INTO "events_location" VALUES(1,'Jim Rouse Theatre','5460 Trumpeter Road','Columbia','MD','21044','http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=James+Rouse+Theatre+for+the+Performing+Arts&sll=39.216852,-76.872078&sspn=0.010714,0.008787&ie=UTF8&hq=James+Rouse+Theatre+for+the+Performin','http://www.rousetheatre.org/','Rouse_Theater');
INSERT INTO "events_location" VALUES(2,'Christ Episcopal Church','6800 Oakland Mills Road','Columbia','MD','21045','http://maps.google.com/maps?f=q&source=s_q&hl=en&q=Christ+Church,&sll=39.182198,-76.826105&sspn=0.010928,0.008787&ie=UTF8&radius=0.24&split=1&rq=1&ev=zi&hq=Christ+Church,&hnear=&ll=39.182298,-76.82815','http://christchurchcolumbia.org/','christ-episcopal-church');
INSERT INTO "events_location" VALUES(3,'Howard County Center for the Arts','8510 High Ridge Road','Ellicott City','MD','21043','http://bit.ly/9oLBX7','http://www.hocoarts.org/contact_us.php','howard-county-center-arts');
CREATE TABLE "events_event_pieces" (
    "id" integer NOT NULL PRIMARY KEY,
    "event_id" integer NOT NULL,
    "piece_id" integer NOT NULL REFERENCES "pieces_piece" ("id"),
    "sort_value" integer NOT NULL
);
INSERT INTO "events_event_pieces" VALUES(1,11,2,0);
INSERT INTO "events_event_pieces" VALUES(2,11,3,1);
INSERT INTO "events_event_pieces" VALUES(3,11,4,2);
INSERT INTO "events_event_pieces" VALUES(4,16,12,3);
INSERT INTO "events_event_pieces" VALUES(5,16,14,4);
INSERT INTO "events_event_pieces" VALUES(6,16,15,5);
INSERT INTO "events_event_pieces" VALUES(7,12,5,6);
INSERT INTO "events_event_pieces" VALUES(8,12,6,7);
INSERT INTO "events_event_pieces" VALUES(9,12,7,8);
INSERT INTO "events_event_pieces" VALUES(10,13,8,9);
INSERT INTO "events_event_pieces" VALUES(11,13,9,10);
INSERT INTO "events_event_pieces" VALUES(12,13,10,11);
INSERT INTO "events_event_pieces" VALUES(13,13,11,12);
INSERT INTO "events_event_pieces" VALUES(14,13,32,13);
INSERT INTO "events_event_pieces" VALUES(15,4,16,14);
INSERT INTO "events_event_pieces" VALUES(16,4,17,15);
INSERT INTO "events_event_pieces" VALUES(17,4,18,16);
INSERT INTO "events_event_pieces" VALUES(18,6,19,17);
INSERT INTO "events_event_pieces" VALUES(19,6,20,18);
INSERT INTO "events_event_pieces" VALUES(20,6,21,19);
INSERT INTO "events_event_pieces" VALUES(21,6,22,20);
INSERT INTO "events_event_pieces" VALUES(22,8,23,21);
INSERT INTO "events_event_pieces" VALUES(23,8,24,22);
INSERT INTO "events_event_pieces" VALUES(24,8,25,23);
INSERT INTO "events_event_pieces" VALUES(25,8,26,24);
INSERT INTO "events_event_pieces" VALUES(26,8,27,25);
INSERT INTO "events_event_pieces" VALUES(27,8,28,26);
INSERT INTO "events_event_pieces" VALUES(28,8,29,27);
INSERT INTO "events_event_pieces" VALUES(29,2,30,28);
INSERT INTO "events_event_pieces" VALUES(30,2,31,29);
CREATE TABLE "events_event_soloists" (
    "id" integer NOT NULL PRIMARY KEY,
    "event_id" integer NOT NULL,
    "soloist_id" integer NOT NULL REFERENCES "soloists_soloist" ("id"),
    UNIQUE ("event_id", "soloist_id")
);
INSERT INTO "events_event_soloists" VALUES(1,15,9);
CREATE TABLE "events_event" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "date" datetime NOT NULL,
    "alt_time" time,
    "alt_date" datetime,
    "location_id" integer NOT NULL REFERENCES "events_location" ("id"),
    "ticket_link" varchar(200),
    "season_id" integer NOT NULL REFERENCES "events_season" ("id"),
    "description" text NOT NULL,
    "slug" varchar(50) NOT NULL UNIQUE,
    "preconcert_discussion_id" integer UNIQUE,
    "image" varchar(100),
    "num_views" integer unsigned NOT NULL,
    "status" integer NOT NULL
);
INSERT INTO "events_event" VALUES(2,'The Titans','2010-05-22 19:30:00',NULL,NULL,1,'',1,'<p>What a way to celebrate Mahler’s 150th! We pull out all the stops in Mahler’s most popular symphony, an emotional crown jewel in the Romantic tradition. But first, Gemini Trio pianist and Howard Community College faculty member Hsiu-Hui Wang captures both the stormy and profound moods of one of Mozart’s most cherished works. </p>','titans',1,'src_imgs/events/Hsiu-Hui_Wang.jpg',5,1);
INSERT INTO "events_event" VALUES(3,'Chamber Concert','2010-05-08 19:30:00',NULL,NULL,2,'',1,'<p>Concertmaster Brenda Anna, violin, pianist Nancy Smith, and Music Director Jason Love, cello, bring you three masterworks with a decidedly ethnic flavor! Swiss composer Frank Martin brings a multicultural twist to his <em>Trio on Irish Folk Songs</em> while Zoltan Kodaly explores the traditions of his Hungarian homeland in the virtuosic <em>Duo for Violin and Cello</em>. The program closes in the great Austrian tradition with Schubert''s tuneful B-Flat Major Trio. Free admission (donations accepted).</p>','chamber-concert',NULL,'',0,2);
INSERT INTO "events_event" VALUES(4,'Jonathan Carney & The Rite of Spring','2009-10-17 19:30:00',NULL,NULL,1,'',1,'<p>Over 100 musicians take the stage as the orchestra brings you three of the most inspired pieces of music ever conceived! Beethoven was considered mad by his contemporaries…Tchaikovsky’s Concerto was deemed unplayable…The French police couldn’t stop the riot at Stravinsky’s premiere…But today these incredible works stand among the greatest of the Classical, Romantic, and Twentieth-Century masterpieces.</p>','jonathan-carney-rite-spring',NULL,'',0,1);
INSERT INTO "events_event" VALUES(5,'Chamber Concert','2009-11-08 15:00:00',NULL,NULL,2,'',1,'<p>Join members of the orchestra for a FREE chamber program including Dvorak''s Sextet for Strings, Corelli''s Christmas Concerto, Poulenc''s Sextet for Piano and Winds and more!</p>','chamber-concert1',NULL,'',0,2);
INSERT INTO "events_event" VALUES(6,'A Time and Place','2009-12-12 20:00:00',NULL,NULL,1,'',1,'<p>From the craggy rocks of the Scottish islands in Mendelssohn’s overture to Respighi’s triumphant trumpets of ancient Rome, join us as we explore four exotic musical landscapes. Commemorate the 50th anniversary of Bloch''s death with local virtuoso Ronald Mutchnik in an exploration of Chassidic life, and then hear the premiere of Albert Hurwit’s winning work in the orchestra’s fourth American Composer Competition, inspired by his family’s migration during the Jewish Diaspora and the Holocaust. Don’t miss our pre-concert lecture with the composer in attendance!</p>

<p>Featuring the winner of the American Composer Competition, Albert Hurwit. </p>','time-and-place',NULL,'',0,1);
INSERT INTO "events_event" VALUES(7,'Young People''s Concert','2010-01-09 12:30:00','15:00:00',NULL,1,'',1,'<p>One of our most popular events! Narrated tales including <i>Casey at the Bat</i> teach children about the instruments of the orchestra and more. Choose either the 12:30 or 3:00 concert and try your hand at playing one of the instruments from the concert at our Musical Instrument Petting Zoo, sponsored by our friends at Music & Arts. </p>','young-peoples-concert',NULL,'',0,1);
INSERT INTO "events_event" VALUES(8,'Short Stories','2010-03-27 19:30:00',NULL,NULL,1,'',1,'<p>Definitely one for the whole family! Symphonies may be long like novels, but great music often comes in smaller packages. Each of these Argentinian, Czech, French, and American stories has a flavor all its own. Maryland composer Jonathan Leshnoff is gaining international renown, and his <i>Rush</i> will sweep you off your feet! Plus, performances by the young maestros who win our Young Artist Competition are a highlight to the season.</p>

<p>This concert sponsored in part by a generous contribution from PNC.</p>','short-stories',NULL,'',0,1);
INSERT INTO "events_event" VALUES(9,'Chamber Concert','2010-04-17 19:30:00',NULL,NULL,2,'',1,'<p>You''ll love hearing members of the orchestra up close and personal in this intimate setting! This concert includes highlights from Mendelssohn''s glorious Octet, Dvorak''s G Major Quintet, a Mozart String Quartet, and the return of the bassoon quartet! This is a free concert (donations accepted) and a wonderful way to hear our players featured in small ensembles. </p>','chamber-concert3',NULL,'',0,2);
INSERT INTO "events_event" VALUES(10,'Symphonic Pops','2010-02-27 19:30:00',NULL,NULL,1,'',1,'<p>What do you get when you bring together Broadway shows like Les Miserables and Gypsy, the songs of Simon & Garfunkel, Celtic classics including music from Lord of the Dance, and combine it with great film scores? It’s an evening the whole family will not forget! Featuring Theresa Bickham, soprano, Neil Ewachiw, baritone, and members of the Teelin Irish Dance Company. </p>','symphonic-pops',NULL,'',0,1);
INSERT INTO "events_event" VALUES(11,'Land and Sea','2010-10-16 19:30:00',NULL,NULL,1,'',2,'<p>The Columbia Orchestra bursts out in full color with Debussy’s impressionistic masterpiece! Jason Shafer, the Orchestra’s 2003 Young Artist Competition winner now playing in Florida’s New World Symphony, brings his virtuosity to one of Mozart’s last and most beautiful concertos. Begin the journey with a young African-American composer’s jazzy celebration of Detroit’s automotive history and its world-class orchestra. </p>','land-and-sea',NULL,'',22,1);
INSERT INTO "events_event" VALUES(12,'Earth and Sky','2010-12-04 19:30:00',NULL,NULL,1,'',2,'<p>Over a hundred musicians take the stage for Holst’s unforgettable depictions not just of the planets themselves, but the human emotions and passions represented by the gods for which they are named. First, Baltimore Symphony violinist Qing Li joins the orchestra for a ravishing, romantic score based on an ancient Chinese legend, and our marvelous brass and percussion sections shine in Joan Tower’s fanfare. </p>','earth-and-sky',NULL,'',0,1);
INSERT INTO "events_event" VALUES(13,'Young and Eclectic','2011-03-26 19:30:00',NULL,NULL,1,'',2,'<p>A thrilling concert for the classical connoisseur, musical novices, and kids of all ages. We’re bringing together several works that don’t have to be long to be inspirational! And the jaw-dropping talent of the virtuosos who win our competition will help us complete this exotic journey around the globe. </p>','young-and-eclectic',NULL,'',0,1);
INSERT INTO "events_event" VALUES(14,'Peter and the Wolf ... and Friends','2011-01-08 12:30:00','15:00:00',NULL,1,'',2,'<p>Not only is this a fun introduction to the instruments of orchestra for younger students, older kids will enjoy learning more in a fun environment about how music is put together. The orchestra is joined by the marvelous performers of Kinetics Dance Theatre for Prokofiev’s immortal Peter and the Wolf, and kids will love a chance to try out many musical instruments at our Petting Zoo sponsored by Music & Arts held between our two concerts.</p>','peter-and-wolf-and-friends',NULL,'',0,1);
INSERT INTO "events_event" VALUES(15,'Symphonic Pops','2011-02-12 19:30:00',NULL,NULL,1,'',2,'<p>Broadway’s greatest hits, blockbusters from the silver screen, and a “Salute to Sammy” with local song-stylist Stan Gilmer highlight one of our most popular, family-friendly events.</p>','symphonic-pops-2011',NULL,'',0,1);
INSERT INTO "events_event" VALUES(16,'Creation and Destruction','2011-06-04 19:30:00',NULL,NULL,1,'',2,'<p>Our season finale is truly an exploration of the depths human spirit. The Masterworks Chorale of Carroll County. joins us for Haydn’s exploration of the numinous in highlights from his celebrated oratorio. First, great artists of our time explore how humankind balances its creative impulse against its destructive tendencies. </p>','creation-and-destruction',NULL,'',0,1);
CREATE TABLE "events_preconcertdiscussion" (
    "id" integer NOT NULL PRIMARY KEY,
    "time" time NOT NULL,
    "speaker" varchar(100) NOT NULL,
    "talk_location" varchar(200) NOT NULL,
    "sponsor" varchar(150),
    "youtube_embed_code" text
);
INSERT INTO "events_preconcertdiscussion" VALUES(1,'18:30:00','Bill Scanlan Murphy','Mini Theatre off the Rouse Theatre main lobby','BWFA','');
CREATE TABLE "roster_instrument" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(120) NOT NULL
);
INSERT INTO "roster_instrument" VALUES(1,'First Violin');
INSERT INTO "roster_instrument" VALUES(2,'Second Violin');
INSERT INTO "roster_instrument" VALUES(3,'Viola');
INSERT INTO "roster_instrument" VALUES(4,'Cello');
INSERT INTO "roster_instrument" VALUES(5,'Bass');
INSERT INTO "roster_instrument" VALUES(6,'Flute/Piccolo');
INSERT INTO "roster_instrument" VALUES(7,'Oboe');
INSERT INTO "roster_instrument" VALUES(8,'English Horn');
INSERT INTO "roster_instrument" VALUES(9,'Clarinet');
INSERT INTO "roster_instrument" VALUES(10,'E-Flat Clarinet');
INSERT INTO "roster_instrument" VALUES(11,'Bass Clarinet');
INSERT INTO "roster_instrument" VALUES(12,'Bassoon');
INSERT INTO "roster_instrument" VALUES(13,'Contrabassoon');
INSERT INTO "roster_instrument" VALUES(14,'French Horn');
INSERT INTO "roster_instrument" VALUES(15,'Trumpet');
INSERT INTO "roster_instrument" VALUES(16,'Bass Trumpet');
INSERT INTO "roster_instrument" VALUES(17,'Trombone');
INSERT INTO "roster_instrument" VALUES(18,'Bass Trombone');
INSERT INTO "roster_instrument" VALUES(19,'Tuba');
INSERT INTO "roster_instrument" VALUES(20,'Percussion');
INSERT INTO "roster_instrument" VALUES(21,'Timpani');
INSERT INTO "roster_instrument" VALUES(22,'Piano/Keyboard');
INSERT INTO "roster_instrument" VALUES(23,'Alto Flute');
INSERT INTO "roster_instrument" VALUES(24,'Harp');
INSERT INTO "roster_instrument" VALUES(25,'Tenor Saxophone');
INSERT INTO "roster_instrument" VALUES(26,'Assistant Conductor');
INSERT INTO "roster_instrument" VALUES(27,'Music Director');
CREATE TABLE "roster_orchestramember" (
    "id" integer NOT NULL PRIMARY KEY,
    "first_name" varchar(100) NOT NULL,
    "middle_name" varchar(100) NOT NULL,
    "last_name" varchar(100) NOT NULL,
    "instrument_id" integer NOT NULL REFERENCES "roster_instrument" ("id"),
    "principal" bool NOT NULL,
    "concertmaster" bool NOT NULL,
    "concertmistress" bool NOT NULL,
    "bio" text NOT NULL,
    "photo" varchar(100),
    "num_views" integer unsigned NOT NULL,
    "noncurrent_member" bool NOT NULL
);
INSERT INTO "roster_orchestramember" VALUES(1,'David','','Zajic',3,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(2,'Andrea','','Aldrich',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(3,'Edward','Jean','Welker',4,1,0,0,'<p>OOOooooOOO, I have my own biography? Who let that happen???</p>

<p>Hi, my name is listed above, as is my favorite instrument, the oboe.  Ok, that''s not exactly true, I play the cello and it is by far my favorite instrument.  No offense to Saint-Saëns'' Act 3 Scene 2, I still love you oboe!  Must be something about the O''s.</p>

<p>In elementary school, the music teacher came in and demonstrated all of the string instruments to the class. I heard the cello and went home to tell my parents I wanted to play that night.  This is from a person indecisive enough to take years before deciding to play baseball as a kid.</p>

<p>I''ve got Rostropovich''s autograph stashed away somewhere, own the scores to Prokofiev 2, 4, 5, and 6, a rare English biography of Miaskovsky, and a book of Alfred Brendel''s poetry.  My parents met singing Beethoven 9, and my dad once had lunch with Messaien.  (Though my grandfather once had a steak with Ted Williams.)  I like everything about music except Lalo and Yo-Yo, so it must again be something about the O''s.  (But I still love you <a href="http://en.wikipedia.org/wiki/Ottorino_Respighi">Ottorino</a>!)</p>

<p>As Clark Kent, I am a nerd.  My day job is writing websites, specifically <a href="http://www.pubmed.gov">PubMed</a>.  In my spare time I revel in any hobby I can concoct, be that music, photography, cycling, or... other <a href="http://eddiewelker.com">nerd things</a>.</p>

<p>Since there is literally nothing else about me... time for music shout-outs! Big props to my old quartet (Peggy, Mollie & Ariel!), my cello friends (Kacy, Kristen), my music friends [yes, IN order!] (Andrea, Ashleigh, Cameo, Celia, Enoch, Jerome, Robin [the oldest], and Val [the newest]), my orchestras, GBYO & UMD, and Jason, my sisters, and... everyone else I missed and cause trouble with!</p>','src_imgs/members/EddieWelker.jpg',44,0);
INSERT INTO "roster_orchestramember" VALUES(4,'Brenda','','Anna',1,0,0,1,'<p>Brenda Anna, violinist, attended the Peabody Conservatory of Johns Hopkins University, where she studied with Yong Ku Ahn, Charles Libove, and David Geber of the American String Quartet. She has also studied and participated in workshops with Elisabeth Adkins and Arnold Steinhart.</p>

<p>She currently serves as concertmaster of the Columbia Orchestra and is a member of the National Philharmonic. In addition, Brenda is a busy freelance performer in the Baltimore/Washington area. A member of the Quinten String Quartet, Ms. Anna has also performed with the Dickinson Piano Quartet, the Gallery Quartet, and the Riversdale Chamber Ensemble.</p>

<p>Ms. Anna has performed as soloist with the Mid-Atlantic Symphony, the Annapolis Chamber Orchestra, the Chamber Orchestra of Southern Maryland, the Prince Georges Philharmonic, the Prince Georges Symphony, the Arundel Summer Orchestra, the Messiah College Orchestra, and the Columbia Orchestra. She teaches in her private studio, and is a member of the faculty of Princeton Chamber Music Playweek in Lexington, VA, a summer program for adult amateur chamber musicians. </p>','src_imgs/members/Brenda_Anna_8x10.jpg',24,0);
INSERT INTO "roster_orchestramember" VALUES(5,'Sarah','','Prindiville',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(6,'Arthur','','Fleming',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(7,'Jason','','Love',27,0,0,0,'<p>Praised for his "intelligent and innovative programming," Jason Love has brought his inspiring demeanor and enormous energy to several of Maryland''s great cultural institutions. Under his leadership, the <em>Baltimore Sun</em> has called The Columbia Orchestra "Howard County''s premier ensemble for instrumental music," noting that "Love has the musicians playing not only with verve and passion, but with an awareness to enter into the emotional core of the works they perform."</p>

<p>Love’s twelve-year tenure as Artistic Director and Conductor of the Greater Baltimore Youth Orchestra Association was marked by continuous growth in the success and prestige of this organization. He commissioned new works, forged partnerships with other arts organizations, extended the orchestra’s community outreach programs and conducted highly successful tours of Austria, Japan, and Russia.</p>

<p>As a conductor and cellist, Mr. Love served for five years as Music Director for the New Horizons Chamber Ensemble, a contemporary music group based in Baltimore, MD. Under his leadership, the NHCE gave dozens of local and world premieres and became a unique resource for contemporary music in the area. Mr. Love is also active as a cellist, performing frequently in Maryland and across the United States. He recently gave the NC premiere of Tan Dun''s multi-media cello concerto, <em>The Map</em>.</p>

<p>A highly respected educator, Mr. Love also served as Conductor of the Chesapeake Youth Repertory Orchestra in <a href="/images/mullet.jpg" style="color:#000;cursor:text;text-decoration:none;">Annapolis, MD</a> for four years. In his eleven years on the faculty of the Governor''s School of North Carolina, he taught Twentieth-Century music to academically gifted high school students and lectured extensively on music and culture in our time. Not content to limit his educational endeavors to young people, he has lectured at many institutions including the Johns Hopkins University, the Baltimore Symphony and the Peabody Elderhostel program. He is a frequent panelist on the popular radio program, "Face the Music," on WBJC-FM in Baltimore, MD.</p>

<p>Recent and upcoming guest appearances find him conducting a variety of ensembles such as the Baltimore Symphony, Washington Sinfonietta (DC), Bismarck Symphony, and RUCKUS, a contemporary music ensemble at the University of Maryland, Baltimore County where he also teaches conducting. Aside from classical music he performs with singer-songwriter Angela Taylor and can be heard on singer-songwriter Sahffi''s upcoming album <em>Turning Tides</em>.</p>

<p>Born in Burlington, North Carolina, Love studied violoncello with Ronald Thomas and conducting with Frederik Prausnitz at the Peabody Conservatory. He is Past President of the Peabody Alumni Association.</p>','src_imgs/members/Jason_Love.jpg',56,0);
INSERT INTO "roster_orchestramember" VALUES(8,'Alison','','Candela',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(9,'Mike','','Catelinet',1,0,0,0,'<p>Columbia Orchestra member since: 2004</p>

<p>
What do you do for a living?
I work as an engineer for a naval architecture firm in suburban Baltimore.</p>

<p>Where else do you play?
Besides Columbia, I regularly play with the Howard County Ballet Orchestra and the Greenspring Valley Orchestra. I have also played in the Baltimore Philharmonia Orchestra, the Chamber Orchestra of Mt. Vernon Place, the UMBC Symphony, and the Johnstown (PA) Symphony Orchestra.</p>

<p>Who else in your family is a musicians?
My older brother plays viola in the New York Repertory Orchestra and my mother is the second clarinetist of the Johnstown (PA) Symphony Orchestra. My grandfather, Philip, was a composer and the dedicatee of Ralph Vaughan-Williams'' Tuba Concerto.</p>

<p>Where did you go to school and what did you study?
Mechanical Engineering at Carnegie Mellon University</p>

<p>With whom have you studied?
I currently study with Melina Gajger of the Peabody Conservatory. My previous teacher was Stanley Chepaitis of the Indiana University of Pennsylvania.</p>

<p>Favorite Columbia Orchestra concert and why?
Sharing the stage with Mark O''Connor was unforgettable, because of the virtuosity and energy he brings to every performance.</p>

<p>What are your favorite composers or pieces?
Large-scale pieces like the tone poems of Richard Strauss and the symphonies of Nielsen and Shostakovich.</p>

<p>What’s on your iPod?
A lot of violin music, of course (who knew that Mendelssohn wrote *two* violin concerti?). Ever since reading "The Rest is Noise", I''ve been listening to more 20th-Century music, including composers like John Adams, Steve Reich, and Michael Torke. I also have a lot of progressive/"symphonic" rock left over from my college days.</p>

<p>Last book you read?
_Physics of the Impossible_, by Michio Kaku</p>

<p>Favorite TV shows?
"Good Eats", "Mythbusters", and "Ace of Cakes"</p>

<p>Other surprising facts about you?
I earned a private pilot''s license (airplane, single-engine, land) in 2002. I have also been teaching myself computer science and have contributed to several online open-source software projects.</p>','src_imgs/members/MikeCatelinet.jpg',12,0);
INSERT INTO "roster_orchestramember" VALUES(10,'Naomi','','Chang-Zajic',1,0,0,0,'<p>Naomi Chang Zajic, violin, has been a member of the Columbia Orchestra since 2001 and a member of the Board of Directors since 2004. Coming from a non-musical family, she began learning the violin at age 8 and continued learning through the public school system while growing up in Salt Lake City, Utah. Her previous teachers include John Englund, formerly of the Boston Symphony, and José Miguel Cueto, currently of the Concert Artists of Baltimore. Naomi holds a bachelor’s degree in Biological Sciences and a master’s degree in Professional Writing. She is a technical writer and editor for an engineering firm in the Baltimore-Washington area.</p>','src_imgs/members/NZajic.jpg',18,0);
INSERT INTO "roster_orchestramember" VALUES(11,'Erin','','Chester',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(12,'Matthew','','DeBeal',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(13,'Susan','','Dudley',1,0,0,0,'<p>Columbia Orchestra Member Since: 2002 </p>

<ul>
<li>I started playing the violin in the 3rd grade thanks to my sister, fellow violinist Robin Strempek.</li>
<li>Aside from Orchestra, I am a HUGE football fan and a member of Baltimore’s Marching Ravens. I’m on the flagline and have been a member since 2006.</li>
<li>I have a Bachelor’s degree from Towson University where I majored in Visual Arts. I also have a Master’s in Business Administration from the University of Maryland.</li>
<li>During the day I work for the Federal Government as an I.T. Specialist. I mainly work on software validation.</li>
</ul>

<p>Fun Fact #1 = I am a certified scuba diver.</p>

<p>Fun Fact #2 = I like to travel. So far I’ve been to Asia, Europe, the Caribbean and N. Africa.</p>

<p>Fun Fact #3 = I love going to rock concerts on my free time. I have been to a rock concert each month since October 2008.</p>','',8,0);
INSERT INTO "roster_orchestramember" VALUES(14,'Casey','','Kraft',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(15,'Bruce','','Kuehne',1,0,0,0,'<p>Columbia Orchestra Member Since:  1978</p>

<p>I’ve always loved classical music (even at the age when normal kids were gaga over the Beatles and Rolling Stones).  I started playing the violin in the summer between third and fourth grade.  I’ve played in orchestras ever since, all through junior and senior high school, college (Purdue), and since the first year of the Columbia Orchestra’s existence.  Being able to touch the music first-hand gives me an increased appreciation of the music, and being enveloped by the music provides a thrill that cannot be realized by simply listening through speakers or (heaven forbid) earbuds.</p>

<p>I enjoy all types of classical music, but my real joy is music of the 20th (and now 21st) Century, especially the Russians (Shostakovich, Schnittke), Americans (Corigliano, Rouse, Glass), and Scandinavians (Sibelius, Nielsen, Sallinen).  I also occasionally listen to so-called popular music (Joe Jackson, Pat Metheny, and yes, the Beatles), but I return to classical music because the complexity holds my interest.</p>

<p>My day job involves way too many hours each week doing program management at the Johns Hopkins University Applied Physics Lab.  When not working or playing/listening to music, I watch movies (Blood Simple, 12 Monkeys, Apocalypse Now, and more recently Up in the Air).  My wife (of 33 years) and I also like to hike (we just spent a long weekend at Shenandoah National Park) and watch TV (Modern Family, Better off Ted, The Good Wife).  In addition, as president of the Columbia Orchestra and Chairman of the Finance Committee, I spend time on orchestra-related administrative activities.  And every so often, we visit with our daughter Valerie, who is trying to succeed as a freelance cellist playing classical, popular, experimental music on the New York Scene.</p>','src_imgs/members/BruceKuehne.jpg',21,0);
INSERT INTO "roster_orchestramember" VALUES(16,'Paul','','Li',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(17,'Sarah','','Reimers',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(18,'Helen','','Rohleder',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(19,'Robin','','Strempek',1,0,0,0,'<p>Columbia Orchestra Member Since: 2003</p>

<p>How long you have played? Since 1988.</p>

<p>Other instruments played? Viola and a little of everything</p>

<p>What do you do for a living? I taught orchestra for Baltimore County Public Schools at Ridgely Middle School for 7 years. Now I am a systems analyst for the Federal Government. Big change, but loving it so far.</p>

<p>Where did you go to school and study? Annapolis High School 1996, Towson University 2002 Bachelor of Science in Music Education, and Boston University 2009 Masters of Music in Music Education.</p>

<p>Why did I join the orchestra? Who wouldn’t want to work with a crazy and talented conductor like Jason? Plus we play awesome pieces.</p>

<p>Favorite books: I have been reading business books and Nicholas Sparks novels lately.</p>

<p>Favorite composer: Russian composers.</p>

<p>Interesting Fact #1: I have an advance open water SCUBA license.</p>

<p>Interesting Fact #2: I earned a black belt in Tae Kwon Do when I was in middle school.</p>

<p>Interesting Fact #3: I have traveled to South Korea, Iceland, England, Wales, Scotland, Czech Republic, Bratislava, and Austria.</p>','',7,0);
INSERT INTO "roster_orchestramember" VALUES(20,'Annette','','Szawan',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(21,'Jon','','Teske',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(22,'Tim','','Topoleski',1,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(23,'Chris ','','Nibali',2,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(24,'Viviana','','Acosta',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(25,'Jonathan','','Chang',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(26,'Jacquelyn','','Debella',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(27,'Meg','','Glenn',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(28,'Heidi','','Goldberg',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(29,'Ariel','','Haber',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(30,'Sheila','','Hrapchak',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(31,'Jeeyun','','Kim',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(32,'Tanesha','','Mitchell',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(33,'Stuart','','Silver',2,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(34,'Dorothy','','Elkin',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(35,'J.','Patrick','Femiano',3,0,0,0,'<p>I''m Patrick Femiano and I am a member of the viola section of the Columbia Orchestra. I have been with the orchestra since 1986.</p>

<p>My musical experience started out as a second violinist in the Montgomery College Orchestra of Rockville. After hearing the sound of a solo viola at a wedding though I turned my attention to the  study that instrument in 1984.</p>

<p>Along with playing the orchestral repetoire for the viola I had my first theatrical experience playing in a production of OKLAHOMA. Working with singers and  the stage proved to be a valuable learning experience. I also had the opportunity to play some of the Gilbert and Sullivan operettas.</p>

<p>Many of my summers were spent in music camps that specialized in playing the chamber music of great composers from Haydn to Schubert.</p>

<p>After years of playing these different genres of music, I have to say that playing the full orchestral works of the great compers such as Mozart, Beethoven, Tchaikovsky is a source of great satisfaction and I am glad that the Columbia Orchestra makes this music available to our community.</p>','src_imgs/members/PatrickFemiano.jpg',18,0);
INSERT INTO "roster_orchestramember" VALUES(36,'Chris','','Gosper',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(37,'Susan','','Laessig',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(38,'Bruce','','Newhall',3,0,0,0,'<p>In the fall of 1980 I joined the Columbia Chamber Orchestra, which was the string orchestra predecessor to the Columbia Orchestra.  Unlike most violists, I never played violin; I started on viola in 5th grade.  I have a PhD in Applied Mathematics from Rensselaer Polytechnic, and played in their orchestra during my undergraduate years.  I am employed at the Johns Hopkins Applied Physics Lab, where I am the Chief Scientist for the Maritime Security and Technology Program Area.  That means that I conduct research and development of Navy sonar systems and countermeasures against foreign sonars.  My wife, Elaine, is the principal flutist for the Columbia Orchestra, and my daughter, Katie, played cello in the orchestra when she was in high school.  When I’m not working or practicing music, I enjoy outdoor activities, especially fossil collecting, canoeing, and hiking.</p>','src_imgs/members/BruceNewhall.JPG',10,0);
INSERT INTO "roster_orchestramember" VALUES(39,'Alison','','Pack',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(40,'Margaret','','Pooler',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(41,'Julie','','Schwartz',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(42,'Annemarie','','Scimonelli',3,0,0,0,'<p>Annemarie Scimonelli</p>

<p>Columbia Orchestra Member Since: 2002, I think? </p>

<p>Favorite Instrument: Cello, I would have played it but my hands are too small</p>

<p>Fun Fact: I am a nut for anything Harry Potter</p>

<p>I have been playing the viola for about 25 years.  I love playing this instrument because violists are usually a down-to-earth, laid-back group and the music written for the viola is unique and interesting.  I will definitely never forget the string quartet I gigged with in high school.  We played in beautiful, old churches, malls, and even in the frozen food section of a grocery store (with a guy dressed up as a chicken conducting)!</p>
 
<p>As a child my parents encouraged my love of classical music.  My sister (she played the violin) and I listened to cassette tapes of composer biographies on family vacations and we even had a memory card game with composers and their most well-known pieces!</p>

<p>My favorite composer is Antonin Dvorak because he played the viola, and he wrote music inspired by the common man of his home country.  My favorite symphony is Tchaikovsky''s Pathetique Symphony #6.</p>

<p>I cherish Monday nights with the Columbia Orchestra.  I can get away from my real life as a Human Resources Manager and do what I really love.  It feeds my soul.</p>','src_imgs/members/AnnemarieScimonelli.jpg',7,0);
INSERT INTO "roster_orchestramember" VALUES(43,'Pamela','','Truitt',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(44,'Dottie','','Wayne',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(45,'Penny','','Zahn',3,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(46,'Bryan','','Barrett',4,0,0,0,'<p>I was born and brought up in England and started playing the cello at school. I spent 23 years as an officer in the Royal Navy, without many opportunities to play the cello, and played classical guitar for many years – easier to carry onboard a ship! I immigrated to the States in 1989 and we live in Annapolis.  I was so pleased to find a wealth of community music in Maryland and auditioned for the Columbia orchestra. I joined 7 years ago and have been thrilled to be able to play so much of the great orchestral repertoire that I have loved all my live, and also to be introduced to a lot of contemporary works that I would not otherwise have discovered. I have studied the cello here with Kerena Mueller and Gita Ladd. I am sort of retired, consulting in subsea engineering part time for the company I used to work for, and hope, as I turn 70 this year, to be able to continue to play for this wonderful orchestra for many years. </p>

<p>Member of Columbia Orchestra since 2003</p>','src_imgs/members/BryanBarrett.jpg',12,0);
INSERT INTO "roster_orchestramember" VALUES(47,'John','','Carter',4,0,0,0,'<p>John B. Carter is completing his second season with the Columbia Orchestra as a member of the cello section.  John, a Pennsylvania native, was introduced to the cello as a junior-high student by Donald E. Sutter who was the lead violinist for a string quartet in which John took part at Trinity Lutheran Church in Coatesville, PA.  John, originally a trumpeter, switched to the French horn and held the first chair horn position in the Coatesville Area Senior High School Symphonic Band.  As the first chair cellist in the Coatesville Area Senior High Orchestra, John placed to sit third chair at the Mid-East All Star Orchestra during his junior year, and played the Grieg Piano Concerto and the Great Gate of Kiev from Mussorgsky’s Pictures at an Exhibition at the festival concert.  He attended the string workshops at West Chester University each summer as a teenager.  John studied Psychology at Waynesburg University, Waynesburg, Pennsylvania and graduated in 1973 with a Bachelor’s Degree.  At Waynesburg, he was a member of the fledgling Waynesburg Marching Band and its orchestra under the direction of Allen C Emerick.  John attended graduate school at Roosevelt University in Chicago, Illinois where he earned a Master’s Degree in Public Administration and played with the Chatham Symphony, the DePaul University Orchestra (Leon Stein) and the Lewis University Orchestra.  John continues to enjoy playing chamber music, and is a volunteer musician at St Mark’s Evangelical Lutheran Church in Baltimore where he is a member.  One of John’s favorite remembrances is of a comment made by his father, Lee, during  intermission at a Mid-East orchestra performance in Schwenksville, PA that featured the Beethoven 1st Symphony:  ‘Man, I thought that song would never end!’ quipped his Dad.  John chooses Brahms, Rachmaninoff and Chopin among his favorite composers and enjoys listening to music and reading in his spare time.</p>','src_imgs/members/JohnCarter.jpg',12,0);
INSERT INTO "roster_orchestramember" VALUES(48,'Sarah','','Cotterill',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(49,'Carolyn','','Ginnever',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(50,'Kathy','','Hughes',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(51,'Dave','','Pumplin',4,0,0,0,'','',0,1);
INSERT INTO "roster_orchestramember" VALUES(52,'Hannah','','Oliver',4,0,0,0,'<p>Hannah Oliver</p>
<ul>
<li>Instrument: Cello</li>
<li>Columbia Orchestra Member Since: 2007</li>
<li>What you do for a living: Orchestra teacher in Howard County</li>
<li>Education: University of the Pacific, B.M. in music education. I studied under Nina Flyer.</li>
<li>Favorite Columbia Orchestra concert and why: Playing the Rite of Spring! I have wanted to play this piece my entire life and finally got to.</li>
<li>Favorite composers: Arvo Part or Elgar depending on the day</li>
<li>Favorite non-classical music/musicians: Regina Spektor and Bon Iver</li>
<li>Other hobbies and interests: reading many blogs and webcomics, gaming, and re-learning to skate.</li>
<li>Favorite Books: Mostly Science fiction and the occasional girly romance book.</li>
<li>Favorite Movie: Harold and Maude</li>
<li>Favorite TV Shows: I watch Glee and Bones nowadays.</li>
<li>What you love about the Columbia Orchestra: Being able to play cello with a group every week, and being involved in the musical community I teach in.</li>
</ul>','src_imgs/members/HannahOliver.jpg',15,0);
INSERT INTO "roster_orchestramember" VALUES(53,'Jonathan','','Terry',4,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(54,'Al','','McLaine',5,1,0,0,'<p>Al is shown here with his now 100 year old mother. This picture was taken after a concert, and you can see we are both pretty happy. Mom plays the piano and encouraged me to take up the bass so we could have a family band. My brother was the drummer, my sister played the marimba, and I learned how to pluck the bass strings. I played in the high school orchestra and was part of several small jazz groups during that time (we called ourselves The Marlboros because we were so cool). I played for one year in the Annapolis Symphony when it was a community orchestra in the early 1960s. In college, I played for several years until protesting the Vietnam War took up most of my time. After college, I lived with some ‘friends’ on a ranch in Colorado; I managed to learn a few notes on the tuba so I could play in the local fire department band. I also played the bass in a few gigs with a small group at a local bar.</p>

<p>Many years passed when the bass was just another piece of furniture. But when I ended up in Columbia in the late 1980s, the Columbia Orchestra beckoned, and I have been a member since 1989.</p>

<p>I have always preferred orchestral music, but recently I have taken up jazz again, folk/blue grass, and chamber music. Music will continue to play a major role in my life as I enter retirement years.</p>','src_imgs/members/AlMcLaine.JPG',8,0);
INSERT INTO "roster_orchestramember" VALUES(55,'Matthew','','Carroll',5,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(56,'Yoshiaki','','Huriguch',5,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(57,'Colin','','O''Bryan',5,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(58,'Kevin','','Taylor',5,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(59,'Elaine','','Newhall',6,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(60,'Kathrin','','Kucharski',6,0,0,0,'<p>Kathrin Kucharski has played flute since she was ten years old and studied flute under Kathleen Trahan from the University of Maryland College Park School of Music.  She has played in a number of community church groups, performed with the Prince Georges County Orchestra and currently serves as second flute/piccolo for the Columbia Orchestra in Columbia Maryland.  In her “real” life, she is a wife, mom of two boys and a medical liaison pharmacist for sanofi-aventis pharmaceuticals.</p>','src_imgs/members/KathrinKucharski.jpg',11,0);
INSERT INTO "roster_orchestramember" VALUES(61,'Devona','Lee','Schiller',6,0,0,0,'<p>Devona Schiller, a native of Baltimore County, Maryland, joined the Columbia Symphony Orchestra as piccoloist in 2006.  She also currently serves as Principal Flutist of the U. S. Naval Academy Band.  She was formerly Principal Flutist of the U. S. ATLANTIC Fleet Band and has held positions with the Virginia Beach and Annapolis Wind Symphonies.</p>

<p>Mrs. Schiller received Bachelor of Music degrees in education and performance in 1998 from James Madison University, where she studied with Carol Kniebusch Noe. Under the tutelage of Anthony Maiello, she received a Master of Music in conducting from George Mason University in 2003. </p>

<p>An experienced soloist, Mrs. Schiller has been the first prize winner of the James Madison University Concerto Competition, Virginia Music Teacher’s Association Concerto Competition and the Sigma Alpha Iota Scholarship Competition.  She can be heard on the James Madison University Flute Choir feature compact disc Sounds and Colors. </p>

<p>A dedicated educator and advocate of the arts, Mrs. Schiller frequently teaches and serves as a clinician and adjudicator in Baltimore and Anne Arundel County schools.  Mrs. Schiller currently resides in Annapolis, MD and enjoys spending time with her husband, John and family.  Other interests include serving in church ministries, women’s lacrosse, weight training, cooking, biking, and interior design.</p>','src_imgs/members/DevonaSchiller.jpg',14,0);
INSERT INTO "roster_orchestramember" VALUES(62,'Cassandra','Miranda','Paloma',6,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(63,'Susan','','Schultz',23,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(64,'Lindsey','','Spear',7,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(65,'Barbra','','Girdler',7,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(66,'Peggy ','','White',7,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(67,'Elizabeth','','Eber',7,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(68,'Kelly','','Klomparens',7,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(69,'Barbara','','Girdler',8,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(70,'Kelly','','Klomparens',8,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(71,'Karen','','Hopkinson',9,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(72,'Bobby','','Lapinski',9,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(73,'Matthew','','Gunderson',9,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(74,'Edna','','Huang',10,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(75,'Lori','','Fowser',11,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(76,'Monica','','DeLeon',12,1,0,0,'<p>Monica DeLeon</p>
<p>Member since Fall 2007, member of the board since Fall 2009</p>

<p>Monica De Leon is a bassoonist, composer, and music educator.  She collects degrees in music in her spare time and has a masters in Music Composition (’10) and Education (’10) from the Peabody Conservatory of Johns Hopkins University. She holds three undergraduate music degrees in Bassoon Performance, Music Education, and Composition with a minor in Jazz Voice from also from Peabody. In 2010 she will embark on a Phd program in Music Theory with a minor in bassoon performance at the Catholic University of America.</p>

<p>Monica teaches private bassoon lessons and regularly freelances with local orchestras. She also enjoys performing chamber music and meets regularly with the Columbia Chamber Winds and her bassoon quartet. She has studied bassoon with Linda Harwell (retired National Symphony) as an undergraduate, Terry Ewell (Towson University), Truman Harris (National Symphony), and Barrick Stees (Cleveland Ochestra, Interlochen).</p>

<p>Also an accomplished composer, her works have been featured locally and as far as several places in England. Her chamber opera, Wings of Fire, was produced by the Peabody Opera Department.  Also she was awarded several grants, including a Johns Hopkins Provost grant to present a recital of new works for bassoon at the International Double Reed Society Convention in Tempe, Arizona.  In 2008 she presented a complete recital of her works featuring a full chorus, wind quintet, bass voice, and harp works at Peabody.  She has studied composition with Thomas Benjamin, Nicolas Maw, Moris Cotel, and Mark Lanz Weiser.</p>

<p>Monica has been a band director in Howard County Public Schools since 2001 and has been twice nominated for ‘Music Teacher of the Year for Howard County.’  Monica is a member of the American Composers Forum, MMEA, and MENC.</p>

<p>Monica spends a lot time playing bassoon, teaching, and composing--but she also takes time to enjoy the other finer things in life.   She plays on a Howard County Recs & Park adult soccer team weekly and has played soccer almost every year of her life since before she can remember. She is also Chelsea Football Club (English Premier League) fan and can''t wait to cheer on the US in the World Cup.  She also counts oil painting, calligraphy, and origami among her hobbies which she loves to do herself, or visit art galleries to see, or take classes in, or lessons from masters to learn more about these art forms.  She thinks she would have been a visual artist if she had not become a musician.  She loves to travel and thinks Iceland and the Ice Hotel in Canada are the coolest places she''s ever been (no pun intended).  She also loves walking her two crazy pugs-- Dizzy (Gillespie) and Miles (Davis) who are very competitive and always try to out do each other with how silly they can be.</p>','src_imgs/members/MonicaDeLeon.jpeg',15,0);
INSERT INTO "roster_orchestramember" VALUES(77,'Norma','','Hooks',12,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(78,'Stacy','','Hultzman',12,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(79,'Chris','','Holtzem',12,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(80,'Andrew','','Delclos',12,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(81,'Melissa','','Feliciano',13,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(82,'Andrew','','Delclos',13,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(83,'James','','Rodak',25,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(84,'Carl','','Reynolds',15,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(85,'Roy','','Leierzapf',15,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(86,'Paul','','Lindenmann',15,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(87,'Andrew','','Strempek',15,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(88,'Mario','','Fuentes',17,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(90,'Anne','','Ward',14,1,0,0,'<ul>
<li>Columbia Orchestra Member Since: 1997</li>
<li>How long you’ve played:  49 years!</li>
<li>Other instruments you play:  all of them – I teach elementary instrumental music.</li>
<li>Favorite musical memories or events:   They’re all special. </li>
<li>Favorite composers or pieces:  Brahms, until we started working on Mahler #1 – now Mahler!</li>
<li>Things you love about favorite composers or pieces:  They compose such delightful music, although their lives are agony.</li>
<li>What you do for a living:  elementary instrumental music teacher</li>
<li>Who’s in your family (and if they’re musicians):  mother/piano, sister/cello, father/radio, husband/guitar</li>
<li>Where did you go to school and what you studied:  Towson State College/University – music education</li>
<li>With whom did you study (your instrument):  Rayburn Griffith, Ray Moore, Kathryn Mehrtens</li>
<li>Favorite non-classical music/musicians:  Andrew Lloyd Webber</li>
<li>Favorite Columbia Orchestra concert and why:  whatever we’re playing now!</li>
<li>Dream concert program to play:  Wagner or Strauss</li>
<li>Favorite or “Desert Island” CDs / What’s on your iPod:  shuffle all instrumental – no vocal</li>
<li>Other hobbies and interests:  downhill skiing, golf</li>
<li>Favorite Books:  The Once and Future King (T. H. White)</li>
<li>Favorite Movies:  light comedy, musical</li>
<li>Favorite TV Shows:  who has time?</li>
<li>What you love about the Columbia Orchestra:  Jason and staff, the orchestra members (we’re a TEAM), the repertoire</li>
<li>Something surprising people would not guess about you:  I’m actually an introvert.</li>
</ul>
','',11,0);
INSERT INTO "roster_orchestramember" VALUES(91,'Sarah','','Dorrance',14,0,0,0,'<p>Rev. Sarah Babylon Dorrance&ndash;2nd Horn.  The Columbia Orchestra and my life have intertwined ever since this group became a full orchestra, for over 21 years! My first child was born after the end of our first season together. This is a place where I can come make music with others, where we can become one unit as we work together to perform a particular piece of music. Through my own personal life journey the orchestra has been part of who I am. I am grateful for the opportunity to continue playing French Horn over the long haul. It is an honor and a privilege to be a part of these fine musicians. I am a graduate of Gettysburg College and Wesley Theological Seminary. On Monday nights, I belong to the orchestra, the rest of the time I am a Mom of two wonderful college age young women and a pastor at Taylorsville United Methodist Church. I am grateful to God for the gift of music, and as for me, I pray that all the music that I am a part of gives glory to God my Savior.</p>','src_imgs/members/SarahDorrance.jpg',15,0);
INSERT INTO "roster_orchestramember" VALUES(92,'Cally','','Messick',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(93,'Rebecca','','Lantz',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(94,'Jeffrey','','Girdler',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(95,'Nancy','','Corporon',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(96,'Jessica','','Hughes',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(97,'Pamela','','Scheuermann',14,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(98,'George','','Werner',17,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(99,'Randy','','Malm',17,0,0,0,'<p>Columbia Orchestra Member for Decades (can’t remember when I started) </p>

<p>I began with piano at some single digit age, but piano was never my main instrument.  I tried trumpet in 6th grade, but switched to trombone in 7th and dropped it junior year due to a school change (no instrumental music at the new school). </p>

<p>I trained for a career in Electrical Engineering at the University of Bridgeport (Connecticut), and worked in that field and project management for just over 30 years, retiring early.  After about 7 years of retirement, I started a home improvement business which I still own and operate.  (I am really the only employee.) </p>

<p>I also trained as a pilot, holding a commercial license, with single-engine land and sea, multi-engine land, and instrument ratings.  While I owned a small plane back then, I am inactive in that field now.</p> 

<p>In the late 1970’s, I joined the Columbia Concert Band playing trombone after a 22 year hiatus, then moved to a jazz big band course at UMBC, then joined the Columbia Big Band (CBB).  In the early 1980’s I co-produced a Big Band jazz show at Ethel’s Place (which featured renowned jazz singer Ethel Ennis), Ethel’s Place being a new jazz club in Baltimore directly across the street from the Meyerhoff Theater.  Playing in that show was probably the greatest musical high of my life, certainly at that time, anyway.</p> 

<p>I never really lost interest in piano though, and in the early 1980’s received some piano lessons from Marc Cohen (now Marc Copeland), who is a pretty well known jazz pianist.  He had a remarkably different approach to teaching piano which I have never forgotten.  I would be happy to talk about it sometime.  After those lessons, I played much more piano than ever before, and I still play often, mostly just improv and mostly at home. </p>

<p>In the early 1990’s I joined the Columbia Jazz Band (CJB) (not to be confused with the Columbia Big Band (CBB)), but this time on bass guitar.  I had never played the bass guitar before, so I had to learn it really quickly.  At present, I am still in that position.  That band is currently under the direction of Pete Barrenbregge, former director of the Airmen of Note, the Air Force’s premier jazz band.  In 2008, I toured Europe with the CJB, playing in the Montreux (Switzerland) Jazz Festival, and three other locations in Europe.  More Europe touring is in the works.  We have also played at Blues Alley, Washington, DC’s top jazz supper club. </p>

<p>I don’t remember when I joined the Columbia Orchestra, but I know it was in the previous century.  I play 2nd trombone there.  I have no training in classical music, so every season is a new adventure. </p>

<p>I also play in a trombone choir which is (usually) 12 trombones, playing under the direction of David Fetter, a former Principle Trombone in the Baltimore Symphony Orchestra. </p>

<p>If you are in the market for any home improvements, please check my ad in the Orchestra Programs.</p>','src_imgs/members/Randy2.jpg',12,0);
INSERT INTO "roster_orchestramember" VALUES(100,'Randolph','','Capone',18,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(101,'Douglas','','Lee',19,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(102,'Sarah','','Knapp',19,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(103,'Nancy','','Smith',22,0,0,0,'<p>Nancy Smith holds bachelors and masters degrees in Piano Performance from the Eastman School of Music and the Florida State University School of Music, respectively.  Her chamber music experience extends to performances as part of the International Institute for Chamber Music in Munich, Germany, the Sarasota (Florida) Music Festival, the Festival of New Music in Tallahassee, Florida; and a broad repertoire representing major works for string, woodwind, and brass instruments.  Since 2002, she has been Pianist of the Columbia Orchestra.  For two years, she played chamber music in the greater Baltimore area with The Dickinson Piano Quartet.  She has been pianist of The Waverly Trio since 2006.  Nancy is the former Executive Director of AEMS:  Arts Education in Maryland Schools Alliance, a nonprofit organization dedicated to ensuring that the arts are essential to education for K-12 public school students.  Currently, she is Director of Grants Development for The Community College of Baltimore County.  </p>','src_imgs/members/Nancy_Smith.jpg',11,0);
INSERT INTO "roster_orchestramember" VALUES(104,'Meredith','','Mancini',24,0,0,0,'<p>Columbia Orchestra Member since: 1999 

<p>Harpist, Meredith Mancini, is an active free-lance harpist in the Washington/Baltimore metropolitan area. Meredith began playing the harp at age 8. She is a cum Laude graduate of The Benjamin T. Rome School of Music at The Catholic University of America, where she studied with Jeanne Chalifoux. She has also trained under Alice Chalifoux at the Salzedo Summer Harp Colony.  </p>

<p>In addition to Columbia Orchestra she performs with numerous regional orchestras, including the Prince George’s Philharmonic, the Capital Wind Symphony, and the Piedmont Symphony. Meredith performs regularly with the Washington Savoyards, Opera Camerata, the Howard County Ballet, the Rockville Summer Dinner Theatre for 30 years, and the Victorian Lyric Opera Company. Meredith is a former harpist of the Maryland Symphony. She has performed most major Broadway shows. Meredith performed for the critically acclaimed production of “The Fantasticks” at the Round House Theatre in 2000, as well as the 2009 production of Olney Theatre Center’s “Camelot.” Meredith has performed for Ford’s Theatre annual production of “A Christmas Carol.” Meredith has performed in the Vatican for Pope John Paul II, and in backup orchestras for Neil Sedaka and The Moody Blues. </p>

<p>Ms. Mancini is an active harp instructor in the Washington/Baltimore area of all ages and abilities. She has been the harp instructor for the D.C. Youth Orchestra Program for over 15 years. She is currently the harp instructor for Montgomery College, and maintains an active private studio as well. She has previously taught at Catholic University and the Ottley School of Music. </p>

<p>Meredith has been an active harpist for weddings, receptions, and all special events for over 20 years. Ms. Mancini is a published arranger for harp ensembles, solos, and musical scores.</p>','src_imgs/members/MeredithMancini.jpg',8,0);
INSERT INTO "roster_orchestramember" VALUES(105,'Jeffrey ','','Soulen',21,1,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(106,'Gretchen ','','McCracken',20,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(107,'Greg','','Herron',20,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(108,'Ken','','Walton',20,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(109,'Jane','','Creagan',20,0,0,0,'','',0,0);
INSERT INTO "roster_orchestramember" VALUES(110,'Randall','','Stewart',26,0,0,0,'<p>Randall Stewart was named Assistant Conductor of the Columbia Orchestra in September 2009. Mr. Stewart founded the Baltimore Sinfonietta in 2004 to bring unusual orchestral programming to the region. He has been active as an operatic conductor, having led young artist performances <i>Le Nozze di Figaro, Il barbiere di Siviglia,</i> and <i>Die Zauberflöte</i> in New York and <i>Il Coronazione di Poppea</i> at Catholic University in Washington. In the sphere of Musical Theater, he has conducted performances of <i>The Music Man</i> with the Washington Savoyards and <i>Sweeney Todd</i> at Catholic University. </p>

<p>Mr. Stewart’s has taught instrumental music in Maryland public schools for twelve years, serving as the band director at Catoctin High School in Thurmont from 1998 to 2001 and Eastern Technical High School in Essex from 2001 to 2008. He presently teaches instrumental music at Dundalk Middle School.</p>

<p>Mr. Stewart is a candidate for the Doctor of Musical Arts Degree in Orchestral Conducting at The Catholic University of America in Washington, D.C, where he studies with Maestro David Searle. He has also studied with Kenneth Kiesler and Gustav Meier.</p>','',8,0);
INSERT INTO "roster_orchestramember" VALUES(111,'Brandi ','','Healey',4,0,0,0,'','',0,0);
CREATE INDEX "auth_permission_1bb8f392" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_425ae3c4" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_user_user_permissions_403f60f" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_403f60f" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_425ae3c4" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_message_403f60f" ON "auth_message" ("user_id");
CREATE INDEX "django_admin_log_403f60f" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_1bb8f392" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_flatpage_sites_21210108" ON "django_flatpage_sites" ("flatpage_id");
CREATE INDEX "django_flatpage_sites_6223029" ON "django_flatpage_sites" ("site_id");
CREATE INDEX "django_flatpage_a4b49ab" ON "django_flatpage" ("url");
CREATE INDEX "pieces_piece_soloist_2419b34d" ON "pieces_piece_soloist" ("piece_id");
CREATE INDEX "pieces_piece_soloist_2884c7c" ON "pieces_piece_soloist" ("soloist_id");
CREATE INDEX "pieces_piece_129ed196" ON "pieces_piece" ("composer_id");
CREATE INDEX "events_event_pieces_1647d06b" ON "events_event_pieces" ("event_id");
CREATE INDEX "events_event_pieces_2419b34d" ON "events_event_pieces" ("piece_id");
CREATE INDEX "events_event_soloists_1647d06b" ON "events_event_soloists" ("event_id");
CREATE INDEX "events_event_soloists_2884c7c" ON "events_event_soloists" ("soloist_id");
CREATE INDEX "events_event_319d859" ON "events_event" ("location_id");
CREATE INDEX "events_event_23579bcd" ON "events_event" ("season_id");
CREATE INDEX "roster_orchestramember_748c65e3" ON "roster_orchestramember" ("instrument_id");
COMMIT;
