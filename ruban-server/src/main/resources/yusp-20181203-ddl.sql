---------------------------------------------
-- Export file for user YUSP               --
-- Created by figue on 2018/12/3, 17:27:53 --
---------------------------------------------

set define off
spool yusp-20181203-ddl.log

prompt
prompt Creating table N_WF_COMMENT
prompt ===========================
prompt
create table N_WF_COMMENT
(
  comment_id   VARCHAR2(32) not null,
  instance_id  VARCHAR2(32),
  node_id      VARCHAR2(10),
  user_id      VARCHAR2(32),
  comment_sign VARCHAR2(5),
  start_time   VARCHAR2(32),
  node_level   NUMBER(10),
  user_comment VARCHAR2(500),
  user_name    VARCHAR2(32),
  node_name    VARCHAR2(32)
)
;
comment on table N_WF_COMMENT
  is '�û����۱�';
comment on column N_WF_COMMENT.comment_id
  is '����';
comment on column N_WF_COMMENT.instance_id
  is 'ʵ��id';
comment on column N_WF_COMMENT.node_id
  is '�ڵ�id';
comment on column N_WF_COMMENT.user_id
  is '�û�id';
comment on column N_WF_COMMENT.comment_sign
  is '�û�����';
comment on column N_WF_COMMENT.start_time
  is '����ʱ��';
comment on column N_WF_COMMENT.node_level
  is '�ڵ�ȼ�';
comment on column N_WF_COMMENT.user_comment
  is '�û�����';
comment on column N_WF_COMMENT.user_name
  is '�û�����';
comment on column N_WF_COMMENT.node_name
  is '�ڵ�����';
alter table N_WF_COMMENT
  add constraint PK_N_WF_COMMENT primary key (COMMENT_ID);

prompt
prompt Creating table N_WF_COMMENT_HIS
prompt ===============================
prompt
create table N_WF_COMMENT_HIS
(
  comment_id   VARCHAR2(32) not null,
  instance_id  VARCHAR2(32),
  node_id      VARCHAR2(10),
  user_id      VARCHAR2(32),
  comment_sign VARCHAR2(5),
  start_time   VARCHAR2(32),
  node_level   NUMBER(10),
  user_comment VARCHAR2(500),
  user_name    VARCHAR2(32),
  node_name    VARCHAR2(32)
)
;
comment on table N_WF_COMMENT_HIS
  is '�û�������ʷ��';
comment on column N_WF_COMMENT_HIS.comment_id
  is '����';
comment on column N_WF_COMMENT_HIS.instance_id
  is 'ʵ��id';
comment on column N_WF_COMMENT_HIS.node_id
  is '�ڵ�id';
comment on column N_WF_COMMENT_HIS.user_id
  is '�û�id';
comment on column N_WF_COMMENT_HIS.comment_sign
  is '�û�����';
comment on column N_WF_COMMENT_HIS.start_time
  is '����ʱ��';
comment on column N_WF_COMMENT_HIS.node_level
  is '�ڵ�ȼ�';
comment on column N_WF_COMMENT_HIS.user_comment
  is '�û�����';
comment on column N_WF_COMMENT_HIS.user_name
  is '�û�����';
comment on column N_WF_COMMENT_HIS.node_name
  is '�ڵ�����';
alter table N_WF_COMMENT_HIS
  add constraint PK_N_WF_COMMENT_END primary key (COMMENT_ID);

prompt
prompt Creating table N_WF_COPY_USER
prompt =============================
prompt
create table N_WF_COPY_USER
(
  copy_id      VARCHAR2(32) not null,
  instance_id  VARCHAR2(32),
  node_id      VARCHAR2(5),
  copy_user_id VARCHAR2(32)
)
;
comment on table N_WF_COPY_USER
  is '���ͱ�';
comment on column N_WF_COPY_USER.copy_id
  is '����';
comment on column N_WF_COPY_USER.instance_id
  is 'ʵ��id';
comment on column N_WF_COPY_USER.node_id
  is '�ڵ�id';
