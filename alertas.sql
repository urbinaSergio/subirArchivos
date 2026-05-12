-- DROP SCHEMA schalerd;

CREATE SCHEMA schalerd AUTHORIZATION postgres;

-- DROP SEQUENCE schalerd.client_id_seq;

CREATE SEQUENCE schalerd.client_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.client_id_seq1;

CREATE SEQUENCE schalerd.client_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.contact_id_seq;

CREATE SEQUENCE schalerd.contact_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.contact_id_seq1;

CREATE SEQUENCE schalerd.contact_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.log_id_seq;

CREATE SEQUENCE schalerd.log_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.log_id_seq1;

CREATE SEQUENCE schalerd.log_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.newness_id_seq;

CREATE SEQUENCE schalerd.newness_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.newness_id_seq1;

CREATE SEQUENCE schalerd.newness_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.priority_id_seq;

CREATE SEQUENCE schalerd.priority_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.priority_id_seq1;

CREATE SEQUENCE schalerd.priority_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.schedule_id_seq;

CREATE SEQUENCE schalerd.schedule_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;
-- DROP SEQUENCE schalerd.schedule_id_seq1;

CREATE SEQUENCE schalerd.schedule_id_seq1
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 2147483647
	START 1
	CACHE 1
	NO CYCLE;-- schalerd.category definition

-- Drop table

-- DROP TABLE schalerd.category;

CREATE TABLE schalerd.category (
	id int2 NOT NULL,
	"name" varchar(30) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	CONSTRAINT category_pkey PRIMARY KEY (id)
);


-- schalerd.consumer definition

-- Drop table

-- DROP TABLE schalerd.consumer;

CREATE TABLE schalerd.consumer (
	id varchar(10) NOT NULL,
	description varchar(50) NOT NULL,
	segment varchar(10) NOT NULL,
	CONSTRAINT consumer_pkey PRIMARY KEY (id)
);


-- schalerd.contact_medium definition

-- Drop table

-- DROP TABLE schalerd.contact_medium;

CREATE TABLE schalerd.contact_medium (
	id int2 NOT NULL,
	code varchar(10) NOT NULL,
	CONSTRAINT contact_medium_code_key UNIQUE (code),
	CONSTRAINT contact_medium_pkey PRIMARY KEY (id)
);


-- schalerd.document_type definition

-- Drop table

-- DROP TABLE schalerd.document_type;

CREATE TABLE schalerd.document_type (
	id int2 NOT NULL,
	code varchar(4) NOT NULL,
	"name" varchar(100) NOT NULL,
	CONSTRAINT document_type_pkey PRIMARY KEY (id)
);


-- schalerd.log definition

-- Drop table

-- DROP TABLE schalerd.log;

CREATE TABLE schalerd.log (
	id serial4 NOT NULL,
	log_key varchar(30) NOT NULL,
	document_type varchar(3) NULL,
	document_number int8 NULL,
	log_type varchar(4) NULL,
	medium varchar(15) NULL,
	contact varchar(60) NULL,
	message_sent varchar(500) NULL,
	consumer varchar(3) NULL,
	alert_id varchar(3) NULL,
	alert_description varchar(50) NULL,
	transaction_id varchar(4) NULL,
	amount int8 NULL,
	response_code int2 NULL,
	response_description varchar(500) NULL,
	priority int2 NULL,
	provider varchar(20) NULL,
	"template" varchar(40) NULL,
	operation_id int2 NULL,
	operation_description varchar(15) NULL,
	date_creation timestamp NULL,
	CONSTRAINT log_pkey PRIMARY KEY (id)
);


-- schalerd.newness definition

-- Drop table

-- DROP TABLE schalerd.newness;

