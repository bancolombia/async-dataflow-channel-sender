import Config

config :channel_sender_ex,
       secret_base:
         {"aV4ZPOf7T7HX6GvbhwyBlDM8B9jfeiwi+9qkBnjXxUZXqAeTrehojWKHkV3U0kGc", "socket auth"},
       socket_port: 8092,
       initial_redelivery_time: 900,
       socket_idle_timeout: 30000,
       rest_port: 8091,
       max_age: 900