comment on column N_WF_COPY_USER.copy_user_id
  is '������Աid';
alter table N_WF_COPY_USER
  add constraint PK_N_WF_COPY_USER primary key (COPY_ID);

prompt
prompt Creating table N_WF_FLOW
prompt ========================
prompt
create table N_WF_FLOW
(
  flow_id      NUMBER(10) not null,
  system_id    VARCHAR2(32),
  flow_state   VARCHAR2(5),
  flow_content CLOB,
  start_time   VARCHAR2(32),
  flow_version NUMBER(10) default 0,
  flow_name    VARCHAR2(100),
  flow_admin   VARCHAR2(32),
  org_id       VARCHAR2(32)
)
;
comment on table N_WF_FLOW
  is '����ͼ��Ϣ';
comment on column N_WF_FLOW.flow_id
  is '����ͼid';
comment on column N_WF_FLOW.system_id
  is 'ϵͳid';
comment on column N_WF_FLOW.flow_state
  is '����ͼ״̬';
comment on column N_WF_FLOW.flow_content
  is '����ͼ����';
comment on column N_WF_FLOW.start_time
  is '����ʱ��';
comment on column N_WF_FLOW.flow_version
  is '�汾��';
comment on column N_WF_FLOW.flow_name
  is '��������';
comment on column N_WF_FLOW.flow_admin
  is '����ͼ����Ա';
comment on column N_WF_FLOW.org_id
  is '����Ա����id';
alter table N_WF_FLOW
  add constraint PK_N_WF_FLOW primary key (FLOW_ID);

prompt
prompt Creating table N_WF_FLOW_HIS
prompt ============================
prompt
create table N_WF_FLOW_HIS
(
  flow_id      NUMBER(10) not null,
  system_id    VARCHAR2(32),
  flow_state   VARCHAR2(5),
  flow_content CLOB,
  start_time   VARCHAR2(32),
  flow_version NUMBER(10) default 0,
  flow_name    VARCHAR2(100),
  flow_admin   VARCHAR2(32),
  org_id       VARCHAR2(32)
)
;
comment on table N_WF_FLOW_HIS
  is '����ͼ��ʷ��Ϣ';
comment on column N_WF_FLOW_HIS.flow_id
  is '����ͼid';
comment on column N_WF_FLOW_HIS.system_id
  is 'ϵͳid';
comment on column N_WF_FLOW_HIS.flow_state
  is '����ͼ״̬';
comment on column N_WF_FLOW_HIS.flow_content
  is '����ͼ����';
comment on column N_WF_FLOW_HIS.start_time
  is '����ʱ��';
comment on column N_WF_FLOW_HIS.flow_version
  is '�汾��';
comment on column N_WF_FLOW_HIS.flow_name
  is '��������';
comment on column N_WF_FLOW_HIS.flow_admin
  is '����ͼ����Ա';
comment on column N_WF_FLOW_HIS.org_id
  is '����Ա����id';

prompt
prompt Creating table N_WF_INSTANCE
prompt ============================
prompt
create table N_WF_INSTANCE
(
  instance_id       VARCHAR2(32) not null,
  flow_name         VARCHAR2(32),
  flow_id           VARCHAR2(32),
  flow_admin        VARCHAR2(32),
  flow_starter      VARCHAR2(32),
  start_time        VARCHAR2(32),
  system_id         VARCHAR2(32),
  org_id            VARCHAR2(32),
  flow_state        VARCHAR2(5),
  biz_id            VARCHAR2(32),
  biz_user_name     VARCHAR2(32),
  biz_user_id       VARCHAR2(32),
  flow_param        VARCHAR2(500),
  biz_type          VARCHAR2(32),
  flow_starter_name VARCHAR2(32)
)
;
comment on table N_WF_INSTANCE
  is '����ʵ����';
comment on column N_WF_INSTANCE.instance_id
  is '����ʵ��id';
comment on column N_WF_INSTANCE.flow_name
  is '��������';
