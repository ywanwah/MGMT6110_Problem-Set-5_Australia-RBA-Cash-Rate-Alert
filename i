<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RBA Cash Rate Alert - Jo Yeong</title>
<style>
  :root {
    --navy: #1c3157;
    --purple: #6b2f8f;
    --purple-bg: #f8f1fa;
    --purple-line: #dcb9e6;
    --teal: #17718f;
    --teal-bg: #eef6f9;
    --teal-line: #b5d6e2;
    --ink: #1f2430;
    --muted: #5a6272;
    --row-bg: #eef2f6;
    --accent: #c8102e;
    --warn-bg: #fff6d6;
  }
  * { box-sizing: border-box; }
  [hidden] { display: none !important; }
  body {
    margin: 0;
    font-family: "Segoe UI", Arial, sans-serif;
    color: var(--ink);
    background: #ffffff;
    line-height: 1.55;
  }
  main { max-width: 1000px; margin: 0 auto; padding: 32px 20px 56px; }
  h1 { font-size: 1.9rem; margin: 0 0 6px; color: var(--navy); }
  .sub { color: var(--muted); margin: 0 0 24px; }
  h2 { font-size: 1.25rem; color: var(--navy); margin: 28px 0 12px; }
  h3 { font-size: 1.05rem; color: var(--navy); margin: 22px 0 8px; }

  /* Tabs */
  .tabs { display: flex; gap: 4px; border-bottom: 2px solid #e1e5ec; overflow-x: auto; margin: 0 0 8px; }
  .tab {
    appearance: none; background: none; border: none; border-bottom: 3px solid transparent;
    margin-bottom: -2px; padding: 10px 16px; font: inherit; font-weight: 600;
    color: var(--muted); cursor: pointer; white-space: nowrap;
  }
  .tab:hover { color: var(--navy); }
  .tab[aria-selected="true"] { color: var(--navy); border-bottom-color: var(--accent); }
  .tab:focus-visible { outline: 3px solid var(--teal-line); outline-offset: -3px; border-radius: 4px; }

  /* Map */
  .map { display: grid; grid-template-columns: 170px 1fr 1fr; gap: 10px; }
  .col-head {
    background: var(--navy); color: #fff; font-weight: 700; text-align: center;
    padding: 12px 10px; border-radius: 6px; font-size: 0.95rem;
  }
  .row-head {
    background: var(--row-bg); font-weight: 700; text-align: center; padding: 16px 10px;
    border-radius: 6px; display: flex; align-items: center; justify-content: center; font-size: 0.92rem;
  }
  .cell { border-radius: 8px; padding: 22px 16px 18px; text-align: center; border: 1px solid; min-height: 150px; }
  .cell h3 { margin: 0 0 6px; font-size: 1.1rem; font-family: Georgia, serif; }
  .cell p { margin: 0; font-size: 0.9rem; color: #3b4252; }
  .purple { background: var(--purple-bg); border-color: var(--purple-line); }
  .purple h3 { color: var(--purple); }
  .teal { background: var(--teal-bg); border-color: var(--teal-line); }
  .teal h3 { color: var(--teal); }
  .cell.marked { border: 3px solid var(--accent); box-shadow: 0 4px 16px rgba(200, 16, 46, 0.18); }
  .badge {
    display: inline-block; margin-top: 12px; background: var(--accent); color: #fff;
    font-weight: 700; font-size: 0.82rem; padding: 4px 12px; border-radius: 999px;
  }

  /* Blocks */
  .card {
    border: 1px solid var(--teal-line); border-left: 6px solid var(--teal);
    background: var(--teal-bg); border-radius: 8px; padding: 18px 22px;
  }
  .card ol { margin: 0; padding-left: 22px; }
  .card li { margin: 0 0 10px; }
  .card li:last-child { margin-bottom: 0; }
  .tag {
    display: inline-block; background: var(--teal); color: #fff; font-size: 0.75rem;
    font-weight: 700; padding: 2px 10px; border-radius: 999px; margin-bottom: 10px;
  }
  .block { border: 1px solid #e1e5ec; border-radius: 8px; padding: 18px 22px; background: #fafbfc; }
  .block p { margin: 0 0 14px; }
  .block p:last-child { margin-bottom: 0; }
  .block ul { margin: 0 0 14px; padding-left: 22px; }
  .block ul:last-child { margin-bottom: 0; }
  .block li { margin: 0 0 10px; }
  .block li:last-child { margin-bottom: 0; }
  .note { color: var(--muted); font-size: 0.88rem; margin-top: 14px; }
  .todo { background: var(--warn-bg); border-radius: 4px; padding: 2px 6px; }
  .lead { font-size: 1.02rem; margin: 0 0 14px; }

  dl.facts { margin: 0; display: grid; grid-template-columns: 170px 1fr; gap: 12px 18px; }
  dl.facts dt { font-weight: 700; color: var(--navy); }
  dl.facts dd { margin: 0; }

  .reflect { border-left: 6px solid var(--navy); padding: 6px 0 6px 18px; font-size: 1.02rem; }

  /* Screenshots */
  .shots { display: grid; grid-template-columns: repeat(auto-fill, minmax(420px, 1fr)); gap: 18px; }
  figure { margin: 0; border: 1px solid #e1e5ec; border-radius: 8px; overflow: hidden; background: #fff; }
  figure a { display: block; background: #f3f5f8; }
  figure img { display: block; width: 100%; height: auto; }
  figcaption { padding: 10px 14px; font-size: 0.88rem; color: var(--muted); border-top: 1px solid #e1e5ec; }
  figcaption strong { color: var(--ink); }
  .day { margin: 0 0 8px; }
  .day h3 { display: flex; gap: 10px; align-items: baseline; flex-wrap: wrap; }
  .count { font-size: 0.82rem; font-weight: 600; color: #fff; background: var(--teal); border-radius: 999px; padding: 1px 10px; }
  .count.zero { background: #8a91a0; }
  .pending { border: 2px dashed #c9cfda; border-radius: 8px; padding: 18px 22px; color: var(--muted); background: #fafbfc; }

  @media (max-width: 720px) {
    .map { grid-template-columns: 1fr; }
    .map .spacer { display: none; }
    .row-head { margin-top: 10px; }
    dl.facts { grid-template-columns: 1fr; gap: 4px; }
    dl.facts dd { margin-bottom: 12px; }
    .shots { grid-template-columns: 1fr; }
  }
</style>
</head>
<body>
<main>
  <h1>RBA Cash Rate Alert - Jo Yeong</h1>
  <p class="sub">A free-plan Zapier automation with one trigger and one action. Quadrant: <strong>AI alone, with checks</strong>.</p>

  <div class="tabs" role="tablist" aria-label="Sections" id="tabs"></div>

  <!-- TAB 1: QUADRANT -->
  <section id="panel-quadrant" role="tabpanel" aria-labelledby="tab-quadrant">
    <h2>Where my agent sits on the map</h2>
    <div class="map" role="table" aria-label="Two-by-two map of work types">
      <div class="spacer"></div>
      <div class="col-head">Work with a right answer</div>
      <div class="col-head">Work with no single right answer</div>

      <div class="row-head">Work that people and AI must do together</div>
      <div class="cell purple">
        <h3>A person leads, AI inside</h3>
        <p>The person leads and AI works inside.</p>
      </div>
      <div class="cell teal">
        <h3>Agents run it, a person judges</h3>
        <p>Agents run the process and a person judges inside it.</p>
      </div>

      <div class="row-head">Work that either of them can do alone</div>
      <div class="cell teal marked">
        <h3>AI alone, with checks</h3>
        <p>AI does it, with spot checks.</p>
        <span class="badge">My Zap is here</span>
      </div>
      <div class="cell purple">
        <h3>A person decides, AI alongside</h3>
        <p>A person decides with AI alongside.</p>
      </div>
    </div>
  </section>

  <!-- TAB 2: FIVE-LINE CARD -->
  <section id="panel-card" role="tabpanel" aria-labelledby="tab-card" hidden>
    <h2>My agent's five-line card</h2>
    <div class="card">
      <span class="tag">Zapier &middot; free plan &middot; 2 steps</span>
      <ol>
        <li><strong>Trigger:</strong> a new Google News story matching &ldquo;RBA cash rate&rdquo; appears in an RSS feed.</li>
        <li><strong>Action:</strong> Zapier emails me the headline, publish date and link.</li>
        <li><strong>Filtering:</strong> the keyword filter is built into the feed URL, because the free plan has no filter step and allows only one trigger and one action.</li>
        <li><strong>Output:</strong> an email to me only, with a rule-of-thumb mortgage payment estimate (about $16 a month more per $100k borrowed for each 0.25-point rise).</li>
        <li><strong>Off switch:</strong> I turn the Zap off after class on Wednesday 21 October.</li>
      </ol>
      <p class="note">The estimate is a rough rule of thumb, not financial advice.</p>
    </div>
  </section>

  <!-- TAB 3: CASE THAT BREAKS THE ZAP -->
  <section id="panel-break" role="tabpanel" aria-labelledby="tab-break" hidden>
    <h2>A case that breaks my Zap</h2>
    <p class="lead"><strong>An RBA release that has nothing to do with the cash rate still triggers an alert.</strong></p>
    <div class="block">
      <dl class="facts">
        <dt>What I set up</dt>
        <dd>I pointed the trigger at the RBA media-releases feed (screenshot 1), which carries every media release the RBA publishes, not only rate decisions.</dd>

        <dt>What happened</dt>
        <dd>The Zap fired on &ldquo;Appointment of Chief Risk Officer&rdquo; (media release 2026-29, 14 Oct) and emailed it to me as an &ldquo;RBA Cash Rate Alert&rdquo; (screenshot 2). The email has no rate information in it, and the headline, link and date run together on one line.</dd>

        <dt>Why it breaks</dt>
        <dd>Nothing in the Zap checks whether a release is about the cash rate. The free plan has no filter step, so every item that appears in the feed becomes an email.</dd>

        <dt>Where the person catches it</dt>
        <dd>I read the headline before acting. A step that classifies each item as a rise, hold or cut would need a paid plan.</dd>
      </dl>
    </div>
    <p class="note">The same weakness shows up on the Google News feed: the keyword also matched stories that are not about a decision, such as &ldquo;The economic week in review&rdquo; (MacroBusiness) and &ldquo;I&rsquo;m not waiting for the &lsquo;RBA pivot&rsquo; to dive back into the ASX&rdquo; (AFR). See the &ldquo;Successful triggers&rdquo; tab.</p>
    <h3>Screenshots</h3>
    <div class="shots" id="shots-break"></div>
  </section>

  <!-- TAB 4: SUCCESSFUL TRIGGERS -->
  <section id="panel-runs" role="tabpanel" aria-labelledby="tab-runs" hidden>
    <h2>Successful triggers</h2>
    <p class="lead">Each screenshot is an alert email the Zap sent me after a new story appeared in the feed. Times are Singapore time (UTC+8), as shown in my inbox.</p>
    <div class="shots" id="runs-shots"></div>
    <p class="note">Email addresses and Zapier&rsquo;s &ldquo;stop these emails&rdquo; link are cropped out of the screenshots because this page is public.</p>
  </section>

  <!-- TAB 5: Q1, LOG, REFLECTION -->
  <section id="panel-q1" role="tabpanel" aria-labelledby="tab-q1" hidden>
    <h2>Q1: Where does my agent sit, and what does that mean for the person in the loop?</h2>
    <div class="block">
      <p><strong>(a) My quadrant.</strong> <em>AI alone, with checks.</em></p>

      <p><strong>(b) The two questions.</strong> The job is <strong>work with a right answer</strong>. The Zap either detects a new Google News story matching &ldquo;RBA cash rate&rdquo; or it doesn't, and the email either arrives with the correct headline, date and link or it doesn't. My test run passed that check: the email showed the right headline, date and link for the sample story. It is also <strong>work that either of them can do alone</strong>. Once published, the Zap runs with nobody involved, and a person could do the same job by watching the news. The runs also showed the limit of the Zap. My test stories included an ABC News headline about economists expecting the RBA to hold the cash rate, and earlier an RBA release about a senior appointment, so the keyword match is mechanical and says nothing about whether a story reports a rate rise.</p>

      <p><strong>(c) The person in the loop.</strong> I stay at the gate after the email arrives. I check whether the story actually reports a rate rise, since the feed also returns forecasts and commentary, and whether the rule-of-thumb estimate (about $16 a month per $100k borrowed for each 0.25-point rise) fits my own loan. The Zap may detect stories, format the email and send it to me, and nothing more. It may not decide what counts as a rise or change anything in my finances. It would move to <em>A person decides, AI alongside</em> if it started judging what a headline means or recommending what I should do about repayments, because that judgement has no single right answer. It would move to <em>Agents run it, a person judges</em> if it ran a longer process by itself, such as reading the RBA decision, working out my exact repayment and drafting a budget change for me to approve.</p>

      <p><strong>(d) My group's view.</strong> I agree with where my group placed its agents: all four Zaps sit in <em>AI alone, with checks</em>. Each Zap, as built, does a deterministic job with a result I can check, and it runs with nobody involved. The question I would answer differently is the second one, because it depends on what counts as the job: the notification or the decision. My takeaways:</p>
      <ul>
        <li><strong>The free plan puts every Zap in the same cell.</strong> One trigger and one action, with no filter or AI step, means a Zap can only do deterministic work with a checkable result. The shared placement says more about the tool's limits than about the four jobs.</li>
        <li><strong>The Zap's quadrant is not the whole job's quadrant.</strong> In all four, the real decision comes after the email or row arrives, and a person makes it: whether a story reports a rate rise (mine), whether to escalate a complaint (Shantanu), whether to book a fare (Haojia) and which internship to apply for (Chenxi). For my RBA alert and the complaints agent, the whole workflow arguably sits in <em>A person decides, AI alongside</em>.</li>
        <li><strong>&ldquo;With checks&rdquo; differs in weight.</strong> Haojia's Google Flights link is a true spot check before a costly booking, and Chenxi reads the new rows each morning. For mine and Shantanu's, a person reads every output. Shantanu's test case TEST-1005, a Critical complaint that was already resolved, shows a fact the decision needs that the automation did not carry.</li>
        <li><strong>Successful runs are not the same as useful runs.</strong> None of my five runs reported a new rate rise, which is correct because the RBA has not changed the rate since the 30 September hike to 4.60%. The Zap still counted as successful because success meant &ldquo;fired and delivered&rdquo;.</li>
        <li><strong>What would move them.</strong> Adding an AI step that classifies or judges, which needs a paid plan, would move an agent toward <em>Agents run it, a person judges</em> or <em>A person decides, AI alongside</em>.</li>
      </ul>
    </div>

    <h2>Collaboration log</h2>
    <div class="block">
      <dl class="facts">
        <dt>What I delegated to AI</dt>
        <dd>Designing the two-step free-plan Zap (RSS trigger, email action), writing the HTML body of the email and the code of this page, and drafting my Q1 answer.</dd>

        <dt>What I checked, and how</dt>
        <dd>I tested the trigger and the email action in Zapier and compared the test email's headline, date and link with the feed sample. I read the Zapier field mappings the AI suggested against what the editor actually offered.</dd>

        <dt>One AI error I caught</dt>
        <dd>The AI first pointed me to the RBA media-release feed, which publishes only a few items a month, so it would not have fired before class. I caught this because the next RBA decision is in November, and we switched the trigger to a Google News search feed.</dd>

        <dt>Time and cost</dt>
        <dd>About 2 hours of working with the AI. Cost: $0, on Zapier's free plan with no card.</dd>
      </dl>
    </div>

    <h2>Reflection</h2>
    <p class="reflect">The agent fitted the job where it only had to spot a new keyword-matched story and send me a consistent email without anyone involved. It failed on meaning: the keyword also matched stories about forecasts and holds, so it could not tell a real rate rise from commentary. I would add a step that classifies each story as a rise, hold or cut (which needs a paid Zapier plan), and I would also add another mortgage repayment calculator and a section on the potential CPI inflation impact on groceries and daily spending for the fully loaded impact, while keeping myself as the person who checks the result before acting.</p>
  </section>

  <p class="note">Public page: no email addresses, client data or keys. Estimates are rough rules of thumb, not financial advice. The Zap is turned off after class on Wednesday 21 October.</p>
</main>

<script>
/*
  EDIT ONLY THESE TWO LISTS TO ADD OR CHANGE SCREENSHOTS.
  1. Upload the image into the repository.
  2. Add a line { file: "your-file.png", caption: "..." } to the right list.
  Crop out email addresses and the Zapier "stop these emails" link before uploading.
*/
const breakShots = [
  { file: "break-1-feed-url.png", caption: "Screenshot 1. Step 1 of the Zap: the Feed URL is the RBA media-releases feed." },
  { file: "break-2-email.png", caption: "Screenshot 2. The alert email for “Appointment of Chief Risk Officer” (17:01, 18 Oct): no rate information, and headline, link and date run together." }
];

const runs = [
  { file: "day1-0004-yahoo.png", caption: "Sun 18 Oct · 00:04 · Yahoo Finance Australia: “RBA interest rate decision live” (story dated 11 Aug)" },
  { file: "day1-0053-smh.png", caption: "Sun 18 Oct · 00:53 · SMH: “ASX claws back most of its early losses after rate hike fears ease”" },
  { file: "day1-0230-seekingalpha.png", caption: "Sun 18 Oct · 02:30 · Seeking Alpha: “RBA September Minutes: Unanimous 25bps rate hike to 4.6%”" },
  { file: "day1-1032-afr.png", caption: "Sun 18 Oct · 10:32 · AFR: “I’m not waiting for the ‘RBA pivot’ to dive back into the ASX”" },
  { file: "day1-1216-macrobusiness.png", caption: "Sun 18 Oct · 12:16 · MacroBusiness: “The economic week in review”" }
];

function el(tag, cls, text) {
  const e = document.createElement(tag);
  if (cls) e.className = cls;
  if (text !== undefined) e.textContent = text;
  return e;
}

function figure(shot) {
  const fig = el("figure");
  const a = el("a");
  a.href = shot.file;
  a.target = "_blank";
  a.rel = "noopener";
  a.title = "Open full size";
  const img = el("img");
  img.src = shot.file;
  img.alt = shot.caption;
  img.loading = "lazy";
  a.appendChild(img);
  fig.appendChild(a);
  fig.appendChild(el("figcaption", "", shot.caption));
  return fig;
}

const breakHost = document.getElementById("shots-break");
breakShots.forEach(function (s) { breakHost.appendChild(figure(s)); });

const runsHost = document.getElementById("runs-shots");
runs.forEach(function (s) { runsHost.appendChild(figure(s)); });

/* Tabs */
const tabBar = document.getElementById("tabs");
const tabs = [
  { id: "quadrant", label: "Quadrant" },
  { id: "card", label: "Five-line card" },
  { id: "break", label: "Case that breaks it" },
  { id: "runs", label: "Successful triggers" },
  { id: "q1", label: "Q1, log and reflection" }
];

function activate(id, moveFocus) {
  tabs.forEach(function (t) {
    const on = t.id === id;
    t.btn.setAttribute("aria-selected", on ? "true" : "false");
    t.btn.tabIndex = on ? 0 : -1;
    t.panel.hidden = !on;
    if (on && moveFocus) t.btn.focus();
  });
  try { history.replaceState(null, "", "#" + id); } catch (e) { /* ignore */ }
}

tabs.forEach(function (t, idx) {
  t.panel = document.getElementById("panel-" + t.id);
  const b = el("button", "tab", t.label);
  b.type = "button";
  b.id = "tab-" + t.id;
  b.setAttribute("role", "tab");
  b.setAttribute("aria-controls", t.panel.id);
  b.addEventListener("click", function () { activate(t.id, false); });
  b.addEventListener("keydown", function (e) {
    let next = -1;
    if (e.key === "ArrowRight") next = (idx + 1) % tabs.length;
    else if (e.key === "ArrowLeft") next = (idx - 1 + tabs.length) % tabs.length;
    else if (e.key === "Home") next = 0;
    else if (e.key === "End") next = tabs.length - 1;
    if (next >= 0) { e.preventDefault(); activate(tabs[next].id, true); }
  });
  t.btn = b;
  tabBar.appendChild(b);
});

const wanted = (location.hash || "").slice(1);
activate(tabs.some(function (t) { return t.id === wanted; }) ? wanted : "quadrant", false);
</script>
</body>
</html>
