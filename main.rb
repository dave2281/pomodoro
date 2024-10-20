require_relative 'pomo_class.rb'

attr = {
  work_time: 25,
  short_time_out: 5,
  big_time_out: 15,
  times: 4,               # how much loops of 1 lesson you need?
  lessons: 2,             # how much lessons you have?
}

index = 0

while index != attr[:lessons]
  attr[:times].times do |i|
    puts "Lesson #{index}"
    
    puts "________________"
  end
  index += 1
end

Pomodoro.play_audio
