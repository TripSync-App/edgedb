INSERT default::Team {
    admin_user := (SELECT default::User filter .username = 'testuser'),
    name := 'team 1',
    members := (SELECT default::User filter .username
    in array_unpack(['user1', 'user2', 'user3', 'user4', 'user5']))
};

INSERT default::Team {
    admin_user := (SELECT default::User filter .username = 'jpyles'),
    name := 'The Best Team',
    members := (SELECT default::User filter .username
    in array_unpack(['neham', 'kaib', 'torm', 'aksharp']))
};

INSERT default::Team {
    admin_user := (SELECT default::User filter .username = 'aksharp'),
    name := 'The Best Team v2',
    members := (SELECT default::User filter .username
    in array_unpack(['neham', 'kaib', 'torm', 'jpyles']))
};

INSERT default::Team {
    admin_user := (SELECT default::User filter .username = 'torm'),
    name := 'The Best Team v3',
    members := (SELECT default::User filter .username
    in array_unpack(['neham', 'kaib', 'aksharp', 'jpyles']))
};
