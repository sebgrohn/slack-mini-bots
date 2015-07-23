
def load_config()
  JSON.parse(File.read(File.expand_path('config.json', File.dirname(__FILE__))))
end

def get_slack_team_config(team_arg)
  config = load_config()
  config['teams'][team_arg || ''] or config['teams'][config['default_team']]
end

def get_slack_channel(team_arg, channel_arg)
  config = get_slack_team_config(team_arg)
  config['channels'][channel_arg || ''] or config['channels'][config['default_channel']]
end

def get_slack_url(team_arg, url_arg)
  config = get_slack_team_config(team_arg)
  config['urls'][url_arg || ''] or config['urls'][config['default_url']]
end
