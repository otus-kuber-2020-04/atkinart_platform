# Atkinart

## Выполнено ДЗ № 1

 - [+] Основное ДЗ
 - [+] Задание со *

### В процессе сделано:
 - установлен minikube, все действия выполнены на его основе 
 - установлен dashboard и назначена метка на node minikube для нормального назначения планировщика
 - создан `Dockerfile` на основе nginx все собирается и пушиться [build.sh](./kubernetes-intro/web/build.sh)
 - создан и запущен ресурс в minikube с initContainer который получает главную страницу с удаленного ресурса
 - создан и исправлен манифест ресурса для `hipster-frontend` , проблема запуска состояла в отсутствии ENV переменных в запуске контейнера
 финальный результат можно посмотреть [тут](./kubernetes-intro/frontend-pod-healthy.yaml)
 

### Как запустить проект:
 - для основного задания `kubectl apply -f web-pod.yaml`
 - для второго задания `kubectl apply -f frontend-pod-healthy.yaml`

### Как проверить работоспособность:
 - пробросить порты с помощью `kubectl port-forward --address 0.0.0.0 pod/web 8000:8000`
 - перейти по ссылке [link!](http://localhost:8000)

## Выполнено ДЗ № 2

 - [+] Основное ДЗ
 - [+] Задание со *

### В процессе сделано:
 - развернут кластер с помощью kind `kind create cluster --config kind-config.yaml`
 - созданы replicaSet для двух сервисов
 - созданы Deployment для двух сервисов
 - созданы Deployment для разных стратегий обновления на основе `strategy`
 - создан и протестирован DaemonSet для `node-exporter` параметр 
 ```yaml
tolerations:
    -   operator: Exists
```
 позволяет стартовать поды и на `master` нодах
 
все файлы находятся [тут](./kubernetes-controllers)

## Выполнено ДЗ № 3

 - [+] Основное ДЗ

### В процессе сделано:
 - созданы `ServiceAccount` в различных namespace и созданы `ClusterRoleBinding` и `RoleBinding` 
 для связывания ролей и выполняемых операций
 
все файлы находятся [тут](./kubernetes-security)

## Выполнено ДЗ № 5

 - [+] Основное ДЗ

### В процессе сделано:
 - создан `Statefull` сервис из образа `Minio` 
 - создан сервис для доступа к `Minio` 
 - при создании сервиса были автоматически созданы `Persistent Volume Claim (PVC)` из конфигурации, а так же `Persistent Volume`
 при увеличении кол-ва реплик эти ресурсы так же создаются на каждую копию
 - вся работа проходила в кластере на базе `kind` конфигурации из второго ДЗ 
 
все файлы находятся [тут](./kubernetes-volumes)
