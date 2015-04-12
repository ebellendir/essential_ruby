require 'open-uri'
require 'json'

# You can ignore the next two lines; it's a hack to prevent
#   errors on certain machines
require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

url = ""

result = JSON.parse(open(url).read)

posts.each do |the_post|
	puts the_post["from"]["name"]
	puts the_post["message"]
