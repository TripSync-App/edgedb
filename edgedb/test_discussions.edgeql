WITH vacation := (
  SELECT default::Vacation 
  filter .name = "Brazil 2025" 
  and .admin_user = (SELECT default::User filter .username = "aksharp")
)
INSERT default::Discussion {
  title := "Restuaruant Search",
  vacation := vacation,
  members := vacation.members
};


WITH vacation := (
  SELECT default::Vacation 
  filter .name = "Brazil 2025" 
  and .admin_user = (SELECT default::User filter .username = "aksharp")
)
INSERT default::Discussion {
  title := "Hotels in Brazil",
  vacation := vacation,
  members := vacation.members
};


WITH vacation := (
  SELECT default::Vacation 
  filter .name = "Brazil 2025" 
  and .admin_user = (SELECT default::User filter .username = "aksharp")
)
INSERT default::Discussion {
  title := "Travel Plans",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Japan 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "aksharp")
)
INSERT default::Discussion {
  title := "Beach Activities",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Brazil 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "aksharp")
)
INSERT default::Discussion {
  title := "Sightseeing Spots",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "New Zealand 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "aksharp")
)
INSERT default::Discussion {
  title := "Local Cuisine Exploration",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Spain 2024" 
  AND .admin_user = (SELECT default::User FILTER .username = "neham")
)
INSERT default::Discussion {
  title := "Local Festivals and Events",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Spain 2024" 
  AND .admin_user = (SELECT default::User FILTER .username = "neham")
)
INSERT default::Discussion {
  title := "Historical Landmarks",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Japan 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "aksharp")
)
INSERT default::Discussion {
  title := "Cultural Experiences",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "Japan 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "aksharp")
)
INSERT default::Discussion {
  title := "Outdoor Adventures",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "New Zealand 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "kaib")
)
INSERT default::Discussion {
  title := "Scenic Drives",
  vacation := vacation,
  members := vacation.members
};

WITH vacation := (
  SELECT default::Vacation 
  FILTER .name = "New Zealand 2025" 
  AND .admin_user = (SELECT default::User FILTER .username = "kaib")
)
INSERT default::Discussion {
  title := "Adventure Sports",
  vacation := vacation,
  members := vacation.members
};
