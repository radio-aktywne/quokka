# Configuration for the credentials
credentials:
  # Configuration for admin user credentials
  admin:
    # Password for the admin user
    password: {{ env.Getenv "QUOKKA__CREDENTIALS__ADMIN__PASSWORD" "password" | strings.Quote }}

    # Username for the admin user
    user: {{ env.Getenv "QUOKKA__CREDENTIALS__ADMIN__USER" "admin" | strings.Quote }}

  # Configuration for source user credentials
  source:
    # Password for the source user
    password: {{ env.Getenv "QUOKKA__CREDENTIALS__SOURCE__PASSWORD" "password" | strings.Quote }}

    # Username for the source user
    user: {{ env.Getenv "QUOKKA__CREDENTIALS__SOURCE__USER" "source" | strings.Quote }}

# Configuration for the server
server:
  # Host to run the server on
  host: {{ env.Getenv "QUOKKA__SERVER__HOST" "0.0.0.0" | strings.Quote }}

  # Port to run the server on
  port: {{ env.Getenv "QUOKKA__SERVER__PORT" "10000" | conv.ToInt }}
