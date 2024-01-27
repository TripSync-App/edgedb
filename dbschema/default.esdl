module default {
  type Vacation {
    admin_user: User;
    discussions: Discussion;
    members: User;
    }

  type Discussion {
      title: str;
      members: User;
      messages := .members.messages;
    }

  type User {
      messages := .<author;
      discussions := .<members[is Discussion];
      user_id: int64;
      is_logged_in: bool;
    }

  type Message {
    author: User {
        readonly := true;
      }
    timestamp: datetime {
        default := datetime_current();
        readonly := true;
      }
    last_updated: datetime {
        default := datetime_current();
      }
    text: str;
    }
}
