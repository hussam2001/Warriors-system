# 🖥️ Warriors Gym System - Electron Desktop App Guide

## 🚀 Quick Start

### Development Mode
```bash
npm run electron-dev
```
This will:
1. Start Next.js development server
2. Wait for localhost:3000 to be ready
3. Launch Electron desktop app

### Production Build
```bash
npm run build-electron
```
This will:
1. Build Next.js app for production
2. Package Electron app
3. Create distributable installer

## 📦 Available Scripts

### Development
- `npm run electron-dev` - Start development with hot reload
- `npm run electron` - Run Electron only (requires Next.js server)

### Production
- `npm run build-electron` - Build and package for distribution
- `npm run dist` - Create distributable files
- `npm run electron-pack` - Build and package (alias)

## 🎯 Features

### Desktop App Features
- ✅ Native desktop application
- ✅ Cross-platform (Windows, macOS, Linux)
- ✅ System tray integration
- ✅ Keyboard shortcuts
- ✅ Native menus
- ✅ Auto-updater support
- ✅ Offline capability

### Keyboard Shortcuts
- `Ctrl+N` - New Member
- `Ctrl+P` - New Payment
- `Ctrl+1` - Members Page
- `Ctrl+2` - Payments Page
- `Ctrl+3` - Reports Page
- `F11` - Toggle Fullscreen
- `Ctrl+R` - Reload
- `Ctrl+Shift+I` - Developer Tools

### Menu Structure
- **File**: New Member, New Payment, Exit
- **View**: Pages navigation, Reload, Developer Tools
- **Window**: Minimize, Close
- **Help**: About dialog

## 🔧 Configuration

### Electron Main Process (`electron/main.js`)
- Window configuration
- Menu creation
- Security settings
- External link handling

### Preload Script (`electron/preload.js`)
- Secure IPC communication
- Navigation handling
- Platform detection
- Security measures

### Next.js Config (`next.config.js`)
- Static export for Electron
- Image optimization disabled
- Custom image loader

## 📋 Build Configuration

### Package.json Build Settings
```json
{
  "build": {
    "appId": "com.warriors.gym-management",
    "productName": "Warriors Gym Management System",
    "win": {
      "target": "nsis",
      "icon": "public/logo/warriors logo.png"
    },
    "mac": {
      "target": "dmg",
      "icon": "public/logo/warriors logo.png"
    },
    "linux": {
      "target": "AppImage",
      "icon": "public/logo/warriors logo.png"
    }
  }
}
```

## 🛠️ Troubleshooting

### Common Issues

**Electron won't start**
- Ensure Next.js server is running on localhost:3000
- Check if port 3000 is available
- Try `npm run dev` first, then `npm run electron`

**Build fails**
- Ensure all dependencies are installed: `npm install`
- Check Node.js version compatibility
- Clear build cache: `rm -rf out dist`

**App won't load**
- Check browser console for errors
- Verify Supabase connection
- Ensure internet connectivity

**Performance issues**
- Close unnecessary applications
- Check system resources
- Disable hardware acceleration if needed

### Debug Mode
```bash
# Enable debug logging
DEBUG=electron* npm run electron-dev

# Open developer tools
# Press Ctrl+Shift+I in the app
```

## 🔒 Security Features

### Implemented Security
- Context isolation enabled
- Node integration disabled
- Remote module disabled
- External link protection
- File drag/drop prevention
- Context menu disabled in production

### Best Practices
- Never expose Node.js APIs to renderer
- Use preload script for secure communication
- Validate all user inputs
- Sanitize external data

## 📱 Platform Support

### Windows
- Windows 10/11
- NSIS installer
- Desktop shortcut
- Start menu entry

### macOS
- macOS 10.14+
- DMG installer
- App Store ready
- Code signing support

### Linux
- Ubuntu 18.04+
- AppImage format
- Portable application
- System integration

## 🚀 Distribution

### Creating Installers
```bash
# Windows
npm run dist -- --win

# macOS
npm run dist -- --mac

# Linux
npm run dist -- --linux

# All platforms
npm run dist
```

### Output Files
- `dist/` - Built application files
- `dist/*.exe` - Windows installer
- `dist/*.dmg` - macOS disk image
- `dist/*.AppImage` - Linux portable app

## 🔄 Auto-Updater

### Setup (Future Enhancement)
```javascript
// In main.js
const { autoUpdater } = require('electron-updater');

autoUpdater.checkForUpdatesAndNotify();
```

### Update Channels
- GitHub Releases
- Custom update server
- Manual updates

## 📊 Performance Optimization

### Optimizations Applied
- Static export for faster loading
- Image optimization disabled
- Lazy loading components
- Code splitting
- Tree shaking

### Monitoring
- Performance metrics
- Memory usage tracking
- CPU usage monitoring
- Network request logging

## 🎨 Customization

### Branding
- App icon: `public/logo/warriors logo.png`
- Window title: "Warriors Gym Management System"
- Menu items customization
- About dialog content

### Themes
- Dark/Light mode support
- Custom color schemes
- System theme detection
- User preference storage

## 📞 Support

### Development Support
- Check console logs
- Use developer tools
- Verify network connectivity
- Test database connection

### User Support
- Provide installation guide
- Include troubleshooting steps
- Offer remote assistance
- Document common issues

---

**Warriors Gym Management System - Electron Desktop App**  
*Version 1.0.0 - Built with Next.js, React, and Electron*

For web version setup, see `DEPLOYMENT_GUIDE.md`


