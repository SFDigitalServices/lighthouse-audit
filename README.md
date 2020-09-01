# lighthouse-audit
This is where we run regular Lighthouse checks on public SF gov URLs via GitHub Actions. Here's the deal:

* The list of URLs checked lives in [lighthouserc.yml](./lighthouserc.yml) under the `ci.collect.url` list.
* The [Lighthouse CI] [action] configuration lives in [.github/workflows/audit.yml](./.github/workflows/audit.yml).
* Reports are published to our [Lighthouse CI server], and are viewable on [the nightly audits dashboard][dashboard].

## How do I...?

### Add a URL to the list
[Edit lighthouserc.yml](https://github.com/SFDigitalServices/lighthouse-audit/edit/main/lighthouserc.yml) and add a line prefixed with `- `.

### Remove a URL from the list
[Edit lighthouserc.yml](https://github.com/SFDigitalServices/lighthouse-audit/edit/main/lighthouserc.yml) and remove the line containing the URL.

### Change the frequency of audits
[Edit .github/workflows/audit.yml](https://github.com/SFDigitalServices/lighthouse-audit/edit/main/.github/workflows/audit.yml) and change the `on.schedule[0].cron` entry. If you don't understand [cron syntax], you can use a tool like [crontab.guru](https://crontab.guru). The [GitHub Actions docs](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#onschedule) may also help.

[yaml]: https://en.wikipedia.org/wiki/YAML
[lighthouse ci]: https://github.com/GoogleChrome/lighthouse-ci#readme
[lighthouse ci server]: https://github.com/SFDigitalServices/lighthouse-ci-server
[action]: https://github.com/treosh/lighthouse-ci-action
[cron syntax]: https://en.wikipedia.org/wiki/Cron
[dashboard]: https://lighthouse-ci-sfgov.herokuapp.com/app/projects/nightly-audits/dashboard
