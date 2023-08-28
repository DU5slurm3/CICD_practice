sudo yum install -y curl policycoreutils-python openssh-server perl
# Enable OpenSSH server daemon if not enabled: sudo systemctl status sshd
sudo systemctl enable sshd
sudo systemctl start sshd
# Check if opening the firewall is needed with: sudo systemctl status firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo systemctl reload firewalld
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
curl -s https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sudo EXTERNAL_URL="https://gitlab.s059223.edu.slurm.io" yum install -y gitlab-ce
cat /etc/gitlab/initial_root_password