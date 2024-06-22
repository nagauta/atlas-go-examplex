table "__diesel_schema_migrations" {
  schema = schema.todos
  column "version" {
    null = false
    type = varchar(50)
  }
  column "run_on" {
    null    = false
    type    = timestamp
    default = sql("CURRENT_TIMESTAMP")
  }
  primary_key {
    columns = [column.version]
  }
}
table "tasks" {
  schema = schema.todos
  column "id" {
    null           = false
    type           = int
    auto_increment = true
  }
  column "description" {
    null = false
    type = varchar(512)
  }
  column "completed" {
    null    = false
    type    = bool
    default = 0
  }
  primary_key {
    columns = [column.id]
  }
}
schema "todos" {
  charset = "utf8mb4"
  collate = "utf8mb4_0900_ai_ci"
}