CREATE TABLE schalerd.newness (
	id serial4 NOT NULL,
	document_type int2 NOT NULL,
	document_number int8 NOT NULL,
	contact varchar(60) NULL,
	channel_transaction varchar(3) NULL,
	id_alert varchar(3) NULL,
	description_alert varchar(50) NULL,
	active bool NULL,
	transaction_description varchar(50) NULL,
	number_operations int2 NULL,
	amount_enable int8 NULL,
	user_creation varchar(20) NULL,
	response_code varchar(3) NULL,
	response_description varchar(50) NULL,
	voucher int8 NULL,
	date_first_inscription timestamp NULL,
	date_creation timestamp NOT NULL,
	previous bool NULL,
	CONSTRAINT newness_pkey PRIMARY KEY (id)
);


-- schalerd.provider definition

-- Drop table

-- DROP TABLE schalerd.provider;

CREATE TABLE schalerd.provider (
	id varchar(3) NOT NULL,
	"name" varchar(20) NOT NULL,
	type_service varchar(1) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	CONSTRAINT provider_pkey PRIMARY KEY (id)
);


-- schalerd.remitter definition

-- Drop table

-- DROP TABLE schalerd.remitter;

CREATE TABLE schalerd.remitter (
	id int2 NOT NULL,
	mail varchar(70) NOT NULL,
	state varchar(10) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	CONSTRAINT remitter_pkey PRIMARY KEY (id)
);


-- schalerd.shedlock definition

-- Drop table

-- DROP TABLE schalerd.shedlock;

CREATE TABLE schalerd.shedlock (
	"name" varchar(64) NOT NULL,
	lock_until timestamp NOT NULL,
	locked_at timestamp NOT NULL,
	locked_by varchar(255) NOT NULL,
	CONSTRAINT shedlock_pkey PRIMARY KEY (name)
);


-- schalerd.state definition

-- Drop table

-- DROP TABLE schalerd.state;

CREATE TABLE schalerd.state (
	id int2 NOT NULL,
	"name" varchar(10) NOT NULL,
	CONSTRAINT state_name_key UNIQUE (name),
	CONSTRAINT state_pkey PRIMARY KEY (id)
);


-- schalerd.campaign definition

-- Drop table

-- DROP TABLE schalerd.campaign;

CREATE TABLE schalerd.campaign (
	id_campaign varchar(50) NOT NULL,
	id_consumer varchar(10) NOT NULL,
	providers jsonb NOT NULL,
	id_remitter int2 NULL,
	default_template varchar(50) NULL,
	description varchar(200) NULL,
	source_path varchar(255) NOT NULL,
	attachment bool NULL,
	attachment_path varchar(256) NULL,
	state bpchar(1) NOT NULL DEFAULT '1'::bpchar,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	modified_user varchar(20) NULL,
	modified_date timestamp NULL,
	data_enrichment bool NOT NULL,
	priority int2 NOT NULL,
	campaign_type varchar(15) NOT NULL DEFAULT 'RELATIONAL'::character varying,
	responsible varchar(50) NULL,
	CONSTRAINT campaign_pkey PRIMARY KEY (id_campaign, id_consumer),
	CONSTRAINT campaign_consumer_fkey FOREIGN KEY (id_consumer) REFERENCES schalerd.consumer(id),
	CONSTRAINT campaign_remitter_fkey FOREIGN KEY (id_remitter) REFERENCES schalerd.remitter(id)
);


-- schalerd.client definition

-- Drop table

-- DROP TABLE schalerd.client;

CREATE TABLE schalerd.client (
	id serial4 NOT NULL,
	document_number int8 NOT NULL,
	id_document_type int2 NOT NULL,
	key_mdm varchar(20) NULL,
	enrollment_origin varchar(3) NULL,
	id_state int2 NOT NULL,
	preference int2 NULL,
	delegate bool NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	modified_date timestamp NULL,
	CONSTRAINT client_document_unique UNIQUE (document_number, id_document_type),
	CONSTRAINT client_pkey PRIMARY KEY (id),
	CONSTRAINT client_document_type_fkey FOREIGN KEY (id_document_type) REFERENCES schalerd.document_type(id),
	CONSTRAINT client_state_fkey FOREIGN KEY (id_state) REFERENCES schalerd.state(id)
);


