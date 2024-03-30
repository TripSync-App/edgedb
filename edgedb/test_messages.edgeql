INSERT default::Message {
  author := (SELECT default::User filter .username = "jpyles"),
  text := "I think we should go somewhere cool.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "torm"),
  text := "Nah lets go somewhere lame",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};
