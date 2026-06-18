---
layout: default
---

# GenAI From Scratch — Topic Notes

Minimal reference notes organized by the **GenAI From Scratch** roadmap. Each section contains topic-based notes built from the best resources available (3Blue1Brown, Karpathy, original papers, etc.).

> _Every topic you read about, implement it. Read about attention → code attention. Read about VAEs → train one._

## Phase 1: Math Foundations

- [Linear Algebra]({{ site.baseurl }}/topics/phase-1-math-foundations/linear-algebra/) — Vectors, span, linear combinations, basis, matrices, eigendecomposition, SVD
- [Calculus]({{ site.baseurl }}/topics/phase-1-math-foundations/calculus/) — Derivatives, gradients, chain rule, Jacobians, partial derivatives
- [Probability & Statistics]({{ site.baseurl }}/topics/phase-1-math-foundations/probability-stats/) — Distributions, Bayes' rule, KL divergence, entropy, hypothesis testing
- [Optimization]({{ site.baseurl }}/topics/phase-1-math-foundations/optimization/) — Gradient descent, SGD, Adam, convexity, Lagrange multipliers, KKT conditions

## Phase 2: ML & Neural Net Fundamentals

- [Neural Nets from Scratch]({{ site.baseurl }}/topics/phase-2-ml-neural-nets/) — Forward pass, backprop, loss functions (NumPy)
- [PyTorch Fundamentals]({{ site.baseurl }}/topics/phase-2-ml-neural-nets/pytorch/) — Tensors, autograd, nn.Module, DataLoader
- [Training Dynamics]({{ site.baseurl }}/topics/phase-2-ml-neural-nets/training/) — Overfitting, dropout, batch norm, weight init, LR schedules

## Phase 3: Sequence Models & Transformers

- [RNNs, LSTMs, GRUs]({{ site.baseurl }}/topics/phase-3-transformers/rnns/) — Sequential processing, vanishing gradients, gating
- [Attention Mechanism]({{ site.baseurl }}/topics/phase-3-transformers/attention/) — Scaled dot-product, multi-head, positional encoding
- [Build a GPT]({{ site.baseurl }}/topics/phase-3-transformers/build-gpt/) — Character/word-level transformer language model end-to-end

## Phase 4: Generative Models Deep Dive

- [VAEs]({{ site.baseurl }}/topics/phase-4-generative-models/vae/) — Latent spaces, ELBO, reparameterization trick
- [GANs]({{ site.baseurl }}/topics/phase-4-generative-models/gans/) — Min-max game, discriminator vs generator, DCGAN
- [Diffusion Models (DDPM)]({{ site.baseurl }}/topics/phase-4-generative-models/diffusion/) — Forward noising, reverse denoising, U-Net
- [LLM Training Pipeline]({{ site.baseurl }}/topics/phase-4-generative-models/llm-training/) — Pre-training, SFT, RLHF, DPO

## Phase 5: Build Your Capstone Project

- [Capstone Guide]({{ site.baseurl }}/topics/phase-5-capstone/) — Pick a model, scale experiments, write it up
