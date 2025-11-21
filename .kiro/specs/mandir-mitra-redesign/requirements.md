# Requirements Document

## Introduction

The Mandir Mitra UI/UX Redesign project aims to transform the existing spiritual services mobile application into a premium, modern, and deeply engaging experience. The redesign will maintain the spiritual essence while implementing contemporary design patterns, improved user flows, and enhanced accessibility. The application connects devotees with temples, priests, and spiritual services including personal rituals, public rituals, chadhava offerings, and temple-specific services.

## Glossary

- **Mandir Mitra System**: The complete mobile application platform for spiritual services
- **Devotee**: A registered user of the application who books rituals and services
- **Ritual**: A spiritual ceremony or puja performed by priests at temples
- **Chadhava**: Religious offerings (prasad, flowers, etc.) made to deities
- **Aashirwad Box**: A package containing blessed items (prasad, sacred items) delivered to devotees after rituals
- **Package Types**: Three service tiers - Shared (₹301, 10 participants), Family (₹501, 6 participants), Personal (₹1,001, 3 participants)
- **Priest**: Verified religious officiants who perform rituals at partner temples
- **Temple Partner**: Verified temples registered on the platform offering services
- **Punya Mudra**: Spiritual points earned through participation in rituals
- **Muhurat**: Auspicious timing for performing rituals based on Hindu calendar
- **Live Darshan**: Real-time video streaming of temple deity or ongoing rituals
- **Dosha**: Astrological afflictions that can be remedied through specific rituals
- **Holy Items**: Physical spiritual products available for purchase including idols, rudraksha, sacred books, puja items, and blessed artifacts
- **Custom Ritual Order**: A personalized ritual request form accessible from the Public Ritual screen for devotees requiring tailored spiritual services

## Requirements

### Requirement 1: Navigation System

**User Story:** As a devotee, I want to easily navigate between different sections of the app, so that I can quickly access the services I need.

#### Acceptance Criteria

