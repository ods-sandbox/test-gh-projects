gh api graphql -f query='
  query($id: ID!) {
    node(id: $id) {
      ... on PullRequest {
        body
      }
    }
  }' -f id='PR_kwDOJS-NV85NqDj2' > project_data.json

echo `cat project_data.json`