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
        -n '^release$' \
        >release.yml

vuln:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^(vulncheck|audit)$' \
        >vuln.yml

all: main pr release vuln
