pipeline{
    agent{
          label 'eks'
    }
  stages{
    stage(checkout from SCM) {
      git branch: 'main', credentialsId: 'git-token', url: 'https://github.com/Stark-Repo/k8s.git'
    }
      stage(create cluster in eks) {
          sh " eksctl create cluster --name=my-app --nodes=2 --region=east-us-1"
    }
      stage(check on nodes & create ns) {
          sh "kubectl get nodes"
          sh "kubectl create ns test-app"
          sh "kubectl get ns"
    }
      stage(deploy the application) {
          sh "kubectl apply -f application.yml"
    }
      stage(check on pods) {
          sh "kubectl get pods"
    }
  }
}
