# slack-mini-bots
Small utility commands for webhooking into Slack (http://www.slask.com).


## Included scripts

* `slack-send`: post general Slack messages specified by JSON file contents.
* `giphy-bot`: post random GIF from Giphy by given search term(s).


## Requirements

Written in Ruby and requires the `slack-notifier` gem: 

```gem install slack-notifier```


## Configuration

Configuration is done in the Ruby file `config.rb`; see the file `config.rb.template`
for a reference to what the configuration should look like.

Points of interest:
* You can configure multiple Slack teams.
* For each team, you can have one or more incoming webhooks; their default usernames
  and icons are used if not overridden in the sent message.
* Per team, you also need to configure the channels/users/groups you want to be
  able to send to. The [Slack API doc](https://api.slack.com/methods) can be used
  to get the correct ids of users, groups and channels to put in the config file;
  see the API methods
  [`users.list`](https://api.slack.com/methods/users.list/test),
  [`groups.list`](https://api.slack.com/methods/groups.list/test) and
  [`channels.list`](https://api.slack.com/methods/channels.list/test).
