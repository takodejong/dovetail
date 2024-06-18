create table if not exists dovetail_errors (
id    int not null auto_increment Primary Key,
time_stamp    datetime    comment 'CET',
tenant    text            comment 'Tenant',
flow_name    text        comment 'Flow name',
error_message    text    comment 'Exception Message with details',
error_body    text        comment 'Exception responseBody or [null]',
error_class    text        comment 'Exception Class type',
error_mail    text        comment 'User definable field, default [null]',
error_frequency    text    comment 'User definable field, default [null]',
error_origin    text    comment 'ERM (Error Route) or FFM (Route)',
environment    text        comment 'Test or Production',
breadcrumbid    text    comment 'The breadcrumbId of exception origin',
instance    text        comment 'URL of the instance',
flow_id    text            comment 'ID of the flow',
version    text            comment 'User-Agent header',
intercepted_endpoint    text    comment 'The intercepted endpoint of exception origin',
component_response_time    int    comment 'Response time in ms or [null]',
name    text            comment 'User definable field, default [null]',
value    text            comment 'User definable field, default [null]'
);

INSERT into dovetail_errors
(time_stamp,tenant,flow_name,error_message,error_body,error_class,error_mail,error_frequency,error_origin,environment,breadcrumbid,instance,flow_id,version,intercepted_endpoint,component_response_time,name,value)
VALUES
('2000-01-01 00:00:00','insert','insert','insert',NULL,'insert','insert','insert','insert','insert','insert','insert','insert','insert','insert','0','insert','insert')
;
