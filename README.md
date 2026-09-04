# CyberLessons101 - Local Website Development

This directory contains the copied resources of the **CyberLessons101** website and the necessary Docker infrastructure to build and run it locally.

---

## Directory Structure

*   `html/` - Static resources, precompiled HTML files, and scripts served by Nginx.
*   `default.conf` - Custom Nginx configuration file containing URL rewriting rules to support clean/extensionless URLs (e.g. mapping `/challenges/flag-red73` to `flag-red73.html`).
*   `Dockerfile` - Container setup to package the website and configurations.

---

## 🛠️ Step-by-Step Instructions

### 1. Build the Image
To build the Docker image locally, navigate to this directory (`current_website/`) and execute the following command:

```bash
docker build -t local-cyberlessons101:latest .
```

### 2. Stop the Existing Container
If the official/previous container is already running and using port `80`, stop and remove it first:

```bash
docker stop cyberlessons101
docker rm cyberlessons101
```

### 3. Run the Local Container
Run your locally built image. This command maps host port `80` to container port `80`, names the container `cyberlessons101`, and sets it to restart automatically:

```bash
docker run -d \
  --name cyberlessons101 \
  -p 80:80 \
  --restart always \
  local-cyberlessons101:latest
```

---

## 🔍 Verification & Troubleshooting

*   **Access the Website**: Open your browser and navigate to [http://localhost](http://localhost).
*   **Clean URLs**: Verify that navigation works without adding `.html` to URLs (e.g., [http://localhost/challenges/flag-red73](http://localhost/challenges/flag-red73) should render the React2Shell challenge details page instead of returning a 404 error).
*   **Permissions**: If you encounter permission errors when running any of the `docker` commands, prefix them with `sudo`.
# CyberLessons101-Website-2026-New
