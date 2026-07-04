<!DOCTYPE html>
<html>
<body>
<h1>A List of Things</h1>
<ul>
{% for item in items %}
<li>{{ item }}</li>
{% endfor %}
</ul>
<h1>A Thing</h1>
<p>{{ something }}</p>
</body>
</html>

