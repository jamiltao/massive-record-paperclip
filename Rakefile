
begin
  require 'bones'
rescue LoadError
  abort '### Please install the "bones" gem ###'
end

task :default => 'test:run'
task 'gem:release' => 'test:run'

Bones {
  name     'massive_record_paperclip'
  authors  'FIXME (who is writing this software)'
  email    'FIXME (your e-mail)'
  url      'FIXME (project homepage)'
}

