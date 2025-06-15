<p align="center">
  <h1 align="center">act3-runner</h1>
</p>

A runner for [act3][1] for my repos.

⚡️ Usage
---

Config files are generated using `act3` itself:

```bash
act3 config gen \
	-r "$(cat repos.txt | xargs | tr ' ' ',')" \
	-n '^main$' \
	>main.yml
```

HTML reports are generated as follows:

```bash
act3 \
	-g \
	-c ./main.yml \
	--html-title "main" \
	--html-template-path templates/report.html \
	-f html >dist/reports/main.html
```

[1]: https://github.com/dhth/act3
