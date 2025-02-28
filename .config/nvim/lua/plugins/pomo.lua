return {
  "epwalsh/pomo.nvim",
  version = "*",
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat", "TimerSession" },

  opts = {
    work_time = 25,
    break_time = 5,
    long_break_time = 15,
    notifier = {
      sticky = true,
    },
    sessions = {
      pomodoro = {
        { name = "Work", duration = "30m" },
        { name = "Short Break", duration = "7m" },
        { name = "Work", duration = "25m" },
        { name = "Short Break", duration = "7m" },
        { name = "Work", duration = "25m" },
        { name = "Long Break", duration = "10m" },
      },
    },
  },
}
