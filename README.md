# :cop: Bailiff-slack [![Build Status](https://travis-ci.org/choosen/bailiff-slack.svg?branch=master)](https://travis-ci.org/choosen/bailiff-slack)

## :moneybag: This application is to settle up expenses using Slack command line integration

### :hash: Ruby version
- 2.3.3

### :book: System dependencies
- Rails 5.0.1
- PostgreSQL 9.6
- Sidekiq

### :smile: How to run
1. clone repository
2. `cd path/to/repo`
3. `cp config/database.yml.sample config/database.yml`
4. set properly `config/database.yml`
5. `rake db:create db:migrate`
6. Set your slack token in system variable `SLACK_SLASH_COMMAND_TOKEN`

#### :white_check_mark: tests
* Run tests with `bundle exec rspec`
