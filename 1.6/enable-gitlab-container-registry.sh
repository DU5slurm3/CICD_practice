openssl req -x509 -newkey rsa:4096 -sha256 -days 3650  -nodes -keyout /etc/gitlab/ssl/registry.s056997.edu.slurm.io.key -out /etc/gitlab/ssl/registry.s056997.edu.slurm.io.crt -subj "/CN=registry.s056997.edu.slurm.io"
sed -i "/registry_external_url/c\registry_external_url 'https://registry.s056997.edu.slurm.io'" /etc/gitlab/gitlab.rb
sed -i "/registry_enabled/c\gitlab_rails['registry_enabled'] = true" /etc/gitlab/gitlab.rb
sed -i "/registry_http_addr/c\registry['registry_http_addr'] = \"127.0.0.1:5001\"" /etc/gitlab/gitlab.rb
sudo gitlab-ctl reconfigure