-- schalerd.contact definition

-- Drop table

-- DROP TABLE schalerd.contact;

CREATE TABLE schalerd.contact (
	id serial4 NOT NULL,
	document_number int8 NOT NULL,
	id_document_type int2 NOT NULL,
	segment varchar(10) NOT NULL,
	id_contact_medium int2 NOT NULL,
	value varchar(60) NOT NULL,
	id_state int2 NOT NULL,
	environment_type varchar(10) NULL,
	created_date timestamp NOT NULL,
	modified_date timestamp NULL,
	previous bool NOT NULL,
	CONSTRAINT contact_pkey PRIMARY KEY (id),
	CONSTRAINT contact_unique UNIQUE (document_number, id_document_type, segment, id_contact_medium, previous),
	CONSTRAINT contact_client_type_fkey FOREIGN KEY (document_number,id_document_type) REFERENCES schalerd.client(document_number,id_document_type) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT contact_contact_medium_fkey FOREIGN KEY (id_contact_medium) REFERENCES schalerd.contact_medium(id),
	CONSTRAINT contact_state_fkey FOREIGN KEY (id_state) REFERENCES schalerd.state(id)
);
CREATE INDEX id_contact ON schalerd.contact USING btree (value);


-- schalerd.priority definition

-- Drop table

-- DROP TABLE schalerd.priority;

CREATE TABLE schalerd.priority (
	id serial4 NOT NULL,
	code int2 NOT NULL,
	description varchar(50) NOT NULL,
	id_provider varchar(3) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	CONSTRAINT priority_pkey PRIMARY KEY (id),
	CONSTRAINT priority_provider_fkey FOREIGN KEY (id_provider) REFERENCES schalerd.provider(id)
);


-- schalerd.schedule definition

-- Drop table

-- DROP TABLE schalerd.schedule;

CREATE TABLE schalerd.schedule (
	id serial4 NOT NULL,
	id_campaign varchar(50) NOT NULL,
	id_consumer varchar(10) NOT NULL,
	schedule_type varchar(10) NOT NULL,
	start_date date NULL,
	start_time time NULL,
	end_date date NULL,
	end_time time NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	modified_user varchar(20) NULL,
	modified_date timestamp NULL,
	CONSTRAINT schedule_pkey PRIMARY KEY (id),
	CONSTRAINT schedule_id_campaign_fkey FOREIGN KEY (id_campaign,id_consumer) REFERENCES schalerd.campaign(id_campaign,id_consumer)
);


-- schalerd.alert definition

-- Drop table

-- DROP TABLE schalerd.alert;

CREATE TABLE schalerd.alert (
	id varchar(3) NOT NULL,
	template_name varchar(100) NOT NULL,
	id_provider_mail varchar(3) NOT NULL,
	id_provider_sms varchar(3) NOT NULL,
	id_remitter int2 NOT NULL,
	description varchar(50) NOT NULL,
	nature varchar(2) NOT NULL,
	obligatory bool NOT NULL,
	message varchar(500) NOT NULL,
	id_category int2 NOT NULL,
	priority int2 NOT NULL,
	subject_mail varchar(50) NOT NULL,
	visible_channel bool NOT NULL,
	attention_line varchar(15) NOT NULL,
	id_state int2 NOT NULL,
	push varchar(2) NOT NULL,
	basic_kit bool NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	is_priority bool NULL DEFAULT false,
	CONSTRAINT alert_pkey PRIMARY KEY (id),
	CONSTRAINT alert_category_fkey FOREIGN KEY (id_category) REFERENCES schalerd.category(id),
	CONSTRAINT alert_priority_fkey FOREIGN KEY (priority) REFERENCES schalerd.priority(id),
	CONSTRAINT alert_provider_service_mail_fkey FOREIGN KEY (id_provider_mail) REFERENCES schalerd.provider(id),
	CONSTRAINT alert_provider_service_sms_fkey FOREIGN KEY (id_provider_sms) REFERENCES schalerd.provider(id),
	CONSTRAINT alert_remitter_fkey FOREIGN KEY (id_remitter) REFERENCES schalerd.remitter(id),
	CONSTRAINT alert_state_fkey FOREIGN KEY (id_state) REFERENCES schalerd.state(id)
);


