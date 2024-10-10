###  Requirements
* For each pull request to the default branch, trigger the CI workflow. (for example with GitHub Actions)
* Provision a multi-node (at least 2 nodes) Kubernetes cluster (you may use KinD to provision this cluster on the CI runner (localhost))
* Deploy Ingress controller to handle incoming HTTP requests
* Create 2 http-echo deployments, one serving a response of “bar” and another serving a response of “foo”.
* Configure cluster / ingress routing to send traffic for “bar” hostname to the bar deployment and “foo” hostname to the foo deployment on local cluster (i.e. route both http://foo.localhost and http://bar.localhost).
* Ensure the ingress and deployments are healthy before proceeding to the next step.
* Generate a load of randomized traffic for bar and foo hosts and capture the load testing result
* Post the output of the load testing result as comment on the GitHub Pull Request (automated the CI job). Depending on the report your load testing script generates, ideally you'd post stats for http request duration (avg, p90, p95, ...), % of http request failed, req/s handled.


### Local Test

run `make` to verify 
