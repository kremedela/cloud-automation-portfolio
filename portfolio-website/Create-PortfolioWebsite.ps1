# -----------------------------
# Portfolio Website Setup
# -----------------------------

# Base path for portfolio
$baseFolder = "C:\Users\Star Wars\Documents\cloud-automation-portfolio"
$websiteFolder = Join-Path $baseFolder "Portfolio-Website"

# Subfolders for website
$subfolders = @("css", "js", "images")

# Create Portfolio-Website folder
if (!(Test-Path $websiteFolder)) {
    New-Item -ItemType Directory -Path $websiteFolder
    Write-Host "Created Portfolio-Website folder" -ForegroundColor Green
} else {
    Write-Host "Portfolio-Website folder already exists" -ForegroundColor Yellow
}

# Create subfolders
foreach ($sub in $subfolders) {
    $subPath = Join-Path $websiteFolder $sub
    if (!(Test-Path $subPath)) {
        New-Item -ItemType Directory -Path $subPath
        Write-Host "Created subfolder: $sub" -ForegroundColor Green
    } else {
        Write-Host "Subfolder already exists: $sub" -ForegroundColor Yellow
    }
}

# Create a basic index.html
$indexPath = Join-Path $websiteFolder "index.html"
if (!(Test-Path $indexPath)) {
    @"
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Cloud Automation Portfolio</title>
    <link rel='stylesheet' href='css/style.css'>
</head>
<body>
    <header>
        <h1>☁️ Cloud Automation Portfolio</h1>
        <p>Welcome! Explore my cloud labs, Python automation scripts, and Power Platform projects.</p>
    </header>

    <main>
        <section>
            <h2>My Labs</h2>
            <ul>
                <li>Install Tools & GitHub Setup</li>
                <li>Terraform & RBAC</li>
                <li>Managed Identity & Key Vault</li>
                <li>Python Web App Deployment</li>
                <li>Python Automation for Cloud Ops</li>
                <li>Power Automate Workflows</li>
                <li>Power Apps & Power BI Dashboards</li>
            </ul>
        </section>

        <section>
            <h2>Contact</h2>
            <p>Connect with me on <a href='#'>LinkedIn</a> or view my <a href='#'>GitHub</a>.</p>
        </section>
    </main>

    <footer>
        <p>© [Your Name] - Cloud Automation Portfolio</p>
    </footer>

    <script src='js/script.js'></script>
</body>
</html>
"@ | Out-File -FilePath $indexPath -Encoding UTF8
    Write-Host "Created basic index.html" -ForegroundColor Cyan
} else {
    Write-Host "index.html already exists" -ForegroundColor Yellow
}

# Create placeholder CSS file
$cssPath = Join-Path $websiteFolder "css\style.css"
if (!(Test-Path $cssPath)) {
    @"
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    line-height: 1.6;
}

header, footer {
    background-color: #0078D4;
    color: white;
    padding: 1rem;
    text-align: center;
}

main {
    padding: 2rem;
}

a {
    color: #0078D4;
    text-decoration: none;
}
"@ | Out-File -FilePath $cssPath -Encoding UTF8
    Write-Host "Created placeholder CSS file" -ForegroundColor Cyan
}

# Create placeholder JS file
$jsPath = Join-Path $websiteFolder "js\script.js"
if (!(Test-Path $jsPath)) {
    @"
console.log('Cloud Automation Portfolio Loaded');
"@ | Out-File -FilePath $jsPath -Encoding UTF8
    Write-Host "Created placeholder JS file" -ForegroundColor Cyan
}
