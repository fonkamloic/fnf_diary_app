import { type ClientSchema, a, defineData } from "@aws-amplify/backend";

/// Create a schema called Entry and Highlights. Entry has a lot of highlights. Entries have title, details, addedDate, and a enum mood with a nullable image property.
const schema = a
  .schema({
    Entry: a.model({
      title: a.string().required(),
      details: a.string().required(),
      addedDate: a.date().required(),
      mood: a.enum(["veryBad", "bad", "okay", "good", "veryGood"]),
      image: a.string(),
      highlights: a.hasMany("Highlight", "entryId"),
    }),
    Highlight: a.model({
      text: a.string().required(),
      addedDate: a.date().required(),
      entryId: a.id(),
      entry: a.belongsTo("Entry", "entryId"),
    }),
  })
  .authorization((allow) => [allow.owner()]);

export type Schema = ClientSchema<typeof schema>;

export const data = defineData({
  schema,
  authorizationModes: {
    defaultAuthorizationMode: "userPool",
  },
});