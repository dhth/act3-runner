default: all

main:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^main$' \
        >main.yml

pr:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^pr$' \
        >pr.yml

release:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^(release|Release)$' \
        >release.yml

scan:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^(scan)$' \
        >scan.yml

vuln:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^(vulncheck|audit)$' \
        >vuln.yml

run-main:
    act3 \
      -g \
      -c ./main.yml

run-pr:
    act3 \
      -g \
      -c ./pr.yml

run-release:
    act3 \
      -g \
      -c ./release.yml

run-scan:
    act3 \
      -g \
      -c ./scan.yml

run-vuln:
    act3 \
      -g \
      -c ./vuln.yml

run-all:
    just run-main
    just run-pr
    just run-release
    just run-scan
    just run-vuln

all: main pr release scan vuln
