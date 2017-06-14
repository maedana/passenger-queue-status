command =
  if ENV['CAPTURE_PASSENGER_STAUS_MODE'] == 'test'
    'ruby test/passenger_queue.rb'
  else
    'rvmsudo passenger-status'
  end
str = `#{command}`
date_regex = /^\s*Date\s+:\s{1}(?<date>\d{4}-\d{2}-\d{2}\s{1}\d{2}:\d{2}:\d{2}).*$/
queue_regex = /^\s*Requests\s{1}in\s{1}queue:\s{1}(?<count>\d{1})$/
if (date_match = str.match(date_regex)) && (queue_match = str.match(queue_regex))
  date = date_match[:date]
  count = queue_match[:count]
  puts "#{date},#{count}"
end
