# Mandir Mitra - Spiritual Services Platform

A comprehensive Flutter-based mobile application connecting devotees with temples for spiritual services, rituals, and offerings.

## 🙏 About

Mandir Mitra is a spiritual services platform that enables devotees to:
- Book religious rituals and pujas at temples
- Make chadhava (offerings) remotely with video proof
- Purchase holy items and prasad
- Explore temples across India
- Receive Aashirwad boxes with blessed items

## ✨ Features

### Core Features
- **Ritual Booking**: Browse and book spiritual rituals with customizable packages
- **Custom Ritual Requests**: 6-step wizard for personalized ritual requests
- **Holy Items Shop**: Full ecommerce experience for religious items
- **Chadhava Offerings**: Remote prayer offerings with video confirmation
- **Temple Exploration**: Discover temples with detailed information
- **Live Darshan**: Watch rituals in real-time
- **Aashirwad Box**: Receive blessed items at your doorstep

### User Experience
- Personalized recommendations based on preferences
- Spiritual progress tracking (Punya Mudra points, Bhakti streak)
- Multi-language support (English, Hindi, Tamil, Telugu)
- Offline browsing capability
- Accessibility compliant (WCAG AA)

## 🛠️ Tech Stack

- **Framework**: Flutter 3.x
- **Language**: Dart
- **State Management**: Riverpod (ready for integration)
- **Navigation**: go_router
- **Design**: Material Design 3
- **Fonts**: Google Fonts (Playfair Display, Inter, Montserrat)

## 📱 Platforms

- Android
- iOS
- Web

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.x or higher
- Dart SDK 3.x or higher
- Android Studio / Xcode (for mobile development)
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/manishahirrao/manish.git
cd manish
```

2. Navigate to the Flutter project:
```bash
cd mandir_mitra
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

### Web Deployment

For web deployment:
```bash
cd mandir_mitra
flutter build web --release
```

The build output will be in `mandir_mitra/build/web/`

## 📂 Project Structure

```
mandir_mitra/
├── lib/
│   ├── core/
│   │   ├── accessibility/
│   │   ├── animations/
│   │   ├── navigation/
│   │   ├── theme/
│   │   └── widgets/
│   └── features/
│       ├── home/
│       ├── rituals/
│       ├── holy_items/
│       ├── chadhava/
│       ├── temples/
│       ├── booking/
│       ├── profile/
│       ├── search/
│       └── notifications/
├── web/
├── android/
├── ios/
└── pubspec.yaml
```

## 🎨 Design System

### Colors
- **Sacred Teal** (#1A5F5F) - Primary brand color
- **Bright Orange** (#FF6B35) - CTAs and actions
- **Divine Gold** (#D4AF37) - Accents and highlights
- **Cream Background** (#FBF8F3) - Main background

### Typography
- **Headings**: Playfair Display
- **Body**: Inter
- **Accent**: Montserrat
- **Hindi**: Noto Sans Devanagari

## 🔧 Configuration

### Environment Setup

Create a `.env` file in the project root:
```env
API_BASE_URL=your_api_url
RAZORPAY_KEY=your_razorpay_key
FIREBASE_PROJECT_ID=your_firebase_project
```

## 📖 Documentation

- [Requirements](/.kiro/specs/mandir-mitra-redesign/requirements.md)
- [Design Document](/.kiro/specs/mandir-mitra-redesign/design.md)
- [Implementation Tasks](/.kiro/specs/mandir-mitra-redesign/tasks.md)
- [Backend Integration Guide](/BACKEND_INTEGRATION_GUIDE.md)
- [Deployment Guide](/mandir_mitra/DEPLOYMENT.md)

## 🧪 Testing

Run tests:
```bash
flutter test
```

Run with coverage:
```bash
flutter test --coverage
```

## 🌐 Deployment

### Vercel (Web)
The app is configured for Vercel deployment. See [Vercel Quick Start](/mandir_mitra/VERCEL_QUICK_START.md)

### Mobile App Stores
- **Android**: Google Play Store
- **iOS**: Apple App Store

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is proprietary software. All rights reserved.

## 👥 Team

- **Development**: Mandir Mitra Development Team
- **Design**: UI/UX Design Team
- **Product**: Product Management Team

## 📞 Support

For support, email support@mandirmitra.com or join our Slack channel.

## 🙏 Acknowledgments

- Temple partners across India
- Spiritual advisors and priests
- Beta testers and early adopters
- Open source Flutter community

---

**Status**: 🟢 Active Development  
**Version**: 1.0.0-beta  
**Last Updated**: November 22, 2025

Made with 🙏 for devotees worldwide
