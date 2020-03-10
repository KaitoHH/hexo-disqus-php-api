{%- if page.comments %}
<link rel="stylesheet" href="{{ config.disqusapi.api }}/dist/iDisqus.min.css">

<script>
NexT.utils.loadComments(document.querySelector('#disqusapi_thread'), () => {
  NexT.utils.getScript('{{ config.disqusapi.api }}/dist/iDisqus.min.js', () => {
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
