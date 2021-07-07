Just a simple image to host [`tailwind-config-viewer`](https://www.npmjs.com/package/tailwind-config-viewer) output simply and statically.

The author has a [demo](https://rogden.github.io/tailwind-config-viewer/) but it is old.

This is not to be used for custom `tailwind.config.js`, I recommend running `tailwind-config-viewer` in that project. Maybe you can use this as inspiration.

## Usage

```shell
docker run --rm -it -p 9999:80 alistaircol/tcv:latest
```

Open http://localhost:9999 to see the static output.

---

Building locally for testing:

```shell
docker build --force-rm --tag=alistaircol/tcv .
```
