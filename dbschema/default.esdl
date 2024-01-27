module default {
  type Vacation {
    required admin_user: User;
    discussions: Discussion;
    members: User;
    }

  type Discussion {
      required title: str;
      required members: User;
      messages := .members.messages;
    }

  type User {
      messages := .<author;
      discussions := .<members[is Discussion];
      required user_id: int64;
      required is_logged_in: bool;
      #TODO: https://www.edgedb.com/docs/stdlib/pgcrypto#function::ext::pgcrypto::crypt for password
    }

  type Message {
    required author: User {
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
