UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'testuser') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'testuser'),
    name := 'Belize 2024',
    members := (SELECT default::User FILTER .username IN {'user5', 'user6'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'jpyles') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'jpyles'),
    name := 'Colorado 2024',
    members := (SELECT default::User FILTER .username IN {'torm', 'kaib'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'aksharp') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'aksharp'),
    name := 'Brazil 2025',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'torm', 'neham'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'kaib') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'kaib'),
    name := 'Paris 2025',
    members := (SELECT default::User FILTER .username IN {'torm', 'jpyles'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'testuser') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'testuser'),
    name := 'Fiji 2024',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'user5', 'user6'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'neham') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'neham'),
    name := 'Spain 2024',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'torm', 'kaib'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'aksharp') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'aksharp'),
    name := 'Spain 2024',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'torm', 'neham'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'aksharp') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'aksharp'),
    name := 'Japan 2025',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'torm', 'neham'})
  }),
};

UPDATE default::Team 
FILTER .admin_user = (SELECT default::User FILTER .username = 'aksharp') 
SET {
  vacations += (INSERT default::Vacation {
    admin_user := (SELECT default::User FILTER .username = 'kaib'),
    name := 'New Zealand 2025',
    members := (SELECT default::User FILTER .username IN {'jpyles', 'torm'})
  }),
};


