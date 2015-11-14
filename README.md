# docker-galera


Use deploy.sh to start containers.
You can connect to any node:

```docker run -it node2 mysql ```

To add new node (connected to any up node)
```docker run --detach=true --name node7 -h node7 --link node2:node2 who0/docker-galera --wsrep-cluster-name=local-test --wsrep-cluster-address=gcomm://node2```


Based on [Galera doc](http://galeracluster.com/2015/05/getting-started-galera-with-docker-part-1/)
