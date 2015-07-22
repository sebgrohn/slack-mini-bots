
require_relative 'config'

def get_slack_team_config(team_arg)
  config = SLACK_CONFIG
  config[:teams][(team_arg or '').to_sym] or config[:teams][config[:default_team]]
end

def get_slack_channel(team_arg, channel_arg)
  config = get_slack_team_config(team_arg)
  config[:channels][(channel_arg or '').to_sym] or config[:channels][config[:default_channel]]
end

def get_slack_url(team_arg, url_arg)
  config = get_slack_team_config(team_arg)
  config[:urls][(url_arg or '').to_sym] or config[:urls][config[:default_url]]
end
