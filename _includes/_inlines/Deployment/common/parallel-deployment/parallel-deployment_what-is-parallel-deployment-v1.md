<!-- usedin: [ _legacy_docker/deployment/parallel-deployment-v1.md, _maestro/Deployment/parallel-deployment-v1.md, _node/deployment/parallel-deployment-v1.md, _rails/deployment/parallel-deployment-v1.md, _skycap/deployment/parallel-deployment-v1.md] -->


## What is parallel deployment?

When you deploy in parallel, all the deployment tasks for the servers in your stack will run in parallel as opposed to running in serial. In other words, the tasks will run against each server simultaneously instead of running on one server at a time. For large stacks, this can have significant time benefits.

Deploying in serial involves removing each server from your load balancer, deploying to it, and re-adding it to the load balancer. When you deploy in parallel, your servers won't be removed from the load balancer, because you could end up with no servers serving the load balancer if this were the case.