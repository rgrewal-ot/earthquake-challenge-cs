# Earthquake Dashboard Challenge

**Time limit: 2 hours** | **Goal: complete as many issues as possible**

## The goal

Build a **real-time earthquake monitoring dashboard** that visualises seismic activity worldwide.

Your finished product should:

1. Display earthquakes on an interactive map
2. Show earthquake details (magnitude, location, depth, time)
3. Filter earthquakes by magnitude, time range, or region
4. Show statistics (total count, average magnitude, strongest quake)
5. Highlight significant earthquakes and tsunami warnings
6. Auto-refresh with new data
7. Bonus: be deployed and accessible via a URL (only if your setup allows it)

**How you build it is entirely up to you.** Choose your own stack, architecture and approach.

## Getting started (recommended): clone and go

You only need git and Codex. No GitHub account required.

1. Clone this repo:

   ~~~
   git clone https://github.com/rgrewal-ot/earthquake-challenge-cs.git
   cd earthquake-challenge-cs
   ~~~

2. Open the folder in Codex (ChatGPT app → Codex → open folder, or run `codex` in the terminal).
3. Keep the mode on **Ask for approval**.
4. Open `ISSUES.md`, pick an issue and ask Codex to plan it first, for example:

   > Read ISSUES.md and issues/001-*.md, then plan how to implement issue #1.

5. When a feature works, commit it and tick the issue in `ISSUES.md`.

Your work stays on your laptop. That is all you need for the challenge: you show your result by sharing your screen.

**Do not run `scripts/create-issues.sh` in this plain clone.** It would point at this shared repo, not at your own.

## The issues

All issues are in this repo, so you have them as soon as you clone:

- `ISSUES.md`: the checklist with points per issue
- `issues/`: one file per issue with the full description

## Optional: your own GitHub repo with real GitHub issues

Use this if you want to push your work to GitHub and close issues there. You need a GitHub account and the GitHub CLI (`gh`).

**1. Install and log in to `gh` (once)**

- macOS: `brew install gh`
- Windows: `winget install GitHub.cli`
- Linux: see https://cli.github.com

~~~
gh auth login
~~~

Choose GitHub.com → HTTPS → log in with browser.

**2. Create your own private repo**

Either from your existing clone (keeps everything you have done so far):

~~~
git remote rename origin upstream
gh repo create earthquake-challenge-cs --private --source . --remote origin --push
~~~

Or start fresh: on GitHub click **Use this template** → **Create a new repository**, choose your account, set it to **Private**, create it, then clone your copy.

**3. Check that you are in your own repo**

~~~
gh repo view --json nameWithOwner -q .nameWithOwner
~~~

This must show **your** username, not the shared repo.

**4. Run the script to create the issues**

From the repo root:

~~~
./scripts/create-issues.sh
~~~

- On Windows, run it in **Git Bash**.
- If you get "permission denied", run `bash scripts/create-issues.sh` instead.
- It prints one line per issue and ends with `Done: … issues.`

**5. Check the result**

Open the **Issues** tab of your repo: you should see all issues with their point labels. From now on, close issues there instead of ticking `ISSUES.md`.

Good to know:

- Run the script **once, right after creating your repo**, before you open any pull request. Issues and pull requests share one numbering on GitHub, so later runs would shift the numbers.
- The script stops if your repo already has issues, so running it twice does not create duplicates.
- Labels are created in GitHub's default colour.

## The data

USGS provides free, real-time earthquake data as GeoJSON feeds:

| Feed          | URL |
| ------------- | --- |
| Last hour     | `https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson` |
| Last 24 hours | `https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson` |
| Last 7 days   | `https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.geojson` |

See [DATA.md](DATA.md) for detailed field documentation.

## Rules

1. **Work in your own clone or your own repo.**
2. **Complete issues by implementing them**: commit your code, then tick the issue in `ISSUES.md` (or close it, if you use GitHub issues).
3. **Be honest**: only tick an issue when the feature actually works.
4. **Any stack is allowed**: plain HTML/JS, React, Vue, Python, Node … your choice.
5. **Use Codex**, but you still need to understand and verify your code.

## Scoring

Each completed issue earns points (see the label in `ISSUES.md`):

- `1-point`: quick wins
- `2-points`: core features
- `3-points`: advanced features
- `5-points`: bonus challenges

## Deployment

No cloud credentials are provided. Running the dashboard locally (open `index.html` or start a local server) is enough. Deployment is a bonus, only if your setup allows it.

Good luck!
