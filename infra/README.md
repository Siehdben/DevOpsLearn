# Infrastructure

Terraform-конфигурация для VPS (Hetzner Cloud), на котором запускается Docker-контейнер с сайтом.

## Terraform state (INFRA-005)

**Решение:** state хранится локально (`terraform.tfstate`, в `.gitignore`), без удалённого backend.

**Почему:** проект соло, один компьютер работает с инфраструктурой — удалённый backend (Terraform Cloud, S3 и т.п.) решает проблему командной работы и блокировок при параллельных изменениях, которой здесь нет. Добавление backend на этом масштабе — сложность без реальной пользы.

**Риск:** при потере локального `terraform.tfstate` Terraform перестанет "знать" о существующем сервере, и следующий `terraform apply` может попытаться создать дубликат ресурса.

**Смягчение риска:**
- Не удалять `infra/terraform.tfstate` и не работать с одного и того же проекта с разных машин без переноса state.
- При необходимости — ручной `terraform import` по ID существующего сервера (Hetzner Cloud Console) как план восстановления.
- Если проект вырастет до командной работы — пересмотреть это решение и перейти на удалённый backend.

## Применение (после регистрации в Hetzner и получения API-токена)

```bash
cd infra
terraform init
export TF_VAR_hcloud_token="..."   # или использовать terraform.tfvars (в .gitignore)
terraform plan
terraform apply
```
