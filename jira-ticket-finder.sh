if (git log -1 | grep '\'[[0-9]*\']'); then
  echo "Found a jira ticket"
else
  echo "No jira ticket found"
fi
