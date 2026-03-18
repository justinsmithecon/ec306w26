# EC306 Slide Deck Review — Issues to Address

Generated 2026-03-16. Items to fix after the semester ends.

---

## lmarket — Wages and Employment in a Single Labour Market

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 378–382 | Moderate | "Revenue contributed by workers is $VMP_m \times N_m$" is misleading. VMP is declining, so total revenue from $N_m$ workers is the area under the VMP curve, not $VMP_m \times N_m$. Similarly, "Monopsony profit = $(VMP_m - W_m) \times N_m$" understates actual surplus. Consider clarifying this is a rectangle approximation from the graph, not total profit. |
| 2 | 399 | Minor | "Vacancies are $V_m - S_m$" — monopsonists deliberately restrict employment, so "vacancies" is non-standard here. "Employment gap" or "unrealized hiring" would be clearer. |
| 3 | 508–509 | Minor | CPI data for 2025 is a duplicate of 2024 (both 160.9). Update when actual 2025 CPI is available. |
| 4 | 512, 535 | Minor | `geom_line(size = 1)` deprecated in ggplot2 3.4+; use `linewidth = 1`. |
| 5 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. |

---

## lsupply2 — Labour Supply 2

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 679 | **High** | "14 hours" should be "14 **weeks**" — the entire EI section uses weeks as the time unit. |
| 2 | 998 | **High** | "Person with reservation wage **above** wage + costs" — direction is backwards. If reservation wage is above the wage, the person would not work. Should say "below." |
| 3 | 1043 vs 963 | Moderate | Inconsistent dates for Quebec child care: line 963 says "since 1997," line 1043 says "Implemented in 2000." Consider reconciling (e.g., "Began 1997, fully rolled out by 2000"). |
| 4 | 639 | Minor | Switches from 55% EI rate (stated as fact on line 627) to 60% for the simplified model without a bridging note. Add "(we use 60% for simplicity)." |
| 5 | 1047 | Minor | Quebec child care fee figures ($8.25–$21.45) may be outdated for 2026. Verify against current rates. |

---

## lsupply3 — Labour Supply 3

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 307, 315, 318 | Moderate | `C1` should be `C_1` in LaTeX (missing underscore in three places). |
| 2 | 220 | Minor | Typo: "cconomic" should be "economic." |
| 3 | 702 | Minor | "Income effect: higher price → higher lifetime income → more children" — "higher price" is confusing in context; should say "higher wage" to distinguish from the substitution effect framing on the same slide. |
| 4 | 364, 392, 418 | Minor | Same image (`clipboard-4190551247.png`) used for three distinct wage-change scenarios (permanent, anticipated, temporary unanticipated). May confuse students if they expect different diagrams. |
| 5 | 895–896, 905 | Minor | Mixed reference years for pension amounts: OAS figures are from 2024, CPP figure is from 2025. Either update all to current or label consistently. |

---

## ldemand1 — Labour Demand 1

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 108 | Moderate | Production function uses $F(K, N)$ but capital should be $K_0$ (fixed in the short run): should be $pF(K_0, N) - wN - rK_0$. Also inconsistent case: line 86 uses lowercase $f$, line 108 uses uppercase $F$. |
| 2 | 652–653, 884 | Minor | Claims "only scale effect" operates in the short run. Technically, with fixed capital the firm moves along the VMP curve due to diminishing marginal product — this is distinct from the long-run scale effect that involves re-optimizing output through cost minimization. Consider softening the language. |

---

## ldemand2 — Labour Demand 2

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 289–290 | Minor | "Quasi-fixed costs shift $VMP$ curve down" is slightly ambiguous — the VMP curve doesn't shift; a separate $VMP - (H+T)$ curve lies below it. |
| 2 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. |

---

