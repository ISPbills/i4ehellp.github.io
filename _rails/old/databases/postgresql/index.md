---
menuheaders: [ "About deploying PostgreSQL", "Features", "Database deployment types", "How to connect to your PostgreSQL database", "Environment Variables", "Control your Rails database migrations", "Customize your database configuration" ]
layout: post
template: one-col
title: PostgreSQL with Cloud 66 for Rails
categories: Databases
lead: "Using PostgreSQL on Cloud 66 Rails stacks"
legacy: false
recommendedName: [ "Backup Verifiers", "Backup", "Backup Failure", "Replication"  ]
recommendedLinks: [ "backup-verifier.html", "backup.html", "backup-failure.html", "replication.html" ]
keywords: []
permalink: /:collection/:path
---

{% assign dbtype = "postgres" %}

<a href="#about-deploying-{{ dbtype }}"></a>{% include _inlines/Databases/common/postgres/about-deploying-postgres-header-v1.md  product = page.collection %}
{% include _inlines/Databases/common/postgres/about-deploying-dbs-v1.md  product = page.collection %}
<a href="#features"></a>{% include _inlines/Databases/common/postgres/features-v1.md  product = page.collection dbtype = dbtype %}
<a href="#database-deployment-types"></a>{% include _inlines/Databases/common/postgres/deployment-types-v1.md  product = page.collection %}
<a href="#how-to-connect-to-your-{{ dbtype }}-database"></a>{% include _inlines/Databases/common/postgres/how-to-connect-v1.md dbtype = dbtype product = page.collection %}
<a href="#environment-variables"></a>{% include _inlines/Databases/common/postgres/env-vars-v1.md  product = page.collection dbtype = dbtype %} 
<a href="#control-your-rails-database-migrations"></a>{% include _inlines/Databases/rails/control-db-migrations/control-rails-db-migration-v1.md  product = page.collection %}
<a href="#customize-your-database-configuration"></a>{% include _inlines/Databases/common/postgres/customize-v1.md  product = page.collection dbtype = dbtype %}