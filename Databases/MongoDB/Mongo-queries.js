// Switch to or create a new database
use devops_db

// Create a collection and insert documents
db.users.insertMany([
  { name: "Alice", email: "alice@example.com", joined: new Date() },
  { name: "Bob", email: "bob@example.com", joined: new Date() }
]);

// Find all documents
db.users.find().pretty()

// Find specific user
db.users.find({ name: "Alice" })

// Update a user’s email
db.users.updateOne(
  { name: "Alice" },
  { $set: { email: "newalice@example.com" } }
);

// Delete a document
db.users.deleteOne({ name: "Bob" })

// Create an index on email
db.users.createIndex({ email: 1 })

// Show current collections
show collections

// Drop the database
db.dropDatabase()
