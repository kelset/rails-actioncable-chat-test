# A sample Chat app
First test app to mess around with ActionCable

## How to

`cd` inside the folder and run `docker-compose up --build`

then `docker-compose exec website rails db:create db:migrate db:seed`

then `docker-compose exec website rails assets:precompile`

## Based on
- https://nickjanetakis.com/blog/dockerize-a-rails-5-postgres-redis-sidekiq-action-cable-app-with-docker-compose
- https://www.nopio.com/blog/rails-real-time-chat-application-part-1/
- https://www.nopio.com/blog/rails-chat-application-actioncable/
- https://www.youtube.com/watch?v=GBEDvF1_8B8
- http://stackoverflow.com/questions/35320791/how-to-use-actioncable-as-api

Huge shoutout to the authors!
