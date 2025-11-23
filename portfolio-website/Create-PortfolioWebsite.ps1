# Base paths
$baseFolder = "C:\Users\Star Wars\Documents\cloud-automation-portfolio"
$websiteFolder = Join-Path $baseFolder "Portfolio-Website"
$cssFolder = Join-Path $websiteFolder "css"
$jsFolder = Join-Path $websiteFolder "js"
$imagesFolder = Join-Path $websiteFolder "images"

# Create folders
$folders = @($websiteFolder, $cssFolder, $jsFolder, $imagesFolder)
foreach ($folder in $folders) {
    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder
        Write-Host "Created folder: $folder" -ForegroundColor Green
    } else {
        Write-Host "Folder already exists: $folder" -ForegroundColor Yellow
    }
}

# -------------------------
# index.html
# -------------------------
$indexHtml = @"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cloud Automation Portfolio</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <header>
    <h1>☁️ Cloud Automation Portfolio</h1>
    <p>Showcasing hands-on cloud automation, Python scripts, Terraform deployments, and Power Platform projects.</p>
  </header>

  <main>
    <!-- Labs Section -->
    <section id="labs">
      <h2>🧪 My Labs</h2>
      <div class="cards">

        <div class="card">
          <h3>Install Tools & GitHub Setup</h3>
          <p>Setup Git, Azure CLI, Terraform, and Python with proper folder structure and version control.</p>
          <div class="badges">
            <span class="badge">GitHub</span>
            <span class="badge">Azure CLI</span>
            <span class="badge">Terraform</span>
          </div>
          <a href="../Install-Tools-and-Setup-GitHub/README.md" target="_blank" class="card-link">View Lab</a>
        </div>

        <div class="card">
          <h3>Terraform & RBAC</h3>
          <p>Deploy Azure resources as code and manage RBAC roles securely.</p>
          <div class="badges">
            <span class="badge">Terraform</span>
            <span class="badge">RBAC</span>
            <span class="badge">Azure</span>
          </div>
          <a href="../RBAC-Terraform/README.md" target="_blank" class="card-link">View Lab</a>
        </div>

        <div class="card">
          <h3>Managed Identity & Key Vault</h3>
          <p>Securely retrieve secrets from Key Vault using Managed Identity and Python.</p>
          <div class="badges">
            <span class="badge">Python</span>
            <span class="badge">Key Vault</span>
            <span class="badge">Azure</span>
          </div>
          <a href="../Deploy-App-Service-With-Managed-Identity/README.md" target="_blank" class="card-link">View Lab</a>
        </div>

      </div>
    </section>

    <!-- Skills Section -->
    <section id="skills">
      <h2>💡 Core Skills</h2>
      <ul>
        <li>Cloud Infrastructure as Code: Terraform, Azure Resource Manager</li>
        <li>Identity & Access Management: RBAC, Managed Identity, Key Vault secrets</li>
        <li>Python Automation & Cloud Scripts</li>
        <li>Power Platform: Power Automate, Power Apps, Power BI</li>
        <li>CI/CD: GitHub Actions & Version Control</li>
      </ul>
    </section>

    <!-- Contact Section -->
    <section id="contact">
      <h2>📬 Let's Connect</h2>
      <p>LinkedIn: <a href="https://www.linkedin.com/in/your-link" target="_blank">Profile</a></p>
      <p>GitHub: <a href="https://github.com/your-username" target="_blank">Portfolio Repo</a></p>
      <p>Email: your.email@example.com</p>
    </section>
  </main>

  <footer>
    <p>© [Your Name] - Cloud Automation Portfolio</p>
  </footer>

  <script src="js/script.js"></script>
</body>
</html>
"@

$indexPath = Join-Path $websiteFolder "index.html"
$indexHtml | Out-File -FilePath $indexPath -Encoding UTF8
Write-Host "Created index.html" -ForegroundColor Cyan

# -------------------------
# style.css
# -------------------------
$styleCss = @"
/* Reset */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Body */
body {
  font-family: 'Segoe UI', Arial, sans-serif;
  background-color: #f4f6f8;
  color: #333;
  line-height: 1.6;
}

/* Header */
header {
  background-color: #0078D4;
  color: white;
  text-align: center;
  padding: 2rem 1rem;
}

header h1 {
  margin-bottom: 0.5rem;
}

header p {
  font-size: 1.1rem;
}

/* Main */
main {
  padding: 2rem;
}

/* Cards Grid */
.cards {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
  margin-top: 1rem;
}

/* Card Styles */
.card {
  background-color: white;
  border-radius: 10px;
  padding: 1.5rem;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  transition: transform 0.3s, box-shadow 0.3s;
  position: relative;
}

.card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

/* Badges */
.badges {
  margin-top: 0.5rem;
}

.badge {
  display: inline-block;
  background: #0078D4;
  color: white;
  padding: 0.3rem 0.6rem;
  margin: 0.2rem 0.2rem 0 0;
  border-radius: 4px;
  font-size: 0.8rem;
  transition: transform 0.3s;
}

.badge:hover {
  transform: scale(1.2);
}

/* Card Links */
.card-link {
  display: inline-block;
  margin-top: 0.8rem;
  padding: 0.4rem 0.8rem;
  background-color: #ff9900;
  color: white;
  border-radius: 5px;
  text-decoration: none;
  font-weight: bold;
  transition: background 0.3s, transform 0.3s;
}

.card-link:hover {
  background-color: #e68a00;
  transform: scale(1.05);
}

/* Skills */
#skills ul {
  list-style: square;
  margin-left: 1.5rem;
  margin-top: 0.5rem;
}

/* Contact */
#contact a {
  color: #0078D4;
  text-decoration: none;
}

#contact a:hover {
  text-decoration: underline;
}

/* Footer */
footer {
  text-align: center;
  background-color: #0078D4;
  color: white;
  padding: 1rem;
  margin-top: 2rem;
}
"@

$stylePath = Join-Path $cssFolder "style.css"
$styleCss | Out-File -FilePath $stylePath -Encoding UTF8
Write-Host "Created style.css" -ForegroundColor Cyan

# -------------------------
# script.js
# -------------------------
$scriptJs = @"
console.log('Cloud Automation Portfolio Loaded');

// Animate badges on page load
document.querySelectorAll('.badge').forEach((badge, i) => {
  badge.style.transform = 'scale(0)';
  setTimeout(() => {
    badge.style.transition = 'transform 0.5s';
    badge.style.transform = 'scale(1)';
  }, i * 100); // stagger animation
});
"@

$scriptPath = Join-Path $jsFolder "script.js"
$scriptJs | Out-File -FilePath $scriptPath -Encoding UTF8
Write-Host "Created script.js" -ForegroundColor Cyan

Write-Host "✅ Portfolio website structure created successfully!" -ForegroundColor Green
