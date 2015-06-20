#!/home/abhinav/.rvm/environments/ruby-2.2.2

require 'open-uri'
require 'json'

url = "https://api.idolondemand.com/1/api/async/recognizespeech/v1?url=https%3A%2F%2Fwww.idolondemand.com%2Fsample-content%2Fvideos%2Fhpnext.mp4&apikey=838e7368-2a0b-4c9d-8dcf-56d3e17c723d"

stru = JSON.parse(URI.parse(url).read)

puts stru

puts stru["jobID"]

temp_url = "https://api.idolondemand.com/1/job/result/"+stru["jobID"]+"?apikey=838e7368-2a0b-4c9d-8dcf-56d3e17c723d"

val = JSON.parse(URI.parse(temp_url).read)

puts val["actions"][0]["result"]["document"][0]["content"]