comment on column N_WF_INSTANCE.flow_id
  is '����id';
comment on column N_WF_INSTANCE.flow_admin
  is '���̹���Ա';
comment on column N_WF_INSTANCE.flow_starter
  is '���̷�����';
comment on column N_WF_INSTANCE.start_time
  is '���̷���ʱ��';
comment on column N_WF_INSTANCE.system_id
  is 'ϵͳid';
comment on column N_WF_INSTANCE.org_id
  is '�����˻���id';
comment on column N_WF_INSTANCE.flow_state
  is '����״̬';
comment on column N_WF_INSTANCE.biz_id
  is 'ҵ����ˮ��';
comment on column N_WF_INSTANCE.biz_user_name
  is '�ͻ�����';
comment on column N_WF_INSTANCE.biz_user_id
  is '�ͻ�id';
comment on column N_WF_INSTANCE.flow_param
  is '���̲���';
comment on column N_WF_INSTANCE.biz_type
  is 'ҵ������';
comment on column N_WF_INSTANCE.flow_starter_name
  is '����������';
alter table N_WF_INSTANCE
  add constraint PK_INSTANCE_ID primary key (INSTANCE_ID);

prompt
prompt Creating table N_WF_INSTANCE_HIS
prompt ================================
prompt
create table N_WF_INSTANCE_HIS
(
  instance_id       VARCHAR2(32) not null,
  flow_name         VARCHAR2(32),
  flow_id           VARCHAR2(32),
  flow_admin        VARCHAR2(32),
  flow_starter      VARCHAR2(32),
  start_time        VARCHAR2(32),
  system_id         VARCHAR2(32),
  org_id            VARCHAR2(32),
  flow_state        VARCHAR2(5),
  biz_id            VARCHAR2(32),
  biz_user_name     VARCHAR2(32),
  biz_user_id       VARCHAR2(32),
  flow_param        VARCHAR2(500),
  biz_type          VARCHAR2(32),
  end_time          VARCHAR2(32),
  flow_starter_name VARCHAR2(32)
)
;
comment on table N_WF_INSTANCE_HIS
  is '����ʵ����ʷ��';
comment on column N_WF_INSTANCE_HIS.instance_id
  is '����ʵ��id';
comment on column N_WF_INSTANCE_HIS.flow_name
  is '��������';
comment on column N_WF_INSTANCE_HIS.flow_id
  is '����id';
comment on column N_WF_INSTANCE_HIS.flow_admin
  is '���̹���Ա';
comment on column N_WF_INSTANCE_HIS.flow_starter
  is '���̷�����';
comment on column N_WF_INSTANCE_HIS.start_time
  is '���̷���ʱ��';
comment on column N_WF_INSTANCE_HIS.system_id
  is 'ϵͳid';
comment on column N_WF_INSTANCE_HIS.org_id
  is '�����˻���id';
comment on column N_WF_INSTANCE_HIS.flow_state
  is '����״̬';
comment on column N_WF_INSTANCE_HIS.biz_id
  is 'ҵ����ˮ��';
comment on column N_WF_INSTANCE_HIS.biz_user_name
  is '�ͻ�����';
comment on column N_WF_INSTANCE_HIS.biz_user_id
  is '�ͻ�id';
comment on column N_WF_INSTANCE_HIS.flow_param
  is '���̲���';
comment on column N_WF_INSTANCE_HIS.biz_type
  is 'ҵ������';
comment on column N_WF_INSTANCE_HIS.end_time
  is '���̽���ʱ��';
comment on column N_WF_INSTANCE_HIS.flow_starter_name
  is '����������';
alter table N_WF_INSTANCE_HIS
  add constraint PK_N_WF_INSTANCE_HIS primary key (INSTANCE_ID);

