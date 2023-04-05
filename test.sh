gh api graphql -f query='
  query($org: String!, $number: Int!) {
    organization(login: $org){
      projectV2(number: $number) {
        id
        fields(first:20) {
          nodes {
            ... on ProjectV2Field {
              id
              name
            }
            ... on ProjectV2SingleSelectField {
              id
              name
              options {
                id
                name
              }
            }
          }
        }
        items(first:20) {
          nodes {
            id
            content {
              ... on PullRequest {
                id
                number
              }
            }
          }
        }
      }
    }
  }' -f org='ods-sandbox' -F number='1' > project_data.json

echo `cat project_data.json`