# Home Internet Shopping — A Calm Guide

A plain-English, low-pressure guide to buying or switching home internet:
the speed your household actually needs, promo pricing and contracts
decoded, mesh vs router vs rental, lower-cost plans, polite cancel scripts,
and printable comparison sheets.

*Built by [Asdale Dynamics, LLC](https://dylanasdale.github.io) — clear, warm,
tested, local-first.*

## Who it's for

Anyone who has ever opened 40 tabs of provider pricing, felt the dread of a
"retention" phone call, or wondered whether the gigabit plan is just a very
expensive way to watch one TV show at a time. No technical background
required. Nothing needs to be bought from this guide — it makes an excellent
point of "sometimes the calm answer is: stay put."

## What's inside

```
docs/
  00-start-here.md                  ← the map + calm path
  01-mbps-reality-check.md          ← speed needs by household size
  02-promo-pricing-and-contracts.md ← decode Avg24 pricing, fees, ETFs
  03-mesh-vs-router-vs-rental.md    ← the 10-minute box decision
  04-lower-cost-plans.md            ← pay less, politely
  05-cancel-scripts.md              ← word-for-word cancel scripts
  06-printable-sheets.md            ← printable sheets (markdown)
site/
  index.html  ← the whole guide as a static page
  sheets.html ← print-ready comparison sheets (Ctrl/Cmd+P)
```

## How to use it

There is no build step, no server, no data collection. Open `index.html`
in any browser, or read the markdown docs in order. To print the
comparison sheets, open `site/sheets.html` and press Ctrl/Cmd+P.

## How to verify it

Run `./verify.sh` — it checks that every HTML file parses cleanly, that
every internal link (site→docs, doc→doc) resolves to a real file, that the
required README/LICENSE credits are present, and prints PASS/FAIL.

## Project principles

- Educational content only; prices, programs, and provider terms change, so
  the guides always point back to each provider's official published terms.
- Numbers and averages (Avg12, Avg24) before brand names.
- Every guide ends at a calm stopping point — designed for 20-minute chunks,
  ADHD-friendly, zero deadline pressure.
- Local-first: works fully offline, no scripts, no tracking, no secrets.

## License

MIT — see [LICENSE](LICENSE). Copyright (c) 2026 Asdale Dynamics, LLC.
