(function () {
  'use strict';

  var LANGUAGES = ['en', 'nl', 'fr', 'de', 'es'];
  var LABELS    = { en: 'EN', nl: 'NL', fr: 'FR', de: 'DE', es: 'ES' };

  function detectLang() {
    var parts = window.location.pathname.split('/');
    for (var i = 0; i < parts.length; i++) {
      if (LANGUAGES.indexOf(parts[i]) !== -1) return parts[i];
    }
    return null;
  }

  function swapLang(path, from, to) {
    if (!from) return '/' + to + path;
    return path.replace(
      new RegExp('(^|/)' + from + '(/|$)'),
      '$1' + to + '$2'
    );
  }

  function urlExists(url) {
    return fetch(url, { method: 'HEAD', cache: 'no-store' })
      .then(function (r) { return r.ok; })
      .catch(function () { return false; });
  }

  function switchTo(targetLang) {
    var currentLang = detectLang();
    if (targetLang === currentLang) return;

    var currentPath = window.location.pathname;
    var targetPath  = swapLang(currentPath, currentLang, targetLang);
    var targetUrl   = window.location.origin + targetPath;

    urlExists(targetUrl).then(function (exists) {
      if (exists) { window.location.href = targetUrl; return; }
      if (targetLang !== 'en') {
        var enPath = swapLang(currentPath, currentLang, 'en');
        var enUrl  = window.location.origin + enPath;
        urlExists(enUrl).then(function (enExists) {
          window.location.href = enExists ? enUrl : window.location.origin + '/en/';
        });
      } else {
        window.location.href = window.location.origin + '/en/';
      }
    });
  }

  function buildBar() {
    var currentLang = detectLang();
    var bar = document.createElement('div');
    bar.id = 'lang-switcher';
    LANGUAGES.forEach(function (lang) {
      var a = document.createElement('a');
      a.href = '#';
      a.textContent = LABELS[lang];
      a.title = lang.toUpperCase();
      if (lang === currentLang) a.className = 'active';
      a.addEventListener('click', function (e) { e.preventDefault(); switchTo(lang); });
      bar.appendChild(a);
    });
    return bar;
  }

  function injectSwitcher() {
    /* Avoid double injection */
    if (document.getElementById('lang-switcher')) return;

    /* Try multiple candidate anchor elements */
    var anchor = document.querySelector('.wy-side-nav-search')
              || document.querySelector('[role="search"]')
              || document.querySelector('.wy-side-scroll');

    if (!anchor) return;

    var bar = buildBar();
    anchor.parentNode.insertBefore(bar, anchor.nextSibling);
  }

  /* Run at DOMContentLoaded, window load, and after a short delay
     to handle themes that inject the sidebar asynchronously. */
  function tryInject() {
    injectSwitcher();
    /* If sidebar not yet present, retry up to ~2 s */
    if (!document.getElementById('lang-switcher')) {
      var attempts = 0;
      var timer = setInterval(function () {
        injectSwitcher();
        attempts++;
        if (document.getElementById('lang-switcher') || attempts > 20) {
          clearInterval(timer);
        }
      }, 100);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', tryInject);
  } else {
    tryInject();
  }
  window.addEventListener('load', injectSwitcher);
})();
