if [ $1 == 0 ]
then
  find ~ -type f | fzf > $2
elif [ $1 == 1 ]
then
  find ~ -type d | fzf > $2
fi
