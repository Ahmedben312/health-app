#!/bin/bash

# Health App Environment Setup Script
# WARNING: This script contains sensitive credentials. Only use for local development.

set -e

echo "🔐 Setting up environment variables with your credentials..."

# Backend configuration
cat > backend/.env << 'EOF'
NODE_ENV=development
PORT=5000
MONGODB_URI=mongodb+srv://benamarahmed236:GOUXA7oGMfhxLlgn@cluster0.carslm0.mongodb.net/healthapp?retryWrites=true&w=majority
JWT_SECRET=super_strong_secret_ahmedben11235813
JWT_EXPIRE=30d
REDIS_URL=redis://redis:6379
EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587
EMAIL_USER=benamarahmed236@gmail.com
EMAIL_PASS=ahmedben11235813
STRIPE_SECRET_KEY=sk_test_placeholder
TWILIO_ACCOUNT_SID=your_twilio_account_sid
TWILIO_AUTH_TOKEN=your_twilio_auth_token
EOF

# Frontend-web configuration
cat > frontend-web/.env << 'EOF'
VITE_API_URL=http://localhost:5000/api
VITE_SOCKET_URL=http://localhost:5000
VITE_APP_NAME=Health App
VITE_APP_VERSION=1.0.0
EOF

# Admin dashboard configuration
cat > admin-dashboard/.env << 'EOF'
VITE_API_URL=http://localhost:5000/api
EOF

echo "✅ Environment files created successfully!"
echo "🔒 Permissions set to 600 (owner read/write only)"
chmod 600 backend/.env frontend-web/.env admin-dashboard/.env

echo "🚀 You can now start the application with: docker-compose up --build"