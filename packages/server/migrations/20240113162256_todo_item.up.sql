-- Add up migration script here

CREATE TABLE todo_items(
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

  title VARCHAR(255) NOT NULL,
  description VARCHAR(1000),
  completed BOOLEAN NOT NULL DEFAULT FALSE,

  list_id UUID NOT NULL REFERENCES lists(id) ON DELETE CASCADE,

  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)