function rc --wraps='be rails c' --wraps='doppler run bundle exec rails c' --description 'alias rc=be rails c'
  be rails c $argv
        
end
