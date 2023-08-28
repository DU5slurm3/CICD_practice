## Get Registration token from gitlab
https://gitlab.s059223.edu.slurm.io/admin/runners

## Get permament token for Gitlab Runner
curl --request POST "https://gitlab.s059223.edu.slurm.io/api/v4/runners" --form "token=<Registration_token>" --form "description=main-runner"  --form "tag_list=local,docker"

## Change config.toml configuration
vi /etc/gitlab-runner/config.toml

concurrent = 1
check_interval = 0

[session_server]
  session_timeout = 1800
[[runners]]
  name = "main-runner"
  url = "https://gitlab.s059223.edu.slurm.io/"
  token = "Qv9yucnCQyHai7y-9Bbc"
  executor = "docker"
  cache_dir = "/artifacts"
  [runners.docker]
    tls_verify = false
    image = "alpine:3.14"
    volumes = ["/var/run/docker.sock:/var/run/docker.sock", "/artifacts:/artifacts"]
    privileged = false
    disable_entrypoint_overwrite = false
    oom_kill_disable = false
    disable_cache = false
    shm_size = 0