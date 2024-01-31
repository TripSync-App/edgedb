INSERT default::User {user_id := 1, first_name := 'Test', last_name := 'Testerton', is_logged_in := false};
INSERT default::User {user_id := 2, first_name := 'John', last_name := 'Doe', is_logged_in := false};
INSERT default::User {user_id := 3, first_name := 'Fred', last_name := 'Flintstone', is_logged_in := false};
INSERT default::Vacation {admin_user := (SELECT default::User filter .user_id = 1), name := 'Test Vacation', members := (SELECT default::User)};
INSERT default::Discussion {title := 'Test Discussion', members := (SELECT default::User), vacation := (SELECT default::Vacation limit 1)};
