---
menuheaders: [ "How to connect to your Redis database" ]
layout: post
template: one-col
title: Customize your PostgreSQL Configuration with Docker
categories: Databases
lead: "Customize your PostgreSQL Configuration on Cloud 66 Docker stacks"
legacy: true
recommendedName: [ "Redis with Rails", "Backup Verifiers", "Backup", "Replication"  ]
recommendedLinks: [ "index.html", "backup-verifier.html", "backup.html", " replication.html" ]
keywords: []
permalink: /:collection/:path
---

{% assign dbtype = "redis" %}

<a href="#how-to-connect-to-your-{{ dbtype }}-database"></a>{% include _inlines/Databases/common/redis/how-to-connect-v1.md dbtype = dbtype product = page.collection %}