# New Semester Slide Update

Update the EC306 slide decks for a new semester. The user will tell you the new semester name (e.g. "Fall 2026").

## What to do

1. **Ask the user** for the new semester string (e.g. "Fall 2026" or "Winter 2027") if they haven't provided it.

2. **Update `_variables.yml`** — change `course.semester`, `course.dates`, and `course.copyright_year`.

3. **For each of the 7 edited decks** (`lsupply2`, `lsupply3`, `ldemand1`, `ldemand2`, `lmarket`, `hcapital`, `discrim`):
   - Update the semester string in the title slide `<h2>` tag
   - Ensure the hex logo uses `top="275"` (not `top="300"`)
   - Apply the formatting and clarity changes described in CLAUDE.md:
     - "Today we will:" goals format
     - Compact bullet formatting (no blank lines between items)
     - Colored key terms using `.fg style=`
     - Callout boxes for key definitions and important results

4. **Leave untouched**: `intro`, `lsupply1`, and `content/introtostata.qmd`

## Reference
Use the patterns and colour codes documented in `CLAUDE.md`.
When in doubt, compare with the current semester's edited decks as the gold standard.
