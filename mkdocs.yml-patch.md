# Patch instructions for mkdocs.yml and mkdocs-nl.yml

In BOTH `mkdocs.yml` and `mkdocs-nl.yml`, find the `alternate:` section under `extra:` and add the Spanish entry.

## Current (in both files):
```yaml
  alternate:
    - name: English
      link: https://diabetotech.github.io/docs/en/
      lang: en
    - name: Nederlands
      link: https://diabetotech.github.io/docs/nl/
      lang: nl
```

## Replace with:
```yaml
  alternate:
    - name: English
      link: https://diabetotech.github.io/docs/en/
      lang: en
    - name: Nederlands
      link: https://diabetotech.github.io/docs/nl/
      lang: nl
    - name: Español
      link: https://diabetotech.github.io/docs/es/
      lang: es
```

This adds the Spanish flag/language switcher to the EN and NL sites so users can navigate to the Spanish version.
