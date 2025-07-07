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

vuln:
    act3 config gen \
        -r "$(cat repos.txt | xargs | tr ' ' ',')" \
        -n '^(vulncheck|audit)$' \
        >vuln.yml

all: main pr vuln
