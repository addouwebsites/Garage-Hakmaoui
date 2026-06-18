---
name: Hakmaoui Precision
colors:
  surface: '#f8f9fa'
  surface-dim: '#d9dadb'
  surface-bright: '#f8f9fa'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f4f5'
  surface-container: '#edeeef'
  surface-container-high: '#e7e8e9'
  surface-container-highest: '#e1e3e4'
  on-surface: '#191c1d'
  on-surface-variant: '#44474a'
  inverse-surface: '#2e3132'
  inverse-on-surface: '#f0f1f2'
  outline: '#75777a'
  outline-variant: '#c5c6ca'
  surface-tint: '#5d5e61'
  primary: '#000101'
  on-primary: '#ffffff'
  primary-container: '#1a1c1e'
  on-primary-container: '#838486'
  inverse-primary: '#c6c6c9'
  secondary: '#5b5f63'
  on-secondary: '#ffffff'
  secondary-container: '#e0e2e8'
  on-secondary-container: '#616569'
  tertiary: '#000000'
  on-tertiary: '#ffffff'
  tertiary-container: '#370e00'
  on-tertiary-container: '#e45400'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#e2e2e5'
  primary-fixed-dim: '#c6c6c9'
  on-primary-fixed: '#1a1c1e'
  on-primary-fixed-variant: '#454749'
  secondary-fixed: '#e0e2e8'
  secondary-fixed-dim: '#c4c6cc'
  on-secondary-fixed: '#181c20'
  on-secondary-fixed-variant: '#44474b'
  tertiary-fixed: '#ffdbce'
  tertiary-fixed-dim: '#ffb599'
  on-tertiary-fixed: '#370e00'
  on-tertiary-fixed-variant: '#7f2b00'
  background: '#f8f9fa'
  on-background: '#191c1d'
  surface-variant: '#e1e3e4'
typography:
  headline-xl:
    fontFamily: Inter
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Inter
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '700'
    lineHeight: 32px
  headline-md:
    fontFamily: Inter
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  label-caps:
    fontFamily: JetBrains Mono
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
    letterSpacing: 0.1em
  button:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 20px
    letterSpacing: 0.02em
rounded:
  sm: 0.125rem
  DEFAULT: 0.25rem
  md: 0.375rem
  lg: 0.5rem
  xl: 0.75rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  container-max: 1280px
  gutter: 24px
---

## Brand & Style
The design system is built on the pillars of **reliability, precision, and transparency**. It serves Garage Hakmaoui by bridging the gap between rugged automotive industrialism and modern digital professionalism. The aesthetic is rooted in **Modern Minimalism** with a technical, industrial edge.

The target audience is vehicle owners in Mohammedia who value technical expertise and clear communication. The UI evokes a sense of "digital grease"—clean, efficient, and methodical. High-quality whitespace is used to ensure the interface never feels cluttered, mirroring the organized environment of a high-end workshop. 

Key visual drivers include:
- **Clarity over Decoration:** Every element has a functional purpose.
- **Technical Precision:** Subtle hairlines and strict grid alignment represent mechanical accuracy.
- **Industrial Accents:** Vibrant color is reserved for movement and action, mirroring safety markings in a professional garage.

## Colors
The palette is dominated by the "Deep Charcoal" and "Metallic Silver" to establish a professional, heavy-duty foundation. 

- **Deep Charcoal (#1A1C1E):** Used for primary text, headers, and core structural elements to provide a sense of weight and authority.
- **Metallic Silver (#8E9196):** Employed for secondary text, borders, and icons, bridging the gap between the dark charcoal and the light background.
- **Safety Orange (#FF5F00):** Used exclusively for high-priority actions (CTAs), critical status indicators, and progress tracking. It should be used sparingly to maintain its impact.
- **Surface Neutral (#F8F9FA):** A cool, slightly blue-tinted light gray for page backgrounds to reduce eye strain and provide a "clean shop" feel.

## Typography
This design system utilizes **Inter** as the primary typeface for its exceptional legibility and neutral, systematic appearance. For technical details—such as VIN numbers, parts specifications, or service timestamps—**JetBrains Mono** is introduced to provide a distinctive "data-driven" look that reinforces the garage's technical precision.

Headlines should use tight letter spacing and heavy weights to appear impactful and sturdy. Body text maintains generous line height for readability. Labels use an uppercase monospaced style to mimic industrial labeling and technical diagrams.

## Layout & Spacing
The layout follows a **Fixed Grid** model on desktop (12 columns) and a **Fluid Grid** on mobile (4 columns). 

- **Desktop:** 12-column grid with a 1280px max-width, 24px gutters, and 48px side margins.
- **Mobile:** 4-column grid with 16px gutters and 20px side margins.

Spacing follows a strict 8px base unit. Component internal padding should be generous to maintain the minimalistic "breathable" feel. Large sections (e.g., Hero to Services) should be separated by `xl` (80px) spacing to emphasize distinct phases of the user journey.

## Elevation & Depth
Depth in this design system is conveyed through **Low-contrast outlines** rather than heavy shadows. This maintains the "clean industrial" look.

- **Level 0 (Base):** Background color `#F8F9FA`.
- **Level 1 (Cards/Containers):** White background with a 1px solid border in `#E9ECEF`. No shadow.
- **Level 2 (Active/Hover):** White background with a 1px solid border in `#8E9196`. A very soft, subtle 4px ambient blur (0, 2px, 4px, rgba(0,0,0,0.05)) can be applied to indicate interactivity.
- **Overlay (Modals/Dropdowns):** White background with a 1px border and a medium-diffused shadow to separate the element from the technical grid below.

## Shapes
The shape language is **Soft (0.25rem)**. While a garage is an industrial environment, the digital interface needs to feel modern and accessible. 

- **Standard Elements:** 4px (0.25rem) border radius for buttons, inputs, and small cards.
- **Large Containers:** 8px (0.5rem) border radius for primary section cards.
- **Status Pills:** Fully rounded (pill-shaped) to distinguish them from actionable buttons.

## Components
- **Buttons:** Primary buttons use the Safety Orange background with white text. Secondary buttons use a charcoal outline with charcoal text. For "Danger" actions, use a subtle red tint, but prioritize Orange for "Action".
- **Input Fields:** Use a 1px border in Metallic Silver. On focus, the border shifts to Charcoal with a 1px thickness. Labels sit strictly above the field in the `label-caps` monospaced style.
- **Service Cards:** Use Level 1 elevation. Feature a crisp, 24px stroke icon in Charcoal. Titles are `headline-md`, and descriptions are `body-md`.
- **Status Indicators:** For vehicle repair tracking (e.g., "In Progress", "Parts Ordered"), use small chips with a light gray background and a 4px colored dot (Orange for active, Green for done, Silver for pending).
- **Progress Trackers:** A horizontal line system using the Safety Orange to show the "Current Stage" of a repair, reinforcing the theme of transparency.
- **Lists:** Technical specs (e.g., labor costs, part numbers) should use JetBrains Mono for the values to ensure vertical alignment and a "receipt" or "log" aesthetic.