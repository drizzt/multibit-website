---
ALERT_CLASS:
ALERT:
langcode: en
langtext: English
menuFor:
- text: Home
  url: /en/index.html
menu:
- text: Home
  url: /en/index.html
- text: FAQ
  url: /en/faq.html
- text: Support
  url: /en/support.html
- text: Community
  url: /en/community.html
- text: Releases
  url: /en/releases.html
- text: Help
  url: /en/help.html
---
<html lang="{{ page.langcode }}">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <title>{{ page.title }}</title>
  {% lesscss bootstrap.less %}
  <link rel="shortcut icon" href="/src/main/resources/assets/favicon.png">
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" />
</head>
<body>
<div id="container1">
  <div class="wrap">
    <div id="logo"><a href="/{{ page.langcode }}/"><span>MultiBit</span></a></div>
    <div id="logotext">MultiBit</div>
  </div>
</div>
<div id="container2">
  <ul id="menu" class="wrap">
    {% for link in page.menu %}{% assign active = nil %}{% capture fullurl %}{{ link.url | append:'.html' }}{% endcapture %}{% if page.url == fullurl %}{% assign active = 'active' %}{% endif %}
    <li{% if active %} class="{{ active }}"{% endif %}><a href="{{ link.url }}">{{ link.text }}</a></li>
    {% endfor %}
  </ul>
</div>

<div id="container3">
  <div id="back1">
    <div id="back2">
      <div class="wrap">
        {% if site.ALERT or site.ALERT_en %}
        {% if site.ALERT_CLASS %}{% assign class = site.ALERT_CLASS%}{% endif %}{% if site.ALERT_CLASS_en %}{% assign class = site.ALERT_CLASS_en%}{% endif %}
        {% if site.ALERT %}{% assign alert = site.ALERT%}{% endif %}{% if site.ALERT_en %}{% assign alert = site.ALERT_en%}{% endif %}
        <div class="alert-message {{ class }}">
          {{ alert }}
        </div>
        {% endif %}
        <div id="content">
          {{ content }}
        </div>

        <div id="footer">
          <div>© <a href="https://multibit.org/" target="_blank">MultiBit</a> 2011–2013 Released under the <a
            href="http://creativecommons.org/licenses/MIT/" target="_blank">MIT license</a></div>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
<script type="text/javascript" src="/assets/jquery/plugins/scroll/scroll.js"></script>
<script src="https://platform.twitter.com/widgets.js" type="text/javascript"></script>

</body>

</html>