-- schalerd.alert_client definition

-- Drop table

-- DROP TABLE schalerd.alert_client;

CREATE TABLE schalerd.alert_client (
	id_alert varchar(3) NOT NULL,
	document_number int8 NOT NULL,
	id_document_type int2 NOT NULL,
	number_operations int2 NOT NULL,
	amount_enable int8 NOT NULL,
	accumulated_operations int2 NULL,
	accumulated_amount int8 NULL,
	association_origin varchar(3) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	modified_date timestamp NULL,
	transaction_date timestamp NULL,
	CONSTRAINT alert_client_pkey PRIMARY KEY (id_alert, document_number, id_document_type),
	CONSTRAINT alert_client_alert_fkey FOREIGN KEY (id_alert) REFERENCES schalerd.alert(id) ON DELETE CASCADE,
	CONSTRAINT alert_client_client_fkey FOREIGN KEY (document_number,id_document_type) REFERENCES schalerd.client(document_number,id_document_type) ON DELETE CASCADE ON UPDATE CASCADE
);


-- schalerd.alert_transaction definition

-- Drop table

-- DROP TABLE schalerd.alert_transaction;

CREATE TABLE schalerd.alert_transaction (
	id_alert varchar(3) NOT NULL,
	id_consumer varchar(10) NOT NULL,
	id_transaction varchar(4) NOT NULL,
	creation_user varchar(20) NULL,
	created_date timestamp NOT NULL,
	CONSTRAINT alert_transaction_pkey PRIMARY KEY (id_alert, id_consumer, id_transaction),
	CONSTRAINT alert_transaction_alert_fkey FOREIGN KEY (id_alert) REFERENCES schalerd.alert(id) ON DELETE CASCADE,
	CONSTRAINT alert_transaction_consumer_fkey FOREIGN KEY (id_consumer) REFERENCES schalerd.consumer(id)
);


-- schalerd.alert_view source

CREATE OR REPLACE VIEW schalerd.alert_view
AS SELECT a.id,
    t.id_transaction,
    t.id_consumer,
    a.template_name,
    a.nature,
    a.obligatory,
    a.message,
    a.id_state,
    a.id_category,
    a.description,
    a.push,
    a.basic_kit,
    r.mail AS remitter,
    p.code AS priority,
    ps.id AS provider_sms,
    pm.id AS provider_mail,
    a.subject_mail,
    a.is_priority
   FROM schalerd.alert a
     LEFT JOIN schalerd.alert_transaction t ON a.id::text = t.id_alert::text
     JOIN schalerd.remitter r ON r.id = a.id_remitter
     JOIN schalerd.priority p ON p.id = a.priority
     JOIN schalerd.provider ps ON ps.id::text = a.id_provider_sms::text
     JOIN schalerd.provider pm ON pm.id::text = a.id_provider_mail::text
  ORDER BY t.id_transaction, t.id_consumer, a.id;


-- schalerd.contact_view source

CREATE OR REPLACE VIEW schalerd.contact_view
AS SELECT cl.id_state AS state_client,
    cl.document_number,
    cl.id_document_type,
    c.segment,
    c.value,
    c.id_state,
    c.previous,
    cm.code AS contact_medium,
    cs.id AS consumer
   FROM schalerd.client cl
     LEFT JOIN schalerd.contact c ON cl.document_number = c.document_number AND cl.id_document_type = c.id_document_type
     LEFT JOIN schalerd.contact_medium cm ON c.id_contact_medium = cm.id
     LEFT JOIN schalerd.consumer cs ON c.segment::text = cs.segment::text
  ORDER BY cl.id_document_type, cl.document_number;
