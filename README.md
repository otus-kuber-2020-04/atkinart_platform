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

