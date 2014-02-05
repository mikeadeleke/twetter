module UsersHelper
  def convert_username(username)
    "http://tweeter.com/#{username.gsub('a', '')}"
  end
end

