# Hexo Disqus PHP API
[![npm](https://img.shields.io/npm/v/hexo-disqus-php-api)](https://www.npmjs.com/package/hexo-disqus-php-api)
[![NexT](https://img.shields.io/badge/NexT-v7.3.0+-blue.svg)](https://github.com/theme-next/hexo-theme-next)
[![license](https://img.shields.io/npm/l/hexo-disqus-php-api)](https://github.com/KaitoHH/hexo-disqus-php-api/blob/master/LICENSE)

A disqus-php-api plugin for Hexo NexT theme.

This plugin an integration of [disqus-php-api](https://github.com/fooleap/disqus-php-api), which is another Disqus proxy similar to [DisqusJS](https://github.com/SukkaW/DisqusJS), **with some additional features** such as commenting, liking, sending pictures rather than only viewing comments as what DisqusJS does.

## Installation
[![npm](https://img.shields.io/npm/dt/hexo-disqus-php-api)](https://www.npmjs.com/package/hexo-disqus-php-api)
``` bash
$ npm install hexo-disqus-php-api
```

## Configuration
In **Hexo** `_config.yml`:
```yml
disqusapi:
  enable: true
  api:   # Your server endpoint
  forum: # Your disqus shortname
  mode: 2
  timeout: 2000
  emojipreview: true
  relatedtype: Related
  cdn:
    css: https://cdn.jsdelivr.net/gh/KaitoHH-forked-repo/disqus-php-api@1.1.2/dist/iDisqus.min.css
    js: https://cdn.jsdelivr.net/gh/KaitoHH-forked-repo/disqus-php-api@1.1.2/dist/iDisqus.min.js
```

- `cdn` CDN of the required css and js files. Leave it blank if you want to directly load from server side.

The meaning of the other options is available at [disqus-php-api](https://github.com/fooleap/disqus-php-api), including how to deploy the PHP server, so simply refer to this repo.

## Demo
https://kaitohh.com/about/

**Make sure turn off any VPN or proxy before visiting this website.** Otherwise, you can only see the original Disqus.

## Compatibility
The plugin has been tested on Hexo NexT v7.7.2, and it relies on the improved [`theme_inject`](https://github.com/theme-next/hexo-theme-next/pull/868) feature, so it may not work with other themes. However, any PRs of porting the plugin to other themes are welcomed.