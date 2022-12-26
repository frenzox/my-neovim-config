require('orgmode').setup_ts_grammar()


require('orgmode').setup({
  org_agenda_files = {'~/workspace/org/*'},
  org_capture_templates = {
      t = {
          description = 'TODOs',
          template = '* TODO ',
          target = '~/workspace/org/todos.org',
      },
  }
})
