CREATE TABLE "landscape_enquiries" (
	"id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
	"kind" varchar(16) NOT NULL,
	"full_name" varchar(100) NOT NULL,
	"email" varchar(160) NOT NULL,
	"phone" varchar(40),
	"service" varchar(100),
	"location" varchar(140),
	"message" text NOT NULL,
	"contact_method" varchar(16) NOT NULL,
	"created_at" timestamp with time zone DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "landscape_enquiry_rate_limits" (
	"key" varchar(64) PRIMARY KEY,
	"hits" integer DEFAULT 1 NOT NULL,
	"expires_at" timestamp with time zone NOT NULL
);
--> statement-breakpoint
CREATE INDEX "landscape_enquiries_created_idx" ON "landscape_enquiries" ("created_at");--> statement-breakpoint
CREATE INDEX "landscape_enquiry_rate_expiry_idx" ON "landscape_enquiry_rate_limits" ("expires_at");