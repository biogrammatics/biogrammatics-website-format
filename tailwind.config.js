/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/views/**/*.{erb,html}", "./app/helpers/**/*.rb", "./app/javascript/**/*.js"],
  theme: {
    extend: {
      colors: {
        brand: {
          bg: "#0b1220",         // page background (very dark blue-gray)
          surface: "#111827",    // cards/nav
          border: "#1f2937",
          text: "#f8fafc",
          muted: "#cbd5e1",
          accent: "#10b981",     // primary accent (emerald)
          accentHover: "#34d399" // hover accent
        }
      },
      fontFamily: {
        display: ["'Space Grotesk'", "Inter", "system-ui", "ui-sans-serif", "Segoe UI", "Roboto", "Helvetica", "Arial"],
        sans: ["Inter", "system-ui", "ui-sans-serif", "Segoe UI", "Roboto", "Helvetica", "Arial"]
      },
      fontSize: {
        "hero": ["3.75rem", { lineHeight: "1.1", letterSpacing: "-0.01em" }], // 60px
        "h2": ["2.5rem", { lineHeight: "1.15" }], // 40px
        "h3": ["1.5rem", { lineHeight: "1.25" }], // 24px
        "body": ["1.125rem", { lineHeight: "1.75" }], // 18px
        "small": ["0.875rem", { lineHeight: "1.5" }]
      },
      container: {
        center: true,
        padding: "1rem"
      },
      spacing: {
        "section": "5rem" // default vertical rhythm
      }
    }
  },
  plugins: []
};
