# 01 · The Mbps Reality Check (by household size)

*How fast is "fast enough"? Let's find out with math instead of ads.*

**The one-sentence version:** internet speed is like table size at a
restaurant — it only matters how many people are sitting down *at the same
time*. Nobody needs a 30-seat table; plenty of people are paying for one.

## First, translate the jargon (60 seconds)

- **Mbps** = "megabits per second." Think *lanes on a highway*: higher number,
  more stuff can move at once. 100 Mbps is plenty for one HD movie streaming
  while someone scrolls on their phone.
- **Download** = things coming *to* you (streaming, browsing, app updates).
  This is the number most advertised.
- **Upload** = things going *out* of you (video calls, sending big files,
  cloud backups, live-streaming). This is often the *slower* number on the
  plan, and it matters more every year.
- **Ping / latency** = round-trip lag, in milliseconds. Lower is better.
  Matters for game matches and video calls more than raw speed does.

## The quick-napkin rule

**Add up "simultaneous streams," not devices.** Every device in your house
listens to Wi-Fi only when it's actually doing something. Your TV uses the
connection during a movie; your phone rests between refreshes.

Rough per-activity needs (healthy, with headroom):

| Activity | Needs roughly |
|---|---|
| Email, browsing, smart-home pings | 5 Mbps |
| Music / podcasts | 5–10 Mbps |
| One HD (1080p) video stream | 8–15 Mbps |
| One 4K video stream | 25–50 Mbps |
| HD video call (Zoom, Teams, Meet) | 5–10 Mbps, ideally upload too |
| Online gaming | 15–30 Mbps + low ping (lag matters more than speed) |
| Cloud backup / huge file uploads | As much upload as you can afford |
| One console/PC game download night | Bursts of 50–100+ Mbps (nobody notices) |

## Households by size

> Add ~30% headroom to everything below. Speeds during "peak evening" hours
> run a bit slower, and slow evenings are what people actually complain about.

### 1 person (or 1 person + a pet)
- **Typical life:** streaming, browsing, a few video calls, gaming evenings.
- **Sweet spot: 100–300 Mbps download, 10–20 Mbps upload.**
- Gigabit is wasted money unless you move giant files daily.

### 2 adults, no kids
- **Typical life:** two streams + a work call + phones, all at once.
- **Sweet spot: 200–400 Mbps download, 20–50 Mbps upload.**
- Upload matters if both work from home: two simultaneous video calls eat
  upload first.

### Family of 3–4
- **Typical life:** 2–3 streams, homework, gaming, phones everywhere,
  someone's on a call.
- **Sweet spot: 400–500 Mbps download, 40–100 Mbps upload.**
- Below this, evenings can feel "mysteriously slow" — it's not your router's
  fault (well, sometimes it is — see [Guide 03](03-mesh-vs-router-vs-rental.md)).

### 5+ people, or roommates
- **Typical life:** everything, everywhere, always.
- **Sweet spot: 500–1000 Mbps (gigabit), 100+ Mbps upload** — *if* your
  budget allows. Alternately: gigabit split across two plans is uncommon, so
  instead buy gigabit and enforce "nobody downloads at dinner."

### Special cases
- **Wired security cameras uploading to the cloud 24/7:** add 5–15 Mbps of
  *upload* per camera.
- **Frequent giant uploaders** (photographers, editors, streamers): shop by
  *upload speed* and consider fiber — its upload matches its download.
- **Rural / satellite:** latency is the boss fight. LEO satellite (e.g.,
  Starlink-type) and fixed wireless changed the game; raw megabit numbers
  matter less than the ping number.

## The honest self-test (10 minutes)

1. **Run a speed test** three times: once at breakfast, once at 8pm (peak),
   once very late. Use a plain site like speedtest.net or fast.com.
   Write down all three sets of numbers on your
   [comparison sheet](06-printable-sheets.md).
2. **Compare to what you pay for.** If you pay for 500 and get 480 — your
   service is fine. If you pay for 500 and get 90 every evening — your
   problem isn't the plan, it's your equipment (Guide 03) or your line's
   congestion (plan time).
3. **Watch the upload number.** Video calls stalling or looking frozen?
   That's usually upload, not download.

## The three truths nobody puts on a billboard

1. **You can always upsell later.** Start at the tier your table says; if
   evenings still hurt for a month, upgrade one tier. Nobody returns to a
   plan you *chose*.
2. **"Up to" means up to.** A 300 Mbps plan delivering 250+ most evenings is
   working as sold.
3. **Wi-Fi (not the plan) is the most common bottleneck.** If tests next to
   the router are fast but the bedroom is slow, more Mbps won't fix it —
   [Guide 03](03-mesh-vs-router-vs-rental.md) will.

## Where to stop for today

Fill in Point A (your current speed and price) on the
[comparison sheet](06-printable-sheets.md). That's the whole job. Tomorrow,
Guide 02 helps you decode whatever price the ads are promising.
