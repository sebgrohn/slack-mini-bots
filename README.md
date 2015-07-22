# slack-mini-bots
Small utility commands for webhooking into Slack (http://www.slask.com).

## Included scripts

* `slack-send`: post general Slack messages specified by JSON file contents.
* `giphy-bot`: post random GIF from Giphy by given search term(s).

## Requirements

Written in Ruby and requires the `slack-notifier` gem: 

```gem install slack-notifier```

## Configuration

Configuration is done in the Ruby file `config.rb`; use `config.rb.template` as a template, as shown below.

You can have one or more incoming webhooks; their default usernames and icons are used if not overridden in the sent message.


```ruby
SLACK_CONFIG = {
  urls: {
    webhook1: 'https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/xxxxxxxxxxxxxxxxxxxxxxxx',
    webhook2: 'https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/xxxxxxxxxxxxxxxxxxxxxxxx'
    # ...
  },
  channels: {
    :@user1 => 'Uxxxxxxxx',
    :@user2 => 'Uxxxxxxxx',
    # ...
    
    :"#channel1" => 'Cxxxxxxxx',
    :"#channel2" => 'Cxxxxxxxx'
    # ...
  },
  default_url:     :webhook1,
  default_channel: :@user1
}
```

The [Slack API doc](https://api.slack.com/methods) can be used to get the correct ids of users, groups
and channels to put in the config file; see methods
[`users.list`](https://api.slack.com/methods/users.list/test),
[`groups.list`](https://api.slack.com/methods/groups.list/test) and
[`channels.list`](https://api.slack.com/methods/channels.list/test).
