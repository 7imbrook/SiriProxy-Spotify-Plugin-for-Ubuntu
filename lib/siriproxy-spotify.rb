require 'cora'
require 'siri_objects'

require 'open-uri'
require 'json'
require 'uri'


class SiriProxy::Plugin::Spotify < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end
listen_for /(spotify|spotter five|spot of phi|spot fie|spot a fight|specify|spot if i|spotted by|stultify) play some (.*)/i do |junk,input|

find = URI.escape(input.strip)
results = JSON.parse(open("http://ws.spotify.com/search/1/track.json?q=#{find}").read)

track = results["tracks"][0]
puts
puts
puts track["name"]
puts track["href"]
puts "#{find}"
puts

system "dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.OpenUri string:#{track["href"]}"

say "Playing #{track["name"]} by #{track["artists"][0]["name"]}"

request_completed
end
end
