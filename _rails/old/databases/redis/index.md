---
menuheaders: [ "About deploying Redis", "Features", "Database deployment types", "How to connect to your Redis database", "Environment Variables", "Control your Rails database migrations", "Customize your database configuration" ]
layout: post
template: one-col
title: Redis with Cloud 66 Rails
categories: Databases
lead: "Using Redis on Cloud 66 for rails stacks"
legacy: false
recommendedName: [ "Backup", "Replication" ]
recommendedLinks: [ "backup.html", "replication.html" ]
keywords: []
permalink: /:collection/:path
---

{% assign dbtype = "redis" %}

<a href="#about-deploying-{{ dbtype }}"></a>{% include _inlines/Databases/common/redis/about-deploying-redis-header-v1.md  product = page.collection %}
{% include _inlines/Databases/common/redis/about-deploying-dbs-v1.md  product = page.collection %}
<a href="#features"></a>{% include _inlines/Databases/common/redis/features-v1.md  product = page.collection dbtype = dbtype %}
<a href="#database-deployment-types"></a>{% include _inlines/Databases/common/redis/deployment-types-v1.md  product = page.collection %}
<a href="#how-to-connect-to-your-{{ dbtype }}-database"></a>{% include _inlines/Databases/common/redis/how-to-connect-v1.md dbtype = dbtype product = page.collection %}
<a href="#environment-variables"></a>{% include _inlines/Databases/common/redis/env-vars-v1.md  product = page.collection dbtype = dbtype %} 
<a href="#control-your-rails-database-migrations"></a>{% include _inlines/Databases/rails/control-db-migrations/control-rails-db-migration-v1.md  product = page.collection %}
<a href="#customize-your-database-configuration"></a>{% include _inlines/Databases/common/redis/customize-v1.md  product = page.collection  dbtype = dbtype %}