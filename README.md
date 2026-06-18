# GenAI From Scratch — Topic Notes

Minimal topic-based notes organized by the [GenAI From Scratch](https://github.com/) roadmap — from math foundations to building your own generative models.

## Quick Start

```bash
# Jekyll is already installed
# Build and serve:
cd D:/Code/genai-study-notes
jekyll serve
# Then open: http://localhost:4000/
```

## Structure

```
linear-algebra-notes/
├── _config.yml                    # Jekyll configuration (MathJax for math)
├── _layouts/
│   ├── default.html               # Base layout with MathJax
│   ├── concept.html               # Concept note layout
│   ├── page.html                  # Topic landing page layout
│   └── post.html                  # Blog post layout
├── assets/css/main.css            # Minimal styling
├── topics/                        # All notes organized by roadmap phase
│   ├── phase-1-math-foundations/  # Linear Algebra, Calculus, Prob/Stats, Optimization
│   ├── phase-2-ml-neural-nets/    # Neural Nets from Scratch, PyTorch, Training
│   ├── phase-3-transformers/      # RNNs, Attention, Build a GPT
│   ├── phase-4-generative-models/ # VAEs, GANs, Diffusion, LLM Training
│   └── phase-5-capstone/          # Capstone project guide
├── index.md                       # Landing page
├── Gemfile
└── README.md
```

## Adding New Notes

1. Create a new `.md` file in the appropriate `topics/<phase>/<topic>/` folder
2. Use the `concept` layout for detailed notes: `layout: concept`
3. Use the `page` layout for topic landing pages: `layout: page`
4. Images go in `topics/<phase>/<topic>/images/` — reference them as `/topics/<phase>/<topic>/images/...`

## Tech Stack

- **Math rendering:** MathJax 3 (handles TeX natively)
- **Markdown processor:** kramdown
- **CSS:** Custom minimal styles
- **Server:** Jekyll static site generator
