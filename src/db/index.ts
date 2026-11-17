import { drizzle } from "drizzle-orm/netlify-db";
import * as schema from "./schema";

// Netlify Database configures the connection automatically — no connection string needed.
export const db = drizzle({ schema });
