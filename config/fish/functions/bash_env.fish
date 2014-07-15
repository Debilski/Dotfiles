function bash_env --description 'Imports named variables from a bash script'
	
  # bash_env script.bash VAR1 VAR2 VARN
  #
  set -l script $argv[1]
  set -l variables
  for arg in $argv[2..-1]
    set variables $variables "echo \"set -g $arg \${$arg}\""\n
  end
  set res (bash (cat $script (echo $variables | psub) | psub))
  echo "Importing" (count $res) "variable(s)"
  for val in $res
      echo "$val"
      eval "$val"
  end
end
