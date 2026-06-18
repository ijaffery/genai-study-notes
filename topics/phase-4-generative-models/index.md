---
layout: page
title: Phase 4 — Generative Models Deep Dive
---

# Phase 4: Generative Models Deep Dive

Learn to generate data — images, audio, text — from learned latent spaces.

## Topics

- [**VAEs (Variational Autoencoders)**](vae/) — Latent spaces, ELBO objective, reparameterization trick, encoder-decoder architecture
- [**GANs (Generative Adversarial Networks)**](gans/) — Min-max game, discriminator vs generator, training instabilities, mode collapse
- [**Diffusion Models (DDPM)**](diffusion/) — Forward noising process, reverse denoising, score matching, U-Net backbone
- [**LLM Training Pipeline**](llm-training/) — Pre-training → SFT → RLHF/DPO

## Resources

| Topic | Resources |
|-------|-----------|
| VAEs | [Auto-Encoding Variational Bayes (Kingma & Welling)](https://arxiv.org/abs/1312.6114) · [Lilian Weng: VAE tutorial](https://lilianweng.github.io/posts/2018-08-12-vae/) · [PyTorch VAE example](https://github.com/pytorch/pytorch/tree/master/examples/vae) |
| GANs | [Generative Adversarial Nets (Goodfellow 2014)](https://arxiv.org/abs/1406.2661) · [DCGAN paper](https://arxiv.org/abs/1511.06434) · [PyTorch GAN implementations](https://pytorch.org/tutorials/beginner/dcgan_discriminator.html) |
| Diffusion | [Denoising Diffusion Probabilistic Models (Ho et al.)](https://arxiv.org/abs/2006.11239) · [Annotated Diffusion (Hugging Face)](https://huggingface.co/learn/diffusion-models-course/unit0) · [Lilian Weng: Diffusion explained](https://lilianweng.github.io/posts/2021-07-11-diffusion-models/) |
| LLM Training | [InstructGPT paper (OpenAI)](https://arxiv.org/abs/2203.02155) · [llm.c (Karpathy)](https://github.com/karpathy/llm.c) · [Hugging Face NLP course](https://huggingface.co/learn/nlp-course) · [TRL library](https://huggingface.co/docs/trl) |
