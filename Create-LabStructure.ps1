# List of all lab names
$labs = @(
    "Install-Tools-and-Setup-GitHub",
    "Create-Resource-Group-With-Terraform",
    "RBAC-Terraform",
    "Python-ServicePrincipal-Test",
    "Deploy-App-Service-With-Managed-Identity",
    "Create-Key-Vault-And-Store-Secrets",
    "Retrieve-Key-Vault-Secret-With-Python",
    "Deploy-Secure-VNet-And-Subnets",
    "Deploy-App-Service-Behind-VNet",
    "Python-WebApp-Development",
    "Deploy-Python-WebApp-To-Azure",
    "Python-Automation-Tools-For-Cloud-Ops",
    "Power-Automate-Workflow",
    "Power-App-With-Azure-Backend",
    "Power-BI-Dashboard"
)

# Base folder for all labs
$baseFolder = "C:\Users\Star Wars\Documents\cloud-automation-portfolio"

# Subfolders for each lab
$subfolders = @("docs", "scripts", "screenshots")

# Create base folder if it doesn't exist
if (!(Test-Path $baseFolder)) {
    New-Item -ItemType Directory -Path $baseFolder
}

# Loop through each lab
foreach ($lab in $labs) {
    $labPath = Join-Path $baseFolder $lab

    # Create lab folder
    if (!(Test-Path $labPath)) {
        New-Item -ItemType Directory -Path $labPath
    }

    # Create subfolders
    foreach ($sub in $subfolders) {
        $subPath = Join-Path $labPath $sub
        if (!(Test-Path $subPath)) {
            New-Item -ItemType Directory -Path $subPath
        }
    }

    # Create README.md placeholder
    $readmePath = Join-Path $labPath "README.md"
    if (!(Test-Path $readmePath)) {
        @"
# $lab

## 🎯 Objective

## 🧰 Tools Used

## 📁 Folder Structure

## 📝 Prerequisites

## 🧪 Lab Steps (Summary)

## ✅ Expected Outcome

## 🚀 Optional Automation
"@ | Out-File -FilePath $readmePath -Encoding UTF8
    }
}

Write-Host "All lab folders, subfolders, and README.md files created under '$baseFolder'!" -ForegroundColor Green
