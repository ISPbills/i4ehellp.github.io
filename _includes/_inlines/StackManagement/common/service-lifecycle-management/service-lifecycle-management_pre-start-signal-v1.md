<!-- usedin: [ _legacy_docker/stack-management/service-lifecycle-management-v1.md, _maestro/stack-management/service-lifecycle-management-v1.md, _node/stack-management/service-lifecycle-management-v1.md, _rails/stack-management/service-lifecycle-management-v1.md] -->


### Pre-start signal

This is a signal that is sent to the existing containers of the service before the new containers are started during deployment. An example could be `USR1` - but it depends on what your container is running as to which signals make sense.

{% highlight yaml %}
services:
    <service_name>:
        pre_start_signal: USR1
{% endhighlight %}

* * *