1. WHEN the Mandir Mitra System launches, THE Mandir Mitra System SHALL display a bottom tab navigation bar with five sections: Home, Rituals, Holy Items, Chadhava, and Temples
2. WHEN a devotee taps any navigation tab, THE Mandir Mitra System SHALL transition to the selected section within 300 milliseconds with a smooth slide animation
3. THE Mandir Mitra System SHALL highlight the active tab with Divine Gold color (#D4AF37) and display inactive tabs in Sacred Grey
4. WHEN a devotee is viewing any screen, THE Mandir Mitra System SHALL maintain the bottom navigation bar visible and accessible at all times
5. THE Mandir Mitra System SHALL ensure all navigation touch targets are minimum 44x44 pixels for accessibility compliance

### Requirement 2: Home Screen Dashboard

**User Story:** As a devotee, I want to see a personalized dashboard with quick access to services and my spiritual progress, so that I can stay engaged with my spiritual journey.

#### Acceptance Criteria

1. WHEN a devotee opens the Home screen, THE Mandir Mitra System SHALL display a greeting with the devotee's name and a rotating spiritual quote
2. THE Mandir Mitra System SHALL display a Quick Stats Card showing Punya Mudra points, Bhakti streak, attendance count, and devotee level using glassmorphic design
3. WHEN the Home screen loads, THE Mandir Mitra System SHALL display an auto-rotating hero banner carousel that changes every 4 seconds featuring upcoming special pujas and festival notifications
4. THE Mandir Mitra System SHALL display a service categories grid in 2x3 layout with icons, service names, and short descriptions for Personal Rituals, Public Rituals, Chadhava, Temple Services, Custom Puja, and Astro Consult
5. THE Mandir Mitra System SHALL display a horizontally scrollable Featured Rituals section showing ritual image, name, temple name, price badge, rating stars, and quick Book button

### Requirement 3: Custom Ritual Order Form

**User Story:** As a devotee, I want to create and request personalized rituals tailored to my specific needs from the Rituals screen, so that I can address my unique spiritual requirements.

#### Acceptance Criteria

1. WHEN a devotee is on the Rituals screen, THE Mandir Mitra System SHALL display a prominent "Request Custom Ritual" button or card at the top of the screen
2. WHEN a devotee taps the Request Custom Ritual button, THE Mandir Mitra System SHALL open a multi-step wizard form modal with 6 steps: Basic Information, Ritual Preferences, Timing & Details, Aashirwad Box Customization, Package Selection, and Review & Confirmation
3. WHEN a devotee completes the Basic Information step, THE Mandir Mitra System SHALL validate that full name, email address, and phone number fields are filled with correct formats before allowing progression
4. WHEN a devotee selects ritual preferences, THE Mandir Mitra System SHALL provide a searchable dropdown for primary intention and multi-select deity preference with deity images
5. WHEN a devotee selects a preferred date, THE Mandir Mitra System SHALL display auspicious timings (muhurat) for that date using a calendar picker
6. THE Mandir Mitra System SHALL display three package options (Shared, Family, Personal) with visual cards showing participant count, price per person, and included features
7. WHEN a devotee submits the custom ritual request, THE Mandir Mitra System SHALL display a success modal with confirmation number and send email/SMS confirmation within 30 seconds
8. WHEN a devotee exits the custom ritual form before completion, THE Mandir Mitra System SHALL save progress automatically and allow resumption within 7 days with a "Resume Draft" option
9. THE Mandir Mitra System SHALL pre-populate form fields with smart defaults based on user history and popular selections to reduce input effort

### Requirement 4: Rituals Screen - Discovery and Booking

**User Story:** As a devotee, I want to browse and book scheduled group rituals or request custom rituals, so that I can participate in community spiritual practices or get personalized services.

#### Acceptance Criteria

1. WHEN a devotee navigates to the Rituals screen, THE Mandir Mitra System SHALL display a "Request Custom Ritual" prominent card at the top, followed by search bar, filter chips, and categorized ritual sections including Everyday Rituals, Life Benefit Pujas, Dosh Nivaran, and Special Occasions
2. WHEN a devotee applies filters, THE Mandir Mitra System SHALL update the ritual list within 500 milliseconds showing only rituals matching selected category, deity, price range, date range, and temple location criteria
3. WHEN a devotee taps a ritual card, THE Mandir Mitra System SHALL open a detail page displaying image gallery, quick info bar with rating and temple name, package selector tabs, deity preference chips, and collapsible sections for description, benefits, and ritual process
4. THE Mandir Mitra System SHALL display temple and priest information including temple name, location, map view option, priest name, verification status, and years of experience
5. WHEN a devotee selects a date and time, THE Mandir Mitra System SHALL highlight available dates in the calendar picker and display time slot buttons with muhurat indicators
6. THE Mandir Mitra System SHALL display a sticky bottom bar showing total price and two action buttons: Add to Cart and Book Now

### Requirement 5: Chadhava Offering Service

**User Story:** As a devotee, I want to offer chadhava to deities at various temples, so that I can express my devotion and receive blessings remotely.

#### Acceptance Criteria

1. WHEN a devotee navigates to the Chadhava screen, THE Mandir Mitra System SHALL display category filters with circular deity icons, featured chadhava banners, and sections for Daily Deity Chadhava, Special Occasion Chadhava, Life Benefit Chadhava, and Prasad Offerings
2. WHEN a devotee taps a chadhava card, THE Mandir Mitra System SHALL open a detail page displaying offering type selector with visual grid for flowers, honey, diya, coconut, and other items
3. THE Mandir Mitra System SHALL provide quantity selectors with plus/minus buttons for each selected offering type
4. WHEN a devotee adds a special message, THE Mandir Mitra System SHALL accept up to 500 characters of prayer text to be offered with the chadhava
5. WHEN a devotee books multi-temple chadhava, THE Mandir Mitra System SHALL display a temple selection checklist, calculate combined price, and confirm single booking for all temples
6. WHEN a chadhava offering is completed, THE Mandir Mitra System SHALL deliver video proof of the offering to the devotee within 24-48 hours and send a push notification when video is ready

### Requirement 6: Temple Exploration and Services

**User Story:** As a devotee, I want to explore temples and their specific services, so that I can connect with sacred places and participate in their rituals.

#### Acceptance Criteria

1. WHEN a devotee navigates to the Temple screen, THE Mandir Mitra System SHALL display a featured temple spotlight, category chips for Shaktipeeths, Jyotirlingas, Char Dham, Popular, and Nearby, and a 2-column temple grid
2. WHEN a devotee taps a temple card, THE Mandir Mitra System SHALL open a temple detail page displaying image carousel, temple name, location with map icon, rating and review count, and quick action bar for Offer Chadhava, Live Darshan, About, and Visit Guide
3. THE Mandir Mitra System SHALL provide tabbed navigation for Chadhava, Pujas, Live Darshan, and Aartis specific to the selected temple
4. WHEN the Live Darshan tab is active and streaming is available, THE Mandir Mitra System SHALL embed the live stream with schedule of darshan times and notification toggle option
5. THE Mandir Mitra System SHALL display temple information including history and significance, presiding deity, temple timings, festivals celebrated, and dress code in collapsible sections
6. THE Mandir Mitra System SHALL display a reviews section with star rating summary, recent reviews with photos, filter options for Most Helpful, Recent, and Highest Rated, and a Write a Review button

### Requirement 7: Design System and Visual Identity

**User Story:** As a devotee, I want the app to have a beautiful, consistent, and spiritually resonant design, so that I feel connected and engaged throughout my experience.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL use Sacred Deep Teal (#1A5F5F) as the primary brand color for main UI elements and Divine Gold (#D4AF37) for CTAs and highlights
2. THE Mandir Mitra System SHALL use Temple Cream (#F5F0E8) for backgrounds, Pure White (#FFFFFF) for content areas, and Deep Brown (#4A3426) for text with WCAG AA contrast ratios
3. THE Mandir Mitra System SHALL use Playfair Display font for headings (H1: 28px Bold, H2: 24px SemiBold) and Inter font for body text (Base: 16px Regular, Small: 14px Regular)
4. THE Mandir Mitra System SHALL implement card-based design with shadow-sm elevation, rounded-lg corners (8px radius), and consistent padding of 16px for cards
5. THE Mandir Mitra System SHALL apply smooth transitions of 300ms ease-out for page transitions, 250ms for modal opens, and 150ms for button press animations
6. THE Mandir Mitra System SHALL implement an 8px grid system with component spacing of 16px standard, 8px tight, and 24px loose between elements

### Requirement 8: Ritual Detail Page Experience

**User Story:** As a devotee, I want to view comprehensive information about a ritual before booking, so that I can make an informed decision.

#### Acceptance Criteria

1. WHEN a devotee opens a ritual detail page, THE Mandir Mitra System SHALL display a full-screen image gallery with swipeable horizontal navigation, smooth parallax effect, dot indicators, and image counter showing current position
2. THE Mandir Mitra System SHALL display ritual title in Playfair Display 28px, star rating with review count, number of bookings, price starting from, duration, temple name, and verified priest information in the title section
3. THE Mandir Mitra System SHALL display three package cards (Shared, Family, Personal) with participant count, price per person, included features as bullet points, and Most Popular badge for Family package
4. THE Mandir Mitra System SHALL provide tabbed content navigation with sticky tabs for About, Benefits, Process, and FAQ sections with smooth scroll behavior
5. THE Mandir Mitra System SHALL display a visual timeline for ritual process showing 4 steps: Book Your Ritual, Preparation (1-2 days), Live Ritual (45-60 mins), and Aashirwad Box (3-5 days) with icons and arrows
6. THE Mandir Mitra System SHALL display a sticky bottom action bar showing starting price and large Book Now button in Divine Gold color that remains visible during scroll

### Requirement 9: Booking Flow and Payment

**User Story:** As a devotee, I want a smooth and secure booking process, so that I can complete my ritual reservation with confidence.

#### Acceptance Criteria

1. WHEN a devotee taps Book Now, THE Mandir Mitra System SHALL verify user authentication and redirect to login/signup if not authenticated
2. WHEN a devotee proceeds to payment, THE Mandir Mitra System SHALL display a summary card showing all selected options, total price breakdown, estimated ritual date, and expected Aashirwad Box delivery date
3. THE Mandir Mitra System SHALL provide edit buttons for each section in the booking summary allowing devotees to modify selections before payment
4. WHEN a devotee completes payment, THE Mandir Mitra System SHALL display a success screen with booking ID, countdown to ritual, and confirmation message within 2 seconds
5. THE Mandir Mitra System SHALL send email and SMS confirmation with booking details, reference ID, ritual date and time, temple information, and contact support information within 30 seconds of successful payment
6. THE Mandir Mitra System SHALL display the booking in the devotee's Orders section with status indicators: Upcoming (Success Green), Completed (Sacred Grey), or Cancelled (Error Red)
7. WHEN an Aashirwad Box is shipped, THE Mandir Mitra System SHALL provide real-time tracking with map view, estimated delivery time, and delivery person contact information
8. WHEN an Aashirwad Box is delivered, THE Mandir Mitra System SHALL send a photo confirmation and request feedback within 24 hours of delivery

### Requirement 10: Accessibility and Performance

**User Story:** As a devotee with accessibility needs, I want the app to be usable and performant for everyone, so that all devotees can access spiritual services equally.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL ensure all interactive elements have minimum touch target size of 44x44 pixels for accessibility compliance
2. THE Mandir Mitra System SHALL maintain WCAG AA contrast ratios for all text and interactive elements with minimum 4.5:1 for normal text and 3:1 for large text
3. THE Mandir Mitra System SHALL support screen reader navigation with proper semantic HTML, ARIA labels, and focus management for all interactive components
4. THE Mandir Mitra System SHALL implement lazy loading for images that load as the devotee scrolls with skeleton screens showing loading structure
5. THE Mandir Mitra System SHALL optimize images using WebP format with responsive sizes and cache API responses locally to reduce load times
6. WHEN a devotee performs any action, THE Mandir Mitra System SHALL provide haptic feedback for important actions and visual loading indicators with maximum 2 second perceived wait time

### Requirement 11: Notifications and Engagement

**User Story:** As a devotee, I want to receive timely notifications about my bookings and spiritual opportunities, so that I stay connected and don't miss important events.

#### Acceptance Criteria

1. WHEN a ritual is scheduled within 24 hours, THE Mandir Mitra System SHALL send a push notification reminder to the devotee
2. WHEN a ritual is scheduled within 1 hour, THE Mandir Mitra System SHALL send a second push notification with live streaming link if applicable
3. WHEN an Aashirwad Box is shipped, THE Mandir Mitra System SHALL send a push notification with tracking information and estimated delivery date
4. WHEN a chadhava offering video is ready, THE Mandir Mitra System SHALL send a push notification within 5 minutes of video availability
5. THE Mandir Mitra System SHALL suggest special occasion rituals based on devotee's date of birth, upcoming festivals, and auspicious dates with personalized push notifications
6. THE Mandir Mitra System SHALL display a notification badge on the profile icon showing unread notification count with maximum count display of 99+
7. THE Mandir Mitra System SHALL respect devotee notification preferences and quiet hours between 10 PM and 8 AM for non-critical notifications
8. THE Mandir Mitra System SHALL bundle multiple non-urgent notifications into a single daily digest notification to prevent notification fatigue

### Requirement 12: Holy Items Ecommerce Screen

**User Story:** As a devotee, I want to browse and purchase holy items and spiritual products, so that I can enhance my spiritual practice at home.

#### Acceptance Criteria

1. WHEN a devotee navigates to the Holy Items screen, THE Mandir Mitra System SHALL display an ecommerce-style layout with hero banner, category navigation, product grid, and filters
2. THE Mandir Mitra System SHALL display product categories including Idols & Statues, Rudraksha & Malas, Sacred Books, Puja Items, Yantras, Incense & Dhoop, Spiritual Jewelry, and Blessed Artifacts in a horizontal scrollable chip bar
3. WHEN a devotee taps a product card, THE Mandir Mitra System SHALL display product detail page with image gallery, product name, price, rating, description, specifications, available variants (size, material), and Add to Cart button
4. THE Mandir Mitra System SHALL display product cards in a 2-column grid layout showing product image, name, price, rating stars, and quick Add to Cart icon
5. WHEN a devotee applies filters, THE Mandir Mitra System SHALL provide filter options for price range, category, material, deity association, and rating with result count display
6. THE Mandir Mitra System SHALL provide sort options including Featured, Price Low to High, Price High to Low, Newest First, and Best Rated
7. WHEN a devotee adds items to cart, THE Mandir Mitra System SHALL display a cart icon with item count badge in the header and show a success toast notification

### Requirement 13: Search and Discovery

**User Story:** As a devotee, I want to easily search and discover rituals, temples, holy items, and services, so that I can find exactly what I'm looking for quickly.

#### Acceptance Criteria

1. WHEN a devotee types in the search bar, THE Mandir Mitra System SHALL display search suggestions within 200 milliseconds including rituals, temples, deities, holy items, and service categories
2. THE Mandir Mitra System SHALL support search by ritual name, temple name, deity name, location, benefit type, and product name with fuzzy matching for spelling variations
3. WHEN a devotee applies multiple filters, THE Mandir Mitra System SHALL combine filter criteria using AND logic and display result count before applying
4. THE Mandir Mitra System SHALL provide sort options for search results including Upcoming Date, Price Low to High, Price High to Low, Popularity, and Rating
5. WHEN no search results are found, THE Mandir Mitra System SHALL display a helpful message with suggestions for alternative searches or popular items
6. THE Mandir Mitra System SHALL save recent searches and display them as quick access chips below the search bar for the last 5 searches
7. WHEN a devotee opens the Home screen, THE Mandir Mitra System SHALL display personalized ritual recommendations based on past bookings, preferred deities, and upcoming auspicious dates with minimum 3 recommendations

### Requirement 14: Payment Processing

**User Story:** As a devotee, I want flexible and secure payment options, so that I can complete bookings conveniently.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL support UPI, credit cards, debit cards, net banking, and digital wallets as payment methods
2. WHEN a payment fails, THE Mandir Mitra System SHALL allow retry within 15 minutes without requiring re-entry of booking details
3. WHEN a devotee selects a ritual with total amount above ₹2000, THE Mandir Mitra System SHALL offer installment payment options with clear terms
4. THE Mandir Mitra System SHALL encrypt all payment data in transit using TLS 1.3 and store no card details locally
5. WHEN payment is processing, THE Mandir Mitra System SHALL display real-time status updates every 2 seconds with progress indicator
6. WHEN a payment is declined, THE Mandir Mitra System SHALL display the specific reason and suggest alternative payment methods
7. THE Mandir Mitra System SHALL provide a payment receipt with transaction ID, timestamp, and itemized breakdown within 5 seconds of successful payment

### Requirement 15: Offline Support

**User Story:** As a devotee in areas with poor connectivity, I want to access basic app features offline, so that I can browse and plan bookings.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL cache the last 50 viewed rituals, 30 holy items, and 20 temples for offline viewing
2. WHEN offline, THE Mandir Mitra System SHALL allow browsing cached content with a clear offline indicator banner at the top of the screen
3. WHEN connectivity is restored, THE Mandir Mitra System SHALL sync pending actions within 30 seconds and display sync status
4. THE Mandir Mitra System SHALL allow adding items to cart offline and automatically sync when online connection is available
5. WHEN a devotee attempts to book or make payment offline, THE Mandir Mitra System SHALL display a clear message requiring internet connection and save the booking intent for later completion

### Requirement 16: Data Privacy and Security

**User Story:** As a devotee, I want my personal and spiritual data protected, so that I can use the app with confidence.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL encrypt all personal data at rest using AES-256 encryption
2. THE Mandir Mitra System SHALL provide a data export feature that delivers complete user data in JSON format within 48 hours of request
3. THE Mandir Mitra System SHALL allow account deletion with complete data purge within 30 days of request
4. THE Mandir Mitra System SHALL display a privacy policy during signup and require explicit consent before account creation
5. THE Mandir Mitra System SHALL not share devotee data with third parties without explicit opt-in consent obtained through clear disclosure
6. WHEN a devotee accesses privacy settings, THE Mandir Mitra System SHALL display all data collection practices with toggle controls for optional data sharing

### Requirement 17: Booking Modification and Rescheduling

**User Story:** As a devotee, I want to reschedule my ritual booking, so that I can adjust to changing circumstances.

#### Acceptance Criteria

1. WHEN a devotee requests rescheduling 48 or more hours before ritual, THE Mandir Mitra System SHALL allow free rescheduling to any available date within 30 days
2. WHEN a devotee requests rescheduling within 48 hours of ritual, THE Mandir Mitra System SHALL charge 10% rescheduling fee
3. THE Mandir Mitra System SHALL display available alternative dates with muhurat indicators in calendar picker
4. WHEN a devotee cancels a booking 7 or more days before ritual, THE Mandir Mitra System SHALL refund 100% of payment within 3-5 business days
5. WHEN a devotee cancels a booking 3-7 days before ritual, THE Mandir Mitra System SHALL refund 75% of payment within 3-5 business days
6. WHEN a devotee cancels a booking 1-3 days before ritual, THE Mandir Mitra System SHALL refund 50% of payment within 3-5 business days
7. WHEN a devotee cancels a booking less than 24 hours before ritual, THE Mandir Mitra System SHALL refund 25% of payment within 3-5 business days
8. WHEN a temple cancels a ritual, THE Mandir Mitra System SHALL refund 100% of payment and provide ₹100 credit within 24 hours

### Requirement 18: Payment Recovery and Failure Handling

**User Story:** As a devotee who experienced payment issues, I want to recover my booking attempt, so that I don't lose my selections.

#### Acceptance Criteria

1. WHEN a payment is interrupted or fails, THE Mandir Mitra System SHALL save booking state for 24 hours in local storage
2. WHEN a devotee reopens the app after payment interruption, THE Mandir Mitra System SHALL display "Complete Your Booking" prompt with saved selections
3. WHEN a payment dispute occurs, THE Mandir Mitra System SHALL provide dispute resolution form with order details and support contact
4. WHEN a devotee reports payment deducted but booking not confirmed, THE Mandir Mitra System SHALL verify transaction within 2 hours and confirm booking or process refund
5. THE Mandir Mitra System SHALL send SMS recovery link for incomplete payments valid for 24 hours
6. WHEN multiple payment attempts fail, THE Mandir Mitra System SHALL suggest alternative payment methods and display customer support contact

### Requirement 19: Service Failure Recovery

**User Story:** As a devotee, I want assurance that service failures will be handled fairly, so that I can book with confidence.

#### Acceptance Criteria

1. WHEN live stream fails during ritual, THE Mandir Mitra System SHALL automatically record the ritual and provide recorded video within 24 hours
2. WHEN live stream fails during ritual, THE Mandir Mitra System SHALL refund 20% of booking amount within 3-5 business days
3. WHEN Aashirwad Box is lost in shipping, THE Mandir Mitra System SHALL provide full refund and ship free replacement within 7 days
4. WHEN Aashirwad Box is damaged, THE Mandir Mitra System SHALL require photo proof and ship replacement within 5 days
5. WHEN Aashirwad Box delivery is delayed beyond 7 days, THE Mandir Mitra System SHALL provide ₹100 compensation credit for next booking
6. WHEN chadhava video proof is not delivered within 48 hours, THE Mandir Mitra System SHALL send notification with updated timeline and provide ₹50 credit
7. WHEN temple cancels ritual less than 24 hours before scheduled time, THE Mandir Mitra System SHALL refund 100% and provide ₹200 compensation credit

### Requirement 20: Pricing and Promotions

**User Story:** As a devotee, I want to access promotional offers, so that I can participate in more rituals affordably.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL apply promo codes at checkout with real-time validation and discount display
2. WHEN a devotee refers a friend who completes first booking, THE Mandir Mitra System SHALL award ₹100 credit to both devotee and friend
3. THE Mandir Mitra System SHALL offer festival special pricing with 10-20% discount during major Hindu festivals
4. WHEN a devotee completes 5 or more rituals, THE Mandir Mitra System SHALL unlock "Dedicated Devotee" tier with 15% discount on all future bookings
5. THE Mandir Mitra System SHALL display promo code input field on checkout screen with "Apply" button
6. WHEN an invalid promo code is entered, THE Mandir Mitra System SHALL display specific error message explaining why code is invalid
7. THE Mandir Mitra System SHALL allow only one promo code per booking and display this restriction clearly

### Requirement 21: Spiritual Progress Gamification

**User Story:** As a devotee, I want to see my spiritual progress, so that I stay motivated and engaged.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL award Punya Mudra points for completed rituals: Shared package 10 points, Family package 25 points, Personal package 50 points
2. WHEN a devotee reaches milestones, THE Mandir Mitra System SHALL unlock badges: First Ritual, 5 Rituals, 10 Rituals, 25 Rituals, 50 Rituals, 100 Rituals
3. THE Mandir Mitra System SHALL display Bhakti Streak showing consecutive days with app activity or ritual participation
4. WHEN a devotee breaks a 7-day or longer Bhakti Streak, THE Mandir Mitra System SHALL send encouragement notification with motivational quote
5. THE Mandir Mitra System SHALL provide monthly spiritual progress report via email showing rituals completed, Punya Mudra earned, and badges unlocked
6. THE Mandir Mitra System SHALL display devotee level progression: Beginner (0-50 points), Devotee (51-200 points), Dedicated (201-500 points), Enlightened (501+ points)
7. WHEN a devotee levels up, THE Mandir Mitra System SHALL display celebration animation and unlock tier-specific benefits

### Requirement 17: Booking Modification and Rescheduling

**User Story:** As a devotee, I want to reschedule my ritual booking, so that I can adjust to changing circumstances.

#### Acceptance Criteria

1. WHEN a devotee requests rescheduling 48 or more hours before ritual, THE Mandir Mitra System SHALL allow free rescheduling to any available date within 30 days
2. WHEN a devotee requests rescheduling within 48 hours of ritual, THE Mandir Mitra System SHALL charge 10% rescheduling fee
3. THE Mandir Mitra System SHALL display available alternative dates with muhurat indicators in calendar picker
4. WHEN a devotee cancels a booking 7 or more days before ritual, THE Mandir Mitra System SHALL refund 100% of payment within 3-5 business days
5. WHEN a devotee cancels a booking 3-7 days before ritual, THE Mandir Mitra System SHALL refund 75% of payment within 3-5 business days
6. WHEN a devotee cancels a booking 1-3 days before ritual, THE Mandir Mitra System SHALL refund 50% of payment within 3-5 business days
7. WHEN a devotee cancels a booking less than 24 hours before ritual, THE Mandir Mitra System SHALL refund 25% of payment within 3-5 business days
8. WHEN a temple cancels a ritual, THE Mandir Mitra System SHALL refund 100% of payment and provide ₹100 credit within 24 hours

### Requirement 18: Payment Recovery and Failure Handling

**User Story:** As a devotee who experienced payment issues, I want to recover my booking attempt, so that I don't lose my selections.

#### Acceptance Criteria

1. WHEN a payment is interrupted or fails, THE Mandir Mitra System SHALL save booking state for 24 hours in local storage
2. WHEN a devotee reopens the app after payment interruption, THE Mandir Mitra System SHALL display "Complete Your Booking" prompt with saved selections
3. WHEN a payment dispute occurs, THE Mandir Mitra System SHALL provide dispute resolution form with order details and support contact
4. WHEN a devotee reports payment deducted but booking not confirmed, THE Mandir Mitra System SHALL verify transaction within 2 hours and confirm booking or process refund
5. THE Mandir Mitra System SHALL send SMS recovery link for incomplete payments valid for 24 hours
6. WHEN multiple payment attempts fail, THE Mandir Mitra System SHALL suggest alternative payment methods and display customer support contact

### Requirement 19: Service Failure Recovery

**User Story:** As a devotee, I want assurance that service failures will be handled fairly, so that I can book with confidence.

#### Acceptance Criteria

1. WHEN live stream fails during ritual, THE Mandir Mitra System SHALL automatically record the ritual and provide recorded video within 24 hours
2. WHEN live stream fails during ritual, THE Mandir Mitra System SHALL refund 20% of booking amount within 3-5 business days
3. WHEN Aashirwad Box is lost in shipping, THE Mandir Mitra System SHALL provide full refund and ship free replacement within 7 days
4. WHEN Aashirwad Box is damaged, THE Mandir Mitra System SHALL require photo proof and ship replacement within 5 days
5. WHEN Aashirwad Box delivery is delayed beyond 7 days, THE Mandir Mitra System SHALL provide ₹100 compensation credit for next booking
6. WHEN chadhava video proof is not delivered within 48 hours, THE Mandir Mitra System SHALL send notification with updated timeline and provide ₹50 credit
7. WHEN temple cancels ritual less than 24 hours before scheduled time, THE Mandir Mitra System SHALL refund 100% and provide ₹200 compensation credit

### Requirement 20: Pricing and Promotions

**User Story:** As a devotee, I want to access promotional offers, so that I can participate in more rituals affordably.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL apply promo codes at checkout with real-time validation and discount display
2. WHEN a devotee refers a friend who completes first booking, THE Mandir Mitra System SHALL award ₹100 credit to both devotee and friend
3. THE Mandir Mitra System SHALL offer festival special pricing with 10-20% discount during major Hindu festivals
4. WHEN a devotee completes 5 or more rituals, THE Mandir Mitra System SHALL unlock "Dedicated Devotee" tier with 15% discount on all future bookings
5. THE Mandir Mitra System SHALL display promo code input field on checkout screen with "Apply" button
6. WHEN an invalid promo code is entered, THE Mandir Mitra System SHALL display specific error message explaining why code is invalid
7. THE Mandir Mitra System SHALL allow only one promo code per booking and display this restriction clearly

### Requirement 21: Spiritual Progress Gamification

**User Story:** As a devotee, I want to see my spiritual progress, so that I stay motivated and engaged.

#### Acceptance Criteria

1. THE Mandir Mitra System SHALL award Punya Mudra points for completed rituals: Shared package 10 points, Family package 25 points, Personal package 50 points
2. WHEN a devotee reaches milestones, THE Mandir Mitra System SHALL unlock badges: First Ritual, 5 Rituals, 10 Rituals, 25 Rituals, 50 Rituals, 100 Rituals
3. THE Mandir Mitra System SHALL display Bhakti Streak showing consecutive days with app activity or ritual participation
4. WHEN a devotee breaks a 7-day or longer Bhakti Streak, THE Mandir Mitra System SHALL send encouragement notification with motivational quote
5. THE Mandir Mitra System SHALL provide monthly spiritual progress report via email showing rituals completed, Punya Mudra earned, and badges unlocked
6. THE Mandir Mitra System SHALL display devotee level progression: Beginner (0-50 points), Devotee (51-200 points), Dedicated (201-500 points), Enlightened (501+ points)
7. WHEN a devotee levels up, THE Mandir Mitra System SHALL display celebration animation and unlock tier-specific benefits
