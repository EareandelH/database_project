create table users(
    mid int primary key
);
create table danmu(
    BV varchar(15),
    mid int
);
create table videos(
    BV varchar(15) primary key ,
    title varchar(50),
    owner_mid int,
    commit_time timestamp,
    review_time timestamp,
    public_time timestamp,
    duration int,
    description varchar(1000),
    reviewer int,
    constraint own foreign key (owner_mid) references users(mid)
);


create table view(
    BV varchar(15),
    mid int,
    liker boolean,
    coin boolean,
    favorite boolean,
    history_time time,
    constraint watch foreign key (BV) references videos(BV),
    constraint watcher foreign key (mid) references users(mid)
)