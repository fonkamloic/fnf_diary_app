import { defineAuth } from '@aws-amplify/backend';
import { type ClientSchema, a, defineData } from "@aws-amplify/backend";
import { defineStorage } from "@aws-amplify/backend";


/**
 * Define and configure your auth resource
 * @see https://docs.amplify.aws/gen2/build-a-backend/auth
 */
export const auth = defineAuth({
  loginWith: {
       email: {
      verificationEmailSubject: "Verify your email for Open Diary!",
      verificationEmailStyle: "CODE",
      verificationEmailBody: (code) =>
        `Welcome to Open Diary! Your verification code is ${code()}. Enjoy!`,
    },
  },
  userAttributes: {
    preferredUsername: {
      required: true,
    },
    givenName: {
      required: true,
    },
  },
});

export const storage = defineStorage({
  name: "diaryEntryImageBucket",
  access: (allow) => ({
    "entryImages/*": [allow.authenticated.to(["read", "write"])],
  }),
});