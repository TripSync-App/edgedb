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

INSERT default::Message {
  author := (SELECT default::User filter .username = "aksharp"),
  text := "Hey everyone! I was thinking about planning a trip to Hawaii. Any suggestions on must-visit places there?",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "neham"),
  text := "How about Europe? I've always wanted to explore the historic cities and try different cuisines.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "jpyles"),
  text := "I prefer beach vacations. What about a trip to the Caribbean? Crystal-clear waters and white sandy beaches sound perfect!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "kaib"),
  text := "How about a road trip? Driving through scenic routes, stopping at quaint towns, and camping under the stars sounds like an adventure!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "torm"),
  text := "I'm up for an adventurous vacation! How about hiking in the mountains or exploring a national park?",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "aksharp"),
  text := "I'm leaning towards a beach destination too! What about the Maldives? It's known for its stunning beaches and luxurious resorts.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "neham"),
  text := "That sounds amazing! I've heard great things about the Maldives. Count me in for a beach vacation!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "jpyles"),
  text := "A beach vacation does sound tempting! I'm also considering a cultural trip to Japan. The cherry blossoms in spring are breathtaking!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "kaib"),
  text := "Japan sounds intriguing! I've always wanted to explore its vibrant cities and try authentic sushi. It's definitely on my bucket list!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "torm"),
  text := "I'm torn between a beach vacation and a cultural trip. Both options sound fantastic! Can't we do both somehow?",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "aksharp"),
  text := "I'm thinking of a tropical paradise like Thailand! It offers a perfect blend of culture, beaches, and delicious cuisine.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "neham"),
  text := "Thailand sounds incredible! I've always wanted to visit the beautiful temples and indulge in Thai street food.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "jpyles"),
  text := "How about exploring the wonders of South America? Machu Picchu in Peru or the Amazon rainforest could be thrilling destinations!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "kaib"),
  text := "I've always dreamed of visiting South America! The natural beauty and rich history are truly captivating. Count me in for an adventure!",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User filter .username = "torm"),
  text := "South America sounds like a dream! Exploring ancient ruins and experiencing diverse cultures would be an unforgettable journey.",
  discussion := (SELECT default::Discussion filter .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "Let's discuss our favorite restaurants!",
  discussion := (SELECT default::Discussion FILTER .title = "Restuaruant Search" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "torm"),
  text := "Any recommendations for budget-friendly accommodations?",
  discussion := (SELECT default::Discussion FILTER .title = "Hotels in Brazil" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "aksharp"),
  text := "What are everyone's travel plans for the upcoming trip?",
  discussion := (SELECT default::Discussion FILTER .title = "Travel Plans" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "neham"),
  text := "Let's share our favorite travel memories!",
  discussion := (SELECT default::Discussion FILTER .title = "Beach Activities" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "Exploring cultural landmarks - any suggestions?",
  discussion := (SELECT default::Discussion FILTER .title = "Sightseeing Spots" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "kaib"),
  text := "Looking for adventure sports activities - recommendations?",
  discussion := (SELECT default::Discussion FILTER .title = "Adventure Sports" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "torm"),
  text := "How about we plan a group hike during the trip?",
  discussion := (SELECT default::Discussion FILTER .title = "Outdoor Adventures" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "aksharp"),
  text := "Let's discuss the best local dishes to try!",
  discussion := (SELECT default::Discussion FILTER .title = "Local Cuisine Exploration" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "neham"),
  text := "Anyone interested in joining a cooking class while we're there?",
  discussion := (SELECT default::Discussion FILTER .title = "Cultural Experiences" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "What are some must-see natural attractions?",
  discussion := (SELECT default::Discussion FILTER .title = "Scenic Drives" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "kaib"),
  text := "Let's plan a day trip to explore nearby towns!",
  discussion := (SELECT default::Discussion FILTER .title = "Local Festivals and Events" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "torm"),
  text := "What's the best way to get around the city?",
  discussion := (SELECT default::Discussion FILTER .title = "Historical Landmarks" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "aksharp"),
  text := "Any recommendations for off-the-beaten-path attractions?",
  discussion := (SELECT default::Discussion FILTER .title = "Cultural Experiences" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "neham"),
  text := "Let's plan a group activity to immerse ourselves in the local culture!",
  discussion := (SELECT default::Discussion FILTER .title = "Sightseeing Spots" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "Who's up for a day of beach games and relaxation?",
  discussion := (SELECT default::Discussion FILTER .title = "Beach Activities" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "kaib"),
  text := "What are some unique experiences we can't miss out on?",
  discussion := (SELECT default::Discussion FILTER .title = "Adventure Sports" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "torm"),
  text := "Let's plan a group hike to explore the natural beauty around us!",
  discussion := (SELECT default::Discussion FILTER .title = "Outdoor Adventures" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "Let's plan a group hike to explore the natural beauty around us!",
  discussion := (SELECT default::Discussion FILTER .title = "Scenic Drives" LIMIT 1)
};

INSERT default::Message {
  author := (SELECT default::User FILTER .username = "jpyles"),
  text := "And let's get some supplies.",
  discussion := (SELECT default::Discussion FILTER .title = "Adventure Sports" LIMIT 1)
};
