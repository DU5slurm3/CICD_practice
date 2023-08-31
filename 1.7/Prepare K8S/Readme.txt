## Создаем namespace и служебный аккаунт, у которого будут все нужные права на этот namespace.
/setup.sh application production #(имя проекта и тип)

#  CI/CD, потом Variables
K8S_CI_TOKEN

#Создаём токен для доступа Gitlab в кластер Kubernetes
Далее в том же левом меню в Settings > Repository находим Deploy tokens и нажимаем Expand.
Name k8s-pull-token с правами read_registry.

# Создаём secret kubernetes
kubectl create secret docker-registry cicd-gitlab-registry --docker-server gitlab.s059223.edu.slurm.io:5555 --docker-email 's059223@edu.slurm.io' --docker-username 'gitlab+deploy-token-2' --docker-password 'iPNPvqyRBcPAJghtzMh1' --namespace application-production

# Информация о кластере
kubectl cluster-info
