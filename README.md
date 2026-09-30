# DevOpsLearn

Учебный проект: персональный сайт-портфолио, реализованный через полный SDLC/DevOps workflow — от идеи до production, с CI/CD, Docker и Infrastructure as Code.

## Overview

Статический сайт-портфолио (о себе, навыки, проекты, опыт, контакты), используемый как практический полигон для отработки реального процесса разработки и доставки: Git workflow, code review, CI, контейнеризация, IaC, CD, мониторинг.

## Stack

- Frontend: HTML/CSS/JS
- Web server: Nginx
- Containerization: Docker
- CI/CD: GitHub Actions
- Container registry: GitHub Container Registry (ghcr.io)
- Server: VPS
- IaC: Terraform
- HTTPS: Let's Encrypt (Certbot)
- Monitoring: UptimeRobot

## Structure

- `src/` — исходники сайта
- `infra/` — Terraform-код инфраструктуры
- `.github/workflows/` — CI/CD пайплайны

## Setup

Инструкции по локальному запуску появятся после реализации ticket WEB-001 и DOCKER-001.
