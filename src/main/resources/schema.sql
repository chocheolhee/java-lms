create table ns_user (
    id bigint generated by default as identity,
    created_at timestamp not null,
    updated_at timestamp,
    email varchar(50),
    name varchar(20) not null,
    password varchar(20) not null,
    user_id varchar(20) not null,
    primary key (id)
);

create table question (
   id bigint generated by default as identity,
    created_at timestamp not null,
    updated_at timestamp,
    contents clob,
    deleted boolean not null,
    title varchar(100) not null,
    writer_id bigint,
    primary key (id)
);

create table answer (
    id bigint generated by default as identity,
    created_at timestamp not null,
    updated_at timestamp,
    contents clob,
    deleted boolean not null,
    question_id bigint,
    writer_id bigint,
    primary key (id)
);

create table delete_history (
    id bigint not null,
    content_id bigint,
    content_type varchar(255),
    created_date timestamp,
    deleted_by_id bigint,
    primary key (id)
);
