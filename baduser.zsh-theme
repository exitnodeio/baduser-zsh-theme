setopt PROMPT_SUBST
padded_exit_code () {
	num_chars=$(( $(echo $USERNAME | tr -d '\r\n' | wc -m) - 2 ))
	printf "[%${num_chars}s]" "$1"
}

PROMPT='%(?.%F{010}%n.%F{009}$(padded_exit_code $?))%F{111}@%F{012}%m%f%b %3~ $(git_super_status)%(?.%F{010}%B%# .%F{009}%B%# )%b%f%k%'
