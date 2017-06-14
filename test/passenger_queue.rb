PASSENGER_RESUlT_TEXT1 = <<EOS
Version : 4.0.55
Date    : 2017-06-13 17:16:43 +0900
Instance: 3366
----------- General information -----------
Max pool size : 10
Processes     : 1
Requests in top-level queue : 0

----------- Application groups -----------
/var/contents/next-cms-api/current#default:
  App root: /var/contents/next-cms-api/current
  Requests in queue: 0
  * PID: 15629   Sessions: 0       Processed: 41      Uptime: 12m 37s
    CPU: 0%      Memory  : 202M    Last used: 2m 23s ago
EOS

PASSENGER_RESUlT_TEXT2 = <<EOS
Version : 4.0.55
Date    : 2017-06-13 17:17:43 +0900
Instance: 3366
----------- General information -----------
Max pool size : 10
Processes     : 1
Requests in top-level queue : 0

----------- Application groups -----------
/var/contents/next-cms-api/current#default:
  App root: /var/contents/next-cms-api/current
  Requests in queue: 1
  * PID: 15629   Sessions: 0       Processed: 41      Uptime: 12m 37s
    CPU: 0%      Memory  : 202M    Last used: 2m 23s ago
EOS

PASSENGER_RESUlT_TEXT3 = <<EOS
Version : 4.0.55
Date    : 2017-06-13 17:18:43 +0900
Instance: 3366
----------- General information -----------
Max pool size : 10
Processes     : 1
Requests in top-level queue : 0

----------- Application groups -----------
/var/contents/next-cms-api/current#default:
  App root: /var/contents/next-cms-api/current
  Requests in queue: 2
  * PID: 15629   Sessions: 0       Processed: 41      Uptime: 12m 37s
    CPU: 0%      Memory  : 202M    Last used: 2m 23s ago
EOS

PASSENGER_RESUlT_TEXTS = [
  PASSENGER_RESUlT_TEXT1.freeze,
  PASSENGER_RESUlT_TEXT2.freeze,
  PASSENGER_RESUlT_TEXT3.freeze
].freeze

def passenger_queue_result_text
  PASSENGER_RESUlT_TEXTS.sample
end

puts passenger_queue_result_text
