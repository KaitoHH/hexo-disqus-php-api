{%- if page.comments %}
{%- set disqusapi_css_uri = config.disqusapi.cdn.css or config.disqusapi.api + '/dist/iDisqus.min.css' %}
<link rel="stylesheet" href="{{ disqusapi_css_uri }}">

{%- set disqusapi_js_uri = config.disqusapi.cdn.js or config.disqusapi.api + '/dist/iDisqus.min.js' %}

<script>
NexT.utils.loadComments(document.querySelector('#disqusapi_thread'), () => {
  NexT.utils.getScript('{{ disqusapi_js_uri }}', () => {
    window.dsqapi = new iDisqus('disqusapi_thread', {
      forum         : '{{ config.disqusapi.forum }}',
      api           : '{{ config.disqusapi.api }}/api/',
      mode          : {{ config.disqusapi.mode}},
      timeout       : '{{ config.disqusapi.timeout}}',  
      url           : {{ page.permalink | json }},
      identifier    : {{ page.path | json }},
      title         : {{ page.title | json }},
      init          : true,
      emojiPreview  : {{ config.disqusapi.emojipreview}},
      relatedType   : '{{ config.disqusapi.relatedtype}}'
    });
  }, window.DisqusAPI);
});
</script>
{%- endif %}
