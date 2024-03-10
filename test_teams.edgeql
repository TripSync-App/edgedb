INSERT default::Team {
    admin_user := (SELECT default::User filter .username = 'testuser'),
    name := 'team 1',
    members := (SELECT default::User filter .username
    in array_unpack(['user1', 'user2', 'user3', 'user4', 'user5']))
};
