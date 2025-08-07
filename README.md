# Terraform Workshop - Infrastructure as Code

## Wat gaan we maken?

In deze workshop maken we samen:

- Een Azure Resource Group
- Een Storage Account met container
- Outputs die informatie tonen over onze infrastructuur

## Stappen

### 1. Initialiseer Terraform

```bash
terraform init
```

### 2. Plan de deployment

```bash
terraform plan -var student_name=voornaam
```

### 3. Deploy de infrastructuur

```bash
terraform apply -var student_name=voornaam
```

### 4. Bekijk de outputs

```bash
terraform output
```

### 5. Ruim op (belangrijk!)

```bash
terraform destroy -var student_name=voornaam
```

## Tips voor tijdens de workshop

- Vervang "voornaam" door je eigen voornaam (alleen lowercase, 3-8 karakters)
- Check de Azure portal om je resources te zien
- Let op de output van elk commando

## Wat leer je?

- Infrastructure as Code principes
- Terraform workflow (init, plan, apply, destroy)
- Azure provider basics
- Resource dependencies
- Output values
