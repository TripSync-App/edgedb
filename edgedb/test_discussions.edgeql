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

