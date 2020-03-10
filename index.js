/* global hexo */

'use strict';

const path = require('path');

// Add comment
hexo.extend.filter.register('theme_inject', injects => {
  let config = hexo.config;
  if (!config.disqusapi.enable || !config.disqusapi.api|| !config.disqusapi.forum) return;

  injects.comment.raw('disqusapi', `
  <div class="comments">
    <div id="disqusapi_thread">
      <noscript>Please enable JavaScript to view the comments powered by Disqus.</noscript>
    </div>
  </div>
  `, {}, {cache: true});
  injects.bodyEnd.file('disqusapi', path.join(__dirname, 'disqusapi.swig'));

});
