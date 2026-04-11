(function () {
  'use strict';

  var LANGUAGES = ['en', 'nl', 'fr', 'de', 'es'];
  var LABELS    = { en: 'EN', nl: 'NL', fr: 'FR', de: 'DE', es: 'ES' };

  /** Return the language segment from the current URL path, or null. */
  function detectLang() {
    var parts = window.location.pathname.split('/');
    for (var i = 0; i < parts.length; i++) {
      if (LANGUAGES.indexOf(parts[i]) !== -1) return parts[i];
    }
    return null;
  }

  /**
   * Replace the language segment in a path.
   * /en/cgm/dexcom-g7/1-introduction/ → /nl/cgm/dexcom-g7/1-introduction/
   */
  function swapLang(path, from, to) {
    if (!from) {
      // No language in current URL — prefix with target language
      return '/' + to + path;
    }
    // Replace first occurrence of /from/ or leading /from
    return path.replace(
      new RegExp('(^|/)' + from + '(/|$)'),
      '$1' + to + '$2'
    );
  }

  /**
   * Check if a URL exists via HEAD request.
   * Returns a Promise<boolean>.
   */
  function urlExists(url) {
    return fetch(url, { method: 'HEAD', cache: 'no-store' })
      .then(function (r) { return r.ok; })
      .catch(function () { return false; });
  }

  /** Navigate to targetLang version of the current page, with EN fallback. */
  function switchTo(targetLang) {
    var currentLang = detectLang();
    if (targetLang === currentLang) return;

    var currentPath = window.location.pathname;
    var targetPath  = swapLang(currentPath, currentLang, targetLang);
    var targetUrl   = window.location.origin + targetPath;

    // Try target language page first
    urlExists(targetUrl).then(function (exists) {
      if (exists) {
        window.location.href = targetUrl;
        return;
      }
      // Fallback: same page in English
      if (targetLang !== 'en') {
        var enPath = swapLang(currentPath, currentLang, 'en');
        var enUrl  = window.location.origin + enPath;
        urlExists(enUrl).then(function (enExists) {
          window.location.href = enExists ? enUrl : window.location.origin + '/en/';
        });
      } else {
        // Was already trying English, go to /en/ homepage
        window.location.href = window.location.origin + '/en/';
      }
    });
  }

  /** Build and inject the switcher bar below the search box. */
  function injectSwitcher() {
    var searchBox = document.querySelector('.wy-side-nav-search');
    if (!searchBox) return;

    var currentLang = detectLang();

    var bar = document.createElement('div');
    bar.id = 'lang-switcher';

    LANGUAGES.forEach(function (lang) {
      var a = document.createElement('a');
      a.href = '#';
      a.textContent = LABELS[lang];
      a.title = lang.toUpperCase();
      if (lang === currentLang) a.className = 'active';

      a.addEventListener('click', function (e) {
        e.preventDefault();
        switchTo(lang);
      });

      bar.appendChild(a);
    });

    // Insert right after the search box
    searchBox.parentNode.insertBefore(bar, searchBox.nextSibling);
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', injectSwitcher);
  } else {
    injectSwitcher();
  }
})();
