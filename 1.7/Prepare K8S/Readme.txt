## Создаем namespace и служебный аккаунт, у которого будут все нужные права на этот namespace.
/setup.sh <имя_служебного_аккаунта> production #(имя namespace)

#  CI/CD, потом Variables
K8S_CI_TOKEN

#Создаём токен для доступа Gitlab в кластер Kubernetes
Далее в том же левом меню в Settings > Repository находим Deploy tokens и нажимаем Expand.
Name k8s-pull-token с правами read_registry.

# Создаём secret kubernetes
kubectl create secret docker-registry cicd-gitlab-registry --docker-server registry.slurm.io --docker-email 'student@slurm.io' --docker-username 'gitlab+deploy-token-3996' --docker-password '7zhzc1RMzBCxKwrdwbsM' --namespace s056997-cicd-app-production

# Информация о кластере
kubectl cluster-info
