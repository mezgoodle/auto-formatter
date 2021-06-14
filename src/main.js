const core = require('@actions/core')
const github = require('@actions/github')

async function run() {
  const GB_TOKEN = core.getInput('TOKEN')
  const octokit = github.getOctokit(GB_TOKEN)

  const {context = {} } = github
  const {pull_request} = context.payload
}

run()
