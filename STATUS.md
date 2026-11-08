# STATUS.md

Project: **Home Internet Shopping — A Calm Guide**
Owner: Asdale Dynamics, LLC · 2026-11-08 · Git initialized and committed locally (never pushed; no remote exists).

## What was built

A complete, local-first, dependency-free guide to buying or switching home
internet, in Dylan Asdale's style (plain English, step by step, ADHD-friendly
20-minute chunks, never condescending):

- `docs/` — seven markdown guides:
  - `00-start-here.md` — map + the calm 7-step path
  - `01-mbps-reality-check.md` — speed needs by household size, jargon
    translation, three-test self-verification
  - `02-promo-pricing-and-contracts.md` — the fee stack, Avg12/Avg24 honest
    averages, contract/ETF decoding, an ask-the-rep script included inline
  - `03-mesh-vs-router-vs-rental.md` — the 10-minute decision table,
    rent-vs-own math, bridge mode, placement fixes
  - `04-lower-cost-plans.md` — retention negotiation, tier-dropping, un-bundling,
    buying equipment, low-income/lifeline-style program pointers, prepaid plans
  - `05-cancel-scripts.md` — five word-for-word scripts (clean cancel,
    cancel-or-discount, bad-service, contract exit, order-time confirmation)
    plus equipment-return epilogue
  - `06-printable-sheets.md` — five printable sheets in markdown form
- `site/index.html` — single-page static site of the whole guide, print CSS
  included; opens standalone in any browser, no build step, no JS.
- `site/sheets.html` — print-ready version of the five comparison sheets
  (Plan Comparison with Avg24 row, Speed Test Log, Call/Confirmation Tracker,
  Equipment Return Receipt Log, Switch-Day Checklist). Ctrl/Cmd+P.
- `README.md` — overview, usage, verification instructions; credits
  Asdale Dynamics, LLC.
- `LICENSE` — MIT, copyright line exactly: `Copyright (c) 2026 Asdale Dynamics, LLC`.
- `verify.sh` — automated verification script.

Distinct from the wifi-and-networks-handbook (fixing/optimizing owned gear)
and car-insurance-shopping-calm-guide (insurance) projects: this one is about
*choosing and switching the service*, end-to-end, politely.

## How to run it

- No build, no install, no server needed. Open `site/index.html` in a
  browser, or read `docs/00-start-here.md` in order.
- Printables: open `site/sheets.html`, press Ctrl/Cmd+P.
- Verify: `./verify.sh` (requires only `python3` and standard POSIX tools).

## Verification results (run 2026-11-08, all passing)

```
OK site/index.html: HTML parses cleanly, all tags balanced
OK site/sheets.html: HTML parses cleanly, all tags balanced
OK all internal links resolve (20 links checked)
OK LICENSE copyright line present
OK README credits Asdale Dynamics, LLC
OK site/index.html is non-trivially sized
OK site/sheets.html is non-trivially sized
PASS: everything checks out.
```

Also verified: committed as the existing repo identity
(Dylan Asdale <dylanasdale@users.noreply.github.com>), plain commit
message, no Co-authored-by trailers; working tree clean after commit.

## Known gaps / honest limitations

- **No prices or provider names in the guides** — deliberately: offers change
  weekly. The guides teach the decoding method (Avg24, fee stack) and point
  readers to each provider's official published terms. A future refresh pass
  could add a region-specific appendix.
- **Program specifics for low-income/lifeline-style assistance are
  pointer-only** — eligibility rules change; readers are sent to official
  program pages rather than to descriptions that go stale.
- County/state legal nuances around cancellation windows and fee bumpers are
  summarized as "confirm locally" rather than per-jurisdiction detail.
- Markdown sheets (docs/06) are fillable only when printed via the HTML
  version; a future interactive form-flavored sheet PDF could improve that.
- No screenshots/brand visuals — intentional, keeps the repo
  trademark-clean and generic.

## Housekeeping

- No secrets, API keys, or personal data anywhere in the repo (checked).
- Nothing was pushed, no remote configured, nothing published.
