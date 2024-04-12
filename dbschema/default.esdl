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
      required single link admin_user: User {
          on target delete delete source;
        };
      single link invite: Invite {
          constraint exclusive;
        };
      multi link members: User {
          on target delete allow;
        }; #NOTE: optional due to new team
      multi link vacations: Vacation {
          constraint exclusive;
          on target delete allow;
        };
      multi link discussions := .vacations.discussions;
      constraint exclusive on ((.admin_user, .name)) # user's can't create teams with the same name
    }

  type Vacation {
    timestamp: datetime {
        default := datetime_current();
        readonly := true;
      }
    last_updated: datetime {
        default := datetime_current();
      }
    required vacation_id: vacation_id {
        constraint exclusive;
    };
    required admin_user: User {
      on target delete delete source;
    };
    required name: str;
    multi link members: User {
      on target delete allow;
    };
    single link team := .<vacations;

    description: str;
    imageUrl: str;
    tags: str;
    color: str;

    multi link discussions := .<vacation[is default::Discussion];

    constraint exclusive on ((.name, .admin_user))
    # NOTE: this is really for a team not to have two vacations with the same name
    # same result if you make the admin user the exclusive constraint
  }

  type Discussion {
    timestamp: datetime {
        default := datetime_current();
        readonly := true;
      }
    last_updated: datetime {
        default := datetime_current();
      }
    required discussion_id: discussion_id {
        constraint exclusive;
    };
    required title: str;
    required finalized: bool {
        default := false;
    }
    required multi link members: User {
        on target delete allow;
    };
    required single link vacation: Vacation {
      on target delete delete source;
    };
    multi link messages := .<discussion;
    single link event: Event;
    constraint exclusive on ((.vacation, .title))

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
        on target delete delete source;
      }
    timestamp: datetime {
        default := datetime_current();
        readonly := true;
      }
    last_updated: datetime {
        default := datetime_current();
      }
    text: str;
    required single link discussion: Discussion{
        readonly := true;
      };
    }

  type Invite {
      required code: str {
          constraint exclusive;
        };
      single link team := .<invite[is Team];
    }

  type Event {
    discussion_title: str;
    date: str;
    time: str;
    address: str;
    lat: float64;
    lng: float64;
  }
}
