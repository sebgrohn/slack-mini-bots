
def load_config()
  JSON.parse(File.read(File.expand_path('config.json', File.dirname(__FILE__))))
end

def get_slack_team_config(team_arg)
  config = load_config()
  if team_arg.nil?
    config['teams'][config['default_team']]
  else
    config['teams'][team_arg] or raise ArgumentError, "Unknown team"
  end
end

def get_slack_channel(team_arg, channel_arg)
  config = get_slack_team_config(team_arg)
  if channel_arg.nil?
    config['channels'][config['default_channel']]
  else
    config['channels'][channel_arg] or raise ArgumentError, "Unknown channel"
  end
end

def get_slack_url(team_arg, url_arg)
  config = get_slack_team_config(team_arg)
  if url_arg.nil?
    config['urls'][config['default_url']]
  else
    config['urls'][url_arg] or raise ArgumentError, "Unknown url"
  end
end
