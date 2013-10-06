# source Yelp specific profile
if [ -f ~/.yelp_profile ]; then
  source ~/.yelp_profile
fi

# Call my bashrc.
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
