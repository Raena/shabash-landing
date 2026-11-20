# shabash.games

One-page static landing site. No build step: everything that ships is in `docs/`.

```
docs/
  index.html     ← the whole site (inline CSS + JS)
  fonts/         ← self-hosted Google Fonts (latin + latin-ext subsets)
  og-image.png   ← social share image (placeholder, 1200×630)
```

## Editing content
Open `docs/index.html` and scroll to the `<script>` at the bottom. `LINKS`, `GAMES` and `SOCIALS` hold all links,
games and social tabs. Adding a game or a social network only needs a new entry there.

- **Bookbinder Steam page:** set `LINKS.bookbinder`. While it's `'#'`, the Wishlist button falls back to the developer page.
- **Real capsule art:** put the image in `docs/img/` and add `image:'img/bookbinder.jpg'` to that game's entry.

## Local preview
```
cd docs
python -m http.server 8000
```
Then open http://localhost:8000.

## Deploy: GitHub Pages
The site is served from the `docs/` folder on `main` (**Settings → Pages → Deploy from a branch → main / docs**).
Every push to `main` redeploys automatically within about a minute.

Custom domain: see the DNS steps below.
- At your DNS provider for `shabash.games`, add four `A` records for `@` → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`,
  and a `CNAME` record for `www` → `raena.github.io`.
- In **Settings → Pages → Custom domain**, enter `shabash.games` and save. Once the DNS check passes, tick **Enforce HTTPS**.

Other hosts (Cloudflare Pages, Netlify, Vercel) also work: set the output/publish directory to `docs` and leave the build command empty.
