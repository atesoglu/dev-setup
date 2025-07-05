## 🔧 Environment Config

All environment variables are stored in `.env` files and used by Docker Compose:
- Top-level `.env` for shared/global settings
- Folder-level `.env` files for service-specific values

## 🧹 Teardown

To stop all containers and remove volumes:

```bash
./teardown.sh
