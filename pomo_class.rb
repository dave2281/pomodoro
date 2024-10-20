class Pomodoro
  @file = "D:\\pomodoro\\attachments\\budilnik.mp3"

  def self.install_libs
    system("sudo apt update")
    system("sudo apt install ffmpeg")
    system("ffplay -version")
  end

  def self.play_audio
    puts @file
    system("ffplay -autoexit -nodisp #{@file}")
  end  

  def self.work_time(time)
    puts 'If you want to start work time type Enter:'
    answer = gets
    sleep(time)
  end

  def self.short_time_out(time)
    puts 'If you want to start short time out, type Enter:'
    answer = gets
    sleep(time)
  end

  def self.big_time_out(time)
    puts 'If you want to start big time out, type Enter:'
    answer = gets
    sleep(time)
  end
end