## hcapital — Human Capital

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 560 | **High** | Welfare comparison inverted: "Type H worse off **unless** $s^* > 2q$" should be "worse off **if** $s^* > 2q$." The logic is flipped — Type H net payoff under separation is $2 - s^*/2$, which is below pooling payoff $2 - q$ when $s^*/2 > q$, i.e., $s^* > 2q$. |
| 2 | 560 | Moderate | Says Type H "are paid $2 - s^*/2$" — they are **paid** $2$ but their **net payoff** is $2 - s^*/2$ after education costs. "Paid" is misleading. |
| 3 | 599 | Moderate | Potential experience defined as $age - schl - 5$; the standard Mincer formula uses 6 (school entry at age 6). Using 5 is defensible in some Canadian contexts (JK at age 5), but non-standard relative to most textbooks. Verify intent. |
| 4 | 77, 103, 128 | Minor | Statistics Canada table number formatted as `141-00020` instead of standard `14-10-0020-01`. Could confuse someone looking it up. |
| 5 | 71, 96, 121, 685 | Minor | `geom_line(size = 1.2)` deprecated; use `linewidth = 1.2`. |
| 6 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. |

---

## discrim — Discrimination

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 546 | **High** | "The wage gap is about 0.68 log points — roughly 68% higher wages for men" — 0.68 log points is $e^{0.68} - 1 \approx 97\%$ higher, not 68%. The log-to-percentage approximation only works for small values. |
| 2 | 124 | Moderate | Inconsistent variable: uses `w_f` here but `w_w` (subscript $w$ for women) on lines 109 and 120. Should be consistent. |
| 3 | 663 | Moderate | R boxplot x-axis label says "Schooling Level" but the variable plotted is `prov` (Province). Should be `x = "Province"`. |
| 4 | 206–207 | Minor | Double `##` heading ("Statistical Discrimination" then "Theory") creates a blank slide. Remove one or make line 206 a section divider (`#`). |
| 5 | 487–489 | Minor | Missing multiplication operator between $\hat\beta$ and $\bar{X}$ in Oaxaca-Blinder equations. Add `\cdot` for clarity. |
| 6 | 789 | Minor | "Women earn about 60% of what men earn" — recent Canadian data puts the unconditional hourly wage ratio closer to 70–75%. The 60% figure may refer to annual earnings (including hours). Consider qualifying. |
| 7 | 139–141 | Minor | MRP subscripts $MRP_{ND}$ and $MRP_D$ are misleading — the MRP curve doesn't change between cases; the effective cost changes. |
| 8 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. |

---

## intro — Introduction

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 533–540 | **High** | Text contradicts itself: says "Right graph shows long term care paying more" but then says "nurses move from long term care to hospitals." If LTC pays more, nurses should move **to** LTC. Direction of movement and employment changes are internally inconsistent. |
| 2 | 532 | Minor | Typo: "temprary" → "temporary." |
| 3 | 548 | Minor | Grammar: "explore situation in course" → "explore **situations** in **the** course." |
| 4 | 621 | Minor | "How long to people typically stay unemployed" — "to" should be "do"; missing question mark. |
| 5 | ~206–208 | Minor | R code: `pivot_wider` uses `values_from = c(mean, share)` but after `pivot_longer` with `names_sep = "_"`, the column may be named `share_pos`, not `share`. Potential bug — worth testing. |

---

## lsupply1 — Labour Supply 1

| # | Line(s) | Severity | Issue |
|---|---------|----------|-------|
| 1 | 753 | Moderate | "Graph to the right shows how this would happen" — the graph is in the **left** column. Should say "Graph to the left." |
| 2 | 467 | Minor | Typo: "They make only be able" → "They **may** only be able." |
| 3 | 629 | Minor | Missing space after `-` breaks Markdown bullet: `-If` → `- If`. |
| 4 | 819 | Minor | Typo: "substition" → "substitution." |
| 5 | 978 | Minor | Typo: "non-laboir" → "non-labour." |
| 6 | 978 | Minor | "slope if reservation wage" → "slope **of** reservation wage." |
| 7 | 1026 | Minor | Typo: "occured" → "occurred." |
| 8 | 1151 | Minor | Typo: "Becauses" → "Because." |
| 9 | 1154 | Minor | Missing word: "chooses to less" → "chooses to **work** less." |
| 10 | 113, 163, 191 | Minor | `geom_line(size = ...)` deprecated; use `linewidth`. |

---

## Global Issues (all edited decks)

| Issue | Decks affected |
|-------|---------------|
| Hex logo `top="300"` should be `top="275"` | lmarket, ldemand2, hcapital, discrim (check all) |
| `geom_line(size = ...)` deprecated in ggplot2 3.4+ | lmarket, lsupply1, hcapital (any deck with R code) |
