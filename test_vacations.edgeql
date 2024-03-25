UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'testuser') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'testuser'),
    name := 'Belize 2024',
  }),
  members += (SELECT default::User FILTER .username IN {'user5', 'user6'})
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'jpyles') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'jpyles'),
    name := 'Colorado 2024',
  }),
  members += (SELECT default::User FILTER .username IN {'torm', 'kaib'})
};
