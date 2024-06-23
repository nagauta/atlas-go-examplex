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
