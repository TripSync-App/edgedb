INSERT default::User {username := 'user', password := b'pass', first_name := 'Test', last_name := 'Testerton', is_logged_in := false};
INSERT default::User {username := 'user1', password := b'pass',first_name := 'John', last_name := 'Doe', is_logged_in := false};
INSERT default::User {username := 'user2', password := b'pass', first_name := 'Fred', last_name := 'Flintstone', is_logged_in := false};
INSERT default::Vacation {admin_user := (SELECT default::User filter .user_id = 1), name := 'Test Vacation', members := (SELECT default::User)};
INSERT default::Discussion {title := 'Test Discussion', members := (SELECT default::User), vacation := (SELECT default::Vacation limit 1)};
INSERT default::Message {author := (SELECT default::User filter .user_id  = 2), text := 'Some text content'};
