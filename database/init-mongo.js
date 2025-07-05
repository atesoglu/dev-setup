db = db.getSiblingDB('devdb');

db.createCollection('logs');

db.logs.insertOne({ message: "Initial log entry", createdAt: new Date() });
