---
layout: post
template: one-col
title:  "How-to: Config & Deployment"
lead: How to configure and deploy Rails applications using Cloud 66
legacy: false
permalink: /:collection/how-to-guides/deployment/index.html
noindex: true
---

<div class="Toc Toc--howto">
    <ul>

    {% assign section = site.rails | where:"categories","how-to-guides/deployment" | sort: "order" %}
    {% include list_articles.html section=section %}

    </ul>
</div><!--/.Toc-->