prompt
prompt Creating table N_WF_NODE
prompt ========================
prompt
create table N_WF_NODE
(
  instance_id      VARCHAR2(32) not null,
  node_id          VARCHAR2(10) not null,
  node_sign        VARCHAR2(32),
  node_name        VARCHAR2(32),
  node_state       VARCHAR2(5),
  start_time       VARCHAR2(32),
  org_id           VARCHAR2(32),
  last_node_id     VARCHAR2(10),
  last_node_name   VARCHAR2(32),
  node_level_total NUMBER(10)
)
;
comment on table N_WF_NODE
  is '�ڵ���ת��';
comment on column N_WF_NODE.instance_id
  is 'ʵ��id';
comment on column N_WF_NODE.node_id
  is '�ڵ�id';
comment on column N_WF_NODE.node_sign
  is '�ڵ��ʶ';
comment on column N_WF_NODE.node_name
  is '�ڵ�����';
comment on column N_WF_NODE.node_state
  is '�ڵ�״̬';
comment on column N_WF_NODE.start_time
  is '�ڵ㿪ʼʱ��';
comment on column N_WF_NODE.org_id
  is '�ύ�˻���id';
comment on column N_WF_NODE.last_node_id
  is '��һ�ڵ�id';
comment on column N_WF_NODE.last_node_name
  is '��һ�ڵ�����';
comment on column N_WF_NODE.node_level_total
  is '�����Ľڵ�ȼ�֮��';
alter table N_WF_NODE
  add constraint PK_N_WF_NODE primary key (INSTANCE_ID, NODE_ID);

prompt
prompt Creating table N_WF_NODE_HIS
prompt ============================
prompt
create table N_WF_NODE_HIS
(
  instance_id      VARCHAR2(32) not null,
  node_id          VARCHAR2(10) not null,
  node_sign        VARCHAR2(32),
  node_name        VARCHAR2(32),
  node_state       VARCHAR2(5),
  start_time       VARCHAR2(32),
  org_id           VARCHAR2(32),
  last_node_id     VARCHAR2(10),
  last_node_name   VARCHAR2(32),
  end_time         VARCHAR2(32),
  node_level_total NUMBER(10)
)
;
comment on table N_WF_NODE_HIS
  is '�ڵ���ת��ʷ��';
comment on column N_WF_NODE_HIS.instance_id
  is 'ʵ��id';
comment on column N_WF_NODE_HIS.node_id
  is '�ڵ�id';
comment on column N_WF_NODE_HIS.node_sign
  is '�ڵ��ʶ';
comment on column N_WF_NODE_HIS.node_name
  is '�ڵ�����';
comment on column N_WF_NODE_HIS.node_state
  is '�ڵ�״̬';
comment on column N_WF_NODE_HIS.start_time
  is '�ڵ㿪ʼʱ��';
comment on column N_WF_NODE_HIS.org_id
  is '�ύ�˻���id';
comment on column N_WF_NODE_HIS.last_node_id
  is '��һ�ڵ�id';
comment on column N_WF_NODE_HIS.last_node_name
  is '��һ�ڵ�����';
comment on column N_WF_NODE_HIS.end_time
  is '����ʱ��';
comment on column N_WF_NODE_HIS.node_level_total
  is '�����Ľڵ�ȼ�֮��';
alter table N_WF_NODE_HIS
  add constraint PK_N_WF_NODE_HIS primary key (INSTANCE_ID, NODE_ID);

prompt
prompt Creating table N_WF_USER_DONE
prompt =============================
prompt
create table N_WF_USER_DONE
(
  instance_id    VARCHAR2(32) not null,
  node_id        VARCHAR2(10) not null,
  user_id        VARCHAR2(32) not null,
  start_time     VARCHAR2(32),
  end_time       VARCHAR2(32),
  user_name      VARCHAR2(32),
  last_user_id   VARCHAR2(32),
  last_user_name VARCHAR2(32),
  sign_in        VARCHAR2(2) default 0,
  user_level     NUMBER(5) default 0
)
;
comment on table N_WF_USER_DONE
  is '�û�����';
comment on column N_WF_USER_DONE.instance_id
  is 'ʵ��id';
comment on column N_WF_USER_DONE.node_id
  is '�ڵ�id';
