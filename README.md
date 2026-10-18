# RBA Cash Rate Alert - Jo Yeong

A small static page about my individual Zapier agent. It has five tabs:

1. **Quadrant**: the course's two-by-two map with my Zap marked in *AI alone, with checks*.
2. **Five-line card**: trigger, action, filtering, output and off switch.
3. **Case that breaks it**: one input that makes the Zap send a useless alert, with screenshots.
4. **Successful triggers**: screenshots of alert emails the Zap sent, showing it has run successfully.
5. **Q1, log and reflection**: my Q1 answer, the collaboration log and the reflection.

## How to add screenshots

1. Upload the image into the folder (GitHub: **Add file > Upload files**).
2. Open `index.html`, find the `runs` list (or `breakShots`) inside the `<script>` tag, and add a line such as:
   `{ file: "run-example.png", caption: "Mon 19 Oct · 09:00 · Source: headline" }`
3. Commit. Vercel redeploys automatically.

## Keep it safe (this repository is public)

- Crop out email addresses and Zapier's "Visit this link to stop these emails" footer (its link contains a token) before uploading a screenshot.
- No client data, API keys or the exported Zap history JSON file.
- Turn the Zap off after class on Wednesday 21 October.
