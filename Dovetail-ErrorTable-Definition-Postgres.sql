CREATE TABLE if not exists dovetail_errors (
id SERIAL NOT NULL PRIMARY KEY,
time_stamp TIMESTAMP WITHOUT TIME ZONE,
tenant TEXT,
flow_name TEXT,
error_message TEXT,
error_body TEXT,
error_class TEXT,
error_mail TEXT,
error_frequency TEXT,
error_origin TEXT,
instance TEXT,
environment TEXT,
breadcrumbid TEXT,
flow_id TEXT,
version TEXT,
intercepted_endpoint TEXT,
component_response_time INTEGER,
name TEXT,
value TEXT
);

INSERT into dovetail_errors
(time_stamp,tenant,flow_name,error_message,error_body,error_class,error_mail,error_frequency,error_origin,environment,breadcrumbid,instance,flow_id,version,intercepted_endpoint,component_response_time,name,value)
VALUES
('2000-01-01 00:00:00','insert','insert','insert',NULL,'insert','insert','insert','insert','insert','insert','insert','insert','insert','insert','0','insert','insert')
;