comment on column N_WF_USER_DONE.user_id
  is '�û�id';
comment on column N_WF_USER_DONE.start_time
  is '��ʼʱ��';
comment on column N_WF_USER_DONE.user_name
  is '�û�����';
comment on column N_WF_USER_DONE.last_user_id
  is '��һ�ڵ㴦����';
comment on column N_WF_USER_DONE.last_user_name
  is '��һ�ڵ㴦��������';
comment on column N_WF_USER_DONE.sign_in
  is '1-��ǩ�գ�0-δǩ��';
comment on column N_WF_USER_DONE.user_level
  is '�û�˳��ԽСԽ��ǰ';
alter table N_WF_USER_DONE
  add constraint PK_N_WF_USER_DONE primary key (INSTANCE_ID, NODE_ID, USER_ID);

prompt
prompt Creating table N_WF_USER_HIS
prompt ============================
prompt
create table N_WF_USER_HIS
(
  instance_id    VARCHAR2(32) not null,
  node_id        VARCHAR2(10) not null,
  user_id        VARCHAR2(32) not null,
  start_time     VARCHAR2(32),
  end_time       VARCHAR2(32),
  user_name      VARCHAR2(32),
  last_user_id   VARCHAR2(32),
  last_user_name VARCHAR2(32),
  sign_in        VARCHAR2(2) default 0,
  user_level     NUMBER(5) default 0
)
;
comment on table N_WF_USER_HIS
  is '�û���ʷ��';
comment on column N_WF_USER_HIS.instance_id
  is 'ʵ��id';
comment on column N_WF_USER_HIS.node_id
  is '�ڵ�id';
comment on column N_WF_USER_HIS.user_id
  is '�û�id';
comment on column N_WF_USER_HIS.start_time
  is '��ʼʱ��';
comment on column N_WF_USER_HIS.user_name
  is '�û�����';
comment on column N_WF_USER_HIS.last_user_id
  is '��һ�ڵ㴦����';
comment on column N_WF_USER_HIS.last_user_name
  is '��һ�ڵ㴦��������';
comment on column N_WF_USER_HIS.sign_in
  is '1-��ǩ�գ�0-δǩ��';
comment on column N_WF_USER_HIS.user_level
  is '�û�˳��ԽСԽ��ǰ';
alter table N_WF_USER_HIS
  add constraint PK_N_WF_USER_HIS primary key (INSTANCE_ID, NODE_ID, USER_ID);

prompt
prompt Creating table N_WF_USER_TODO
prompt =============================
prompt
create table N_WF_USER_TODO
(
  instance_id    VARCHAR2(32) not null,
  node_id        VARCHAR2(10) not null,
  user_id        VARCHAR2(32) not null,
  start_time     VARCHAR2(32),
  user_name      VARCHAR2(32),
  last_user_id   VARCHAR2(32),
  last_user_name VARCHAR2(32),
  sign_in        VARCHAR2(2) default 0,
  user_level     NUMBER(5) default 0
)
;
comment on table N_WF_USER_TODO
  is '�û������';
comment on column N_WF_USER_TODO.instance_id
  is 'ʵ��id';
comment on column N_WF_USER_TODO.node_id
  is '�ڵ�id';
comment on column N_WF_USER_TODO.user_id
  is '�û�id';
comment on column N_WF_USER_TODO.start_time
  is '��ʼʱ��';
comment on column N_WF_USER_TODO.user_name
  is '�û�����';
comment on column N_WF_USER_TODO.last_user_id
  is '��һ�ڵ㴦����';
comment on column N_WF_USER_TODO.last_user_name
  is '��һ�ڵ㴦��������';
comment on column N_WF_USER_TODO.sign_in
  is '1-��ǩ�գ�0-δǩ��';
comment on column N_WF_USER_TODO.user_level
  is '�û�˳��ԽСԽ��ǰ';
alter table N_WF_USER_TODO
  add constraint PK_N_WF_USER_TODO primary key (INSTANCE_ID, NODE_ID, USER_ID);


spool off
