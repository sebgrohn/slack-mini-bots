
def get_slack_channel(config, channel_arg)
  config[:channels][(channel_arg or '').to_sym] or config[:channels][config[:default_channel]]
end

def get_slack_url(config, url_arg)
  config[:urls][(url_arg or '').to_sym] or config[:urls][config[:default_url]]
end
