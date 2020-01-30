if (git log -1 | grep '\[[0-9]*\]'); then
  echo "Found jira ticket(s)"
else
  echo "No jira tickets found"
fi
