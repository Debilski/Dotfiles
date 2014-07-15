function fish_title
	if [ $_ = 'fish' ]
		echo (__fish_git_prompt) $PWD # (prompt_pwd)
	else
		echo $_
	end
end
