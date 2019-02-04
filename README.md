# rethinkdb-backups
The `Dockerfile` on this folder creates a very lightweight image to create and automate RethinkDB backups to S3 buckets.
Intended to be ran as a command and scheduled by using some sort of cron, it will naturally die after completion.Don't
expect the container to stay up and running.

It basically runs `rethinkdb dump -c $RETHINK_HOST:28015`, so there is only 1 environment variable you need to setup
for that to work, `RETHINK_HOST`, which is the rethink host.

The second part of the script is the backup upload to the assigned S3 bucket. For this you will need 3 environment
variables, `BUCKET`, `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.

Be sure to have network access to the rethink cluster from wherever you are running the image, otherwise it will fail.
