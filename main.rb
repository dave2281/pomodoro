require_relative 'pomo_class.rb'

index = 0

if ARGV[0] == '-i'
  Pomodoro.install_libs
end

while index != Pomodoro.loop_times
  Pomodoro.work_time
  Pomodoro.play_audio
  Pomodoro.short_time_out
  Pomodoro.play_audio
  Pomodoro.work_time
  Pomodoro.play_audio
  Pomodoro.short_time_out
  Pomodoro.play_audio
  Pomodoro.work_time
  Pomodoro.play_audio
  Pomodoro.short_time_out
  Pomodoro.play_audio
  Pomodoro.work_time
  Pomodoro.play_audio
  Pomodoro.big_time_out
  Pomodoro.play_audio

  index += 1
end