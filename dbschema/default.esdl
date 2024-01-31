module default {
  type Vacation {
    required admin_user: User;
    required name: str;
    multi link discussions: Discussion;
    multi link members: User;
  }

  type Discussion {
    required title: str;
    required multi link members: User;
    required single link vacation: Vacation;
  }

  scalar type user_id extending sequence; #NOTE: auto-incrementing ids for easability

  type User {
      messages := .<author[is Message];
      discussions := .<members[is Discussion];
      required user_id: user_id {
          constraint exclusive;
        };
      required first_name: str;
      required last_name: str;
      required is_logged_in: bool;
      #TODO: https://www.edgedb.com/docs/stdlib/pgcrypto#function::ext::pgcrypto::crypt for password
    }

  type Message {
    required single link author: User {
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
