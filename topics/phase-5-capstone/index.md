---
layout: page
title: Phase 5 — Build Your Capstone Project
---

# Phase 5: Build Your Capstone Project

Train, evaluate, and document a complete ML/DL project.

## Guide

### 1. Pick a model to build end-to-end

Options:
- Small GPT-2-scale LM on a dataset you care about
- DDPM image generator
- VAE for audio/music
- Character-level model for code generation

Scope it to train on a single GPU.

**Datasets:**
- [Hugging Face Hub](https://huggingface.co/datasets)
- [Kaggle datasets](https://www.kaggle.com/datasets)
- [The Pile (open LLM training data)](https://github.com/EleutherAI/the-pile)

### 2. Evaluation & scaling experiments

Track perplexity, FID score, or loss curves. Run two or three scaling experiments: double the parameters and measure improvement. Use [Weights & Biases](https://wandb.ai/) (free for personal use) for experiment tracking.

**Papers to read:**
- [Scaling Laws for Neural Language Models (Kaplan)](https://arxiv.org/abs/2001.08361)
- [Chinchilla scaling laws](https://arxiv.org/abs/2203.15556)

### 3. Write it up and share

A blog post, GitHub repo with a clear README, or a paper-style writeup. Explaining what you built — the architecture, training choices, what failed — is the final proof of understanding.

**Where to share:**
- [Distill.pub — gold standard for ML explainers](https://distill.pub/)
- [The Gradient — ML blog for practitioners](https://thegradient.pub/)
- [arXiv cs.LG for reading peers' work](https://arxiv.org/list/cs.LG/recent)

---

> _The one rule: Every topic you read about, implement it. Read about attention → code attention. Read about VAEs → train one. The math-to-implementation loop is the whole point._
