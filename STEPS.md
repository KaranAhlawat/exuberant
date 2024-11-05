1. Create [`esy`](https://esy.sh) project (using `esy.json`)
2. Create `package.json` with - `react`, `react-dom`, `vite`, `vite-plugin-melange`
3. Run `npm install`.
4. Create `vite.config.js` with the correct plugin setup.
5. Install dev dependencies using `esy` such as `ocamllsp`, `ocamlformat`, `utop` etc.
6. Add in `melange`, `dune`, `reason-react`, `reason-react-ppx` using `esy`.
7. Create a new dune project in the same directory - `dune init proj <name> .`
8. Change the `dune-project` `package` stanza, adding in `(allow_empty)`.
9. Add in a `dune` file in the project root which sets up `melange.emit` and also `(dirs :standard \ node_modules esy.lock)`
10. Create `lib` folder. Add in a `dune` file with a library stanza, depending on the relevant ppx pre-processors.
11. Add in `index.html` which includes a script tag such as
```html
<script type="module" src="/src/<entrypoint file ml/re>"></script>
```
12. Run `npm run dev` for development with HMR.
13. Run `npm run build` for building a static bundle.
