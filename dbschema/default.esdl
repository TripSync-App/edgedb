module default {
  scalar type user_id extending sequence;
  scalar type vacation_id extending sequence;
  scalar type discussion_id extending sequence;
  scalar type message_id extending sequence;
  scalar type team_id extending sequence;

  type Team {
      required team_id: team_id {
          constraint exclusive;
      };
      required name: str;
      required single link admin_user: User;
      single link invite: Invite {
          constraint exclusive;
        };
      required multi link members: User;
      multi link vacations: Vacation {
          constraint exclusive;
        };
      multi link discussions := .vacations.discussions;
      constraint exclusive on ((.admin_user, .name)) # user's can't create teams with the same name
    }

  type Vacation {
    required vacation_id: vacation_id {
        constraint exclusive;
    };
    required admin_user: User;
    required name: str;
    multi link discussions: Discussion;
    multi link members: User;
    single link team := .<vacations;

    constraint exclusive on ((.name, .admin_user))
    # NOTE: this is really for a team not to have two vacations with the same name
    # same result if you make the admin user the exclusive constraint
  }

  type Discussion {
    required discussion_id: discussion_id {
        constraint exclusive;
    };
    required title: str;
    required multi link members: User;
    required single link vacation: Vacation;
  }


  type User {
      required user_id: user_id {
          constraint exclusive;
        };
      required username: str{
          constraint exclusive;
        };

      required first_name: str;
      required last_name: str;
      required password: bytes;
      required is_logged_in: bool;
      messages := .<author[is Message];
      discussions := .<members[is Discussion];
      teams := .<members[is Team];
    }

  type Message {
    required message_id: message_id {
        constraint exclusive;
      };
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

  type Invite {
      required code: str {
          constraint exclusive;
        };
      single link team := .<invite[is Team];
    }
}
