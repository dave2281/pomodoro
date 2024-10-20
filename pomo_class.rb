class Pomodoro
  @file = "D:\\pomodoro\\attachments\\budilnik.mp3"
  @attr = {
    work_time: 0.1,
    short_time_out: 0.1,
    big_time_out: 0.1,
    times: 4                # how much loops of 1 lesson you need?
  }

  def self.install_libs
    system("sudo apt update")
    system("sudo apt install ffmpeg")
    system("ffplay -version")
  end

  def self.loop_times
    @attr[:times]
  end

  def self.play_audio
    puts @file
    system("ffplay -autoexit -nodisp #{@file}")
  end  

  def self.work_time
    puts 'If you want to start work time type Enter:'
    answer = gets
    sleep(@attr[:work_time]*60)
  end

  def self.short_time_out
    puts 'If you want to start short time out, type Enter:'
    answer = gets
    sleep(@attr[:short_time_out]*60)
  end

  def self.big_time_out
    puts 'If you want to start big time out, type Enter:'
    answer = gets
    sleep(@attr[:big_time_out]*60)
  end
end