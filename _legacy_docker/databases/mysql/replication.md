---
menuheaders: [ "About database replication", "How it works", "PostgreSQL", "Environment Variables", "Enable database replication", "Important", "Single stack", "Between stacks", "Disable database replication", "Create slave database", "Re-synchronizing slave with master" ]
gitlinks: [ ]
layout: post
template: one-col
title: MySQL Replication
categories: Databases
lead: ""
legacy: true
keywords: []
permalink: /:collection/:path
---

{% assign dbtype = "mysql" %}

<a href="#about-database-replication"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_about-database-replication-v1.md  product = page.collection %}
<a href="#how-it-works"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_how-it-works-v1.md  product = page.collection %}
<a href="#{{ dbtype }}"></a>{% include _inlines/Databases/common/mysql/database-replication_{{ dbtype }}-v1.md  product = page.collection %}
<a href="#environment-variables"></a>{% include _inlines/Databases/common/mysql/env-vars-v1.md  product = page.collection dbtype= dbtype %} 
<a href="#enable-database-replication"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_enable-database-replication-v1.md  product = page.collection %}
<a href="#important"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_important-v1.md  product = page.collection %}
<a href="#single-stack"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_single-stack-v1.md  product = page.collection %}
<a href="#between-stacks"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_between-stacks-v1.md  product = page.collection %}
<a href="#disable-database-replication"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_disable-database-replication-v1.md  product = page.collection %}
<a href="#create-slave-database"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_create-slave-database-v1.md  product = page.collection %}
<a href="#re-synchronizing-slave-with-master"></a>{% include _inlines/Databases/common/mysql/database-replication/database-replication_re-synchronizing-slave-with-master-v1.md  product = page.collection %}