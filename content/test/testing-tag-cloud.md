Title: Testing: Tag Cloud
Slug: testing-tag-cloud
Status: hidden

## The Back Story

To sort tags in alphabetical order, use

```
{% for tag in tag_cloud|sort) %}
    <button type="button" class="btn btn-primary btn-xs">
    <a class="tag-{{ tag.1 }}" href="{{ SITEURL }}/{{ tag.0.url }}">
        {{ tag.0 }}
    </a>
    </button>
    {% if not loop.last %}
        &nbsp;
    {% endif %}
{% endfor %}
```

{% for tag in tag_cloud|sort) %}
    <button type="button" class="btn btn-primary btn-xs">
    <a class="tag-{{ tag.1 }}" href="{{ SITEURL }}/{{ tag.0.url }}">
        {{ tag.0 }}
    </a>
    </button>
    {% if not loop.last %}
        &nbsp;
    {% endif %}
{% endfor %}

To sort by number of articles in tag

```
{% for tag in tag_cloud|sort(attribute='1') %}
    <button type="button" class="btn btn-primary btn-xs">
    <a class="tag-{{ tag.1 }}" href="{{ SITEURL }}/{{ tag.0.url }}">
        {{ tag.0 }}
    </a>
    </button>
    {% if not loop.last %}
        &nbsp;
    {% endif %}
{% endfor %}
```

{% for tag in tag_cloud|sort(attribute='1') %}
    <button type="button" class="btn btn-primary btn-xs">
    <a class="tag-{{ tag.1 }}" href="{{ SITEURL }}/{{ tag.0.url }}">
        {{ tag.0 }}
    </a>
    </button>
    {% if not loop.last %}
        &nbsp;
    {% endif %}
{% endfor %}

