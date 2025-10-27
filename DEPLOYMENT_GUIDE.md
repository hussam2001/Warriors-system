# Warriors Gym Management System - Deployment Guide

## 🚀 Quick Start for End Users

### Option 1: Simple Local Setup (Recommended)

#### Prerequisites
- Windows 10/11 computer
- Internet connection
- Basic computer skills

#### Step 1: Download Required Software
1. **Download Node.js** (Required)
   - Go to: https://nodejs.org/
   - Download the "LTS" version (recommended)
   - Run the installer and follow the setup wizard
   - Restart your computer after installation

2. **Download Warriors Gym System**
   - Download the project folder to your computer
   - Extract it to a location like `C:\WarriorsGym\`

#### Step 2: Setup the Application
1. **Open Command Prompt**
   - Press `Windows + R`
   - Type `cmd` and press Enter

2. **Navigate to the Project Folder**
   ```
   cd C:\WarriorsGym\Warriors system
   ```

3. **Install Dependencies**
   ```
   npm install
   ```

4. **Start the Application**
   ```
   npm run dev
   ```

5. **Access the System**
   - Open your web browser
   - Go to: http://localhost:3000
   - Login with:
     - Username: `admin`
     - Password: `warriors2024`

#### Step 3: Create Desktop Shortcut (Optional)
1. Right-click on desktop
2. Select "New" → "Shortcut"
3. Enter location: `C:\WarriorsGym\Warriors system\start.bat`
4. Name it: "Warriors Gym System"

---

## 🔧 Advanced Setup Options

### Option 2: Production Deployment

#### For Multiple Users (Network Access)
1. **Find Your Computer's IP Address**
   ```
   ipconfig
   ```
   - Look for "IPv4 Address" (e.g., 192.168.1.100)

2. **Start with Network Access**
   ```
   npm run dev -- --hostname 0.0.0.0
   ```

3. **Access from Other Computers**
   - Other computers on the same network can access: `http://192.168.1.100:3000`

#### For Permanent Installation
1. **Install as Windows Service** (Advanced)
   - Use tools like `pm2` or `node-windows`
   - Automatically starts with Windows
   - Runs in background

---

## 📋 System Requirements

### Minimum Requirements
- **Operating System**: Windows 10 or newer
- **RAM**: 4GB minimum, 8GB recommended
- **Storage**: 500MB free space
- **Internet**: Required for initial setup and database

### Recommended Setup
- **Operating System**: Windows 11
- **RAM**: 8GB or more
- **Storage**: 1GB free space
- **Internet**: Stable broadband connection

---

## 🛠️ Troubleshooting

### Common Issues

#### "npm is not recognized"
- **Solution**: Install Node.js from https://nodejs.org/
- Restart computer after installation

#### "Port 3000 is already in use"
- **Solution**: Close other applications or use different port
- Try: `npm run dev -- --port 3001`

#### "Cannot access from other computers"
- **Solution**: Check Windows Firewall settings
- Allow Node.js through firewall

#### "Database connection failed"
- **Solution**: Check internet connection
- Verify Supabase credentials are correct

### Getting Help
- Check the console for error messages
- Ensure all prerequisites are installed
- Verify internet connection

---

## 📚 User Guide

### Login
- **URL**: http://localhost:3000
- **Username**: admin
- **Password**: warriors2024

### Main Features
1. **Members Management**
   - Add new members
   - View member list
   - Edit member information
   - Automatic payment creation

2. **Payments**
   - Record new payments
   - View payment history
   - Edit payment details
   - Export to Excel/PDF

3. **Reports**
   - Revenue statistics
   - Member analytics
   - Payment summaries

### Keyboard Shortcuts
- `F5`: Refresh page
- `Ctrl + S`: Save (in forms)
- `Esc`: Cancel/Close

---

## 🔒 Security Notes

### Important Security Information
- **Default Password**: Change the admin password after first login
- **Network Access**: Only enable if on trusted network
- **Data Backup**: Regularly backup your data
- **Updates**: Keep the system updated

### Password Change Instructions
1. Login to the system
2. Go to Settings page
3. Update admin credentials
4. Save changes

---

## 📞 Support

### For Technical Issues
- Check this guide first
- Review error messages in browser console
- Ensure all requirements are met

### Contact Information
- **System**: Warriors Gym Management System
- **Version**: 1.0.0
- **Database**: Supabase Cloud

---

## 🎯 Quick Commands Reference

### Start the System
```bash
cd "C:\WarriorsGym\Warriors system"
npm run dev
```

### Stop the System
- Press `Ctrl + C` in the command prompt

### Restart the System
```bash
# Stop (Ctrl + C)
# Then start again
npm run dev
```

### Check System Status
- Open browser to http://localhost:3000
- If page loads, system is running

---

## 📦 Backup Instructions

### Regular Backup (Recommended)
1. **Database Backup**: Automatic (Supabase)
2. **Local Data**: Export reports regularly
3. **System Files**: Keep project folder safe

### Manual Backup
1. Go to Reports page
2. Export all data to Excel
3. Save backup files securely

---

*Last Updated: October 2025*
*Version: 1.0.0*


