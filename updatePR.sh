gh api graphql -f query='
  mutation (
    $item: ID!
  ) {
    set_status: updatePullRequest(input: {
      pullRequestId: $item
      body: "This is a test"
    }) {
      pullRequest {
        id
        body
      }
    }
  }' -f item="PR_kwDOJS-NV85NqDj2" --silent