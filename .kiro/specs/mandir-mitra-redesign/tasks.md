# Implementation Plan

- [x] 1. Project Setup and Core Infrastructure



  - Initialize Flutter project with Dart
  - Configure navigation (Flutter Navigator 2.0 with bottom navigation)
  - Set up design system tokens (colors, typography, spacing)
  - Configure state management (Provider, Riverpod, or Bloc)
  - Set up API client with Dio and interceptors
  - Configure offline storage (Hive or SQLite)
  - Set up secure storage for sensitive data (flutter_secure_storage)
  - _Requirements: 1.1, 1.2, 1.3, 1.4, 1.5, 7.1, 7.2, 7.3, 7.4, 7.5, 7.6, 15.1, 16.1_


- [x] 2. Design System and Reusable Components


  - [x] 2.1 Create design tokens file with color palette, typography, and spacing



    - Define Sacred Teal, Bright Orange (including text variant), Divine Gold, and functional colors
    - Set up Playfair Display, Inter, and Montserrat fonts using Google Fonts
    - Implement 8px grid spacing system



    - Add WCAG AA compliant color variants for text


    - _Requirements: 7.1, 7.2, 7.3, 7.6, 10.2_

  - [x] 2.2 Build core UI components library


    - Create Button component (Primary, Secondary, Ghost variants)
    - Build Card components (Standard, Ritual, Product, Package Selection)
    - Implement Form components (TextInput, Dropdown, Checkbox, Radio)

    - Create SearchBar component with pill shape
    - Build FilterChips component with active/inactive states
    - Implement Rating component with stars


    - Create Badge components (Verified, Most Popular)
    - _Requirements: 7.4, 7.5, 10.1, 10.2_








  - [x] 2.3 Implement navigation components



    - Create BottomTabNavigator with 5 tabs (Home, Rituals, Holy Items, Chadhava, Temples)
    - Style active/inactive tab states with Bright Orange and Sacred Grey
    - Ensure 44x44px touch targets
    - Add haptic feedback on tab press
    - _Requirements: 1.1, 1.2, 1.3, 1.4, 1.5, 10.1_

  - [x] 2.4 Build loading and error state components


    - Create Skeleton loader with shimmer animation
    - Build Spinner component
    - Implement Toast notification component (Success, Error, Info)





    - Create EmptyState component with icon and CTA

    - Build ErrorState component for network/server errors
    - _Requirements: 10.4, 10.6_








- [ ] 3. Home Screen Implementation
  - [x] 3.1 Create Home screen layout structure

    - Build header with logo, notification bell, and profile avatar
    - Implement greeting section with user name and spiritual quote


    - Create Quick Stats Card with glassmorphic design




    - _Requirements: 2.1, 2.2_



  - [x] 3.2 Implement hero banner carousel


    - Build auto-rotating carousel (4-second intervals)
    - Add dot indicators and manual swipe navigation





    - Implement smooth transitions with parallax effect
    - _Requirements: 2.3_








  - [ ] 3.3 Build service categories grid
    - Create 2x3 grid layout with gradient icons
    - Implement tap animations (scale + divine glow)


    - Add navigation to respective screens on tap
    - _Requirements: 2.4_









  - [ ] 3.4 Create featured rituals horizontal scroll
    - Build horizontally scrollable ritual cards
    - Display ritual image, name, temple, price, rating, and Book button



    - Implement smooth scroll with snap points




    - _Requirements: 2.5_




  - [ ] 3.5 Add Aashirwad Box showcase and temple partners sections
    - Create full-width Aashirwad Box banner with 3D rendering




    - Build temple partners horizontal carousel with circular images

    - Implement spiritual insights feed with blog cards
    - _Requirements: 2.5_


- [x] 4. Rituals Screen - Browse and Discovery











  - [x] 4.1 Create Rituals screen layout with custom ritual CTA


    - Build prominent "Request Custom Ritual" card at top
    - Implement search bar with filter icon




    - Create horizontal filter chips (All, Everyday, Life Benefits, Dosh Removal)


    - _Requirements: 3.1, 4.1_



  - [ ] 4.2 Implement ritual category sections
    - Build Everyday Rituals horizontal scroll
    - Create Life Benefit Pujas 2x2 grid





    - Implement Dosh Nivaran vertical list
    - Build Special Occasions vertical list with countdown timers



    - _Requirements: 4.1, 4.2_

  - [ ] 4.3 Create filter drawer component
    - Build slide-from-right drawer with category checkboxes

    - Implement deity multi-select with images

    - Add price range slider and date range picker
    - Create temple location filter

    - Add sort options (Upcoming, Price, Popularity, Rating)
    - _Requirements: 4.2, 13.3, 13.4_

  - [x] 4.4 Build ritual card component


    - Display ritual image (16:9 aspect ratio)
    - Show ritual name, temple name, rating, and price
    - Add "Book Now" button with Bright Orange styling


    - Implement card hover/press animations
    - _Requirements: 4.3_


- [x] 5. Ritual Detail Page

  - [x] 5.1 Create ritual detail page hero section



    - Build full-screen image gallery with swipeable navigation
    - Implement dot indicators and image counter
    - Add double-tap to zoom and lightbox mode
    - Create gradient overlay for text readability

    - _Requirements: 8.1_



  - [x] 5.2 Implement title and quick info section

    - Display ritual title (Playfair Display 28px)
    - Show star rating with review count and booking count
    - Create info cards for price and duration
    - Display temple name and verified priest information


    - _Requirements: 8.2_

  - [x] 5.3 Build package selection cards




    - Create three package cards (Shared, Family, Personal)
    - Display participant count, price per person, and features
    - Add "Most Popular" badge to Family package

    - Implement selection state with Divine Gold border



    - _Requirements: 8.3_


  - [ ] 5.4 Create deity preference selector
    - Build horizontal scrollable chips with deity icons





    - Implement multi-select functionality











    - Show default selection (Lord Shiva)
    - _Requirements: 4.3_



  - [ ] 5.5 Implement tabbed content navigation
    - Create sticky tabs (About, Benefits, Process, FAQ)


    - Build expandable content sections
    - Implement smooth scroll to sections



    - Display ritual process as visual timeline with 4 steps



    - _Requirements: 8.4, 8.5_



  - [x] 5.6 Add temple, priest, and reviews sections

    - Display temple details with map view option
    - Show priest information with verification badge
    - Create reviews section with rating breakdown





    - Implement photo attachments in reviews
    - _Requirements: 4.4, 6.6_


  - [ ] 5.7 Create sticky bottom action bar
    - Display starting price


    - Add large "Book Now" button in Bright Orange

    - Ensure visibility during scroll with shadow elevation
    - _Requirements: 4.6, 8.6_





- [ ] 6. Custom Ritual Request Form
  - [ ] 6.1 Create multi-step form modal structure
    - Build full-screen modal with close button




    - Implement 6-step progress indicator at top
    - Create Back/Next navigation buttons
    - Add form validation for each step


    - _Requirements: 3.2, 3.3_


  - [x] 6.2 Implement Step 1: Basic Information


    - Create form fields for full name, email, phone number
    - Add country code selector for phone


    - Implement date of birth picker (optional)
    - Add field validation with error messages
    - _Requirements: 3.3_

  - [ ] 6.3 Build Step 2: Ritual Preferences
    - Create searchable dropdown for primary intention






    - Implement multi-select deity preference with images
    - Add custom intention text input option
    - _Requirements: 3.4_

  - [x] 6.4 Create Step 3: Timing & Details




    - Build calendar picker with available dates

    - Display auspicious timings (muhurat) for selected date


    - Add ritual duration selector (Quick, Standard, Extended)
    - Create special instructions textarea (500 char limit)
    - _Requirements: 3.5_






  - [x] 6.5 Implement Step 4: Aashirwad Box Customization




    - Display three box types (Basic, Premium, Divine) as cards
    - Create additional items checkboxes
    - Show price updates in real-time




    - _Requirements: 3.5_

  - [ ] 6.6 Build Step 5: Package Selection
    - Display three package cards with visual design
    - Show participant count and price per person
    - Highlight recommended package


    - _Requirements: 3.6_

  - [ ] 6.7 Create Step 6: Review & Confirmation
    - Display summary card with all selections
    - Show total price breakdown

    - Add edit buttons for each section
    - Create terms & conditions checkbox
    - Implement submit with loading animation
    - Show success modal with confirmation number




    - _Requirements: 3.7_


  - [x] 6.8 Implement form progress auto-save

    - Auto-save form data every 5 seconds to local storage

    - Add "Resume Draft" option on Rituals screen if incomplete form exists



    - Clear saved draft after successful submission or after 7 days
    - _Requirements: 3.8_

  - [ ] 6.9 Add smart defaults and pre-population
    - Pre-populate user name, email, phone from profile
    - Suggest popular deities based on user history

    - Pre-select most common package type



    - _Requirements: 3.9_

  - [x] 6.10 Write property-based test for form validation


    - **Property 7: Form validation completeness**
    - **Validates: Requirements 3.3**










  - [x] 6.11 Write property-based test for form persistence

    - **Property 8: Form progress persistence**
    - **Validates: Requirements 3.8**



- [x] 7. Holy Items Ecommerce Screen




  - [x] 7.1 Create Holy Items screen layout






    - Build hero banner with promotional content
    - Implement horizontal category chips (Idols, Rudraksha, Books, Puja Items, etc.)
    - Create search bar with filter icon


    - Add sort dropdown (Featured, Price, Rating, Newest)
    - Display cart icon with item count badge in header

    - _Requirements: 12.1, 12.2_




  - [ ] 7.2 Build product grid and cards
    - Create 2-column grid layout


    - Display product image (1:1 aspect ratio)










    - Add wishlist heart icon overlay
    - Show product name, rating stars, and price
    - Implement quick add to cart icon
    - _Requirements: 12.3, 12.4_

  - [ ] 7.3 Implement product filters and sort
    - Create filter drawer with price range slider
    - Add category, material, deity association filters
    - Implement rating filter
    - Show result count before applying


    - _Requirements: 12.5, 12.6_


  - [ ] 7.4 Create product detail page
    - Build swipeable image gallery with lightbox
    - Display product name, rating, and review count



    - Show pricing with original price and discount
    - Create variant selector chips (size, material, color)
    - Implement expandable description and specifications
    - Add reviews section with photos
    - Create sticky bottom bar with price and CTAs








    - _Requirements: 12.3_


  - [x] 7.5 Build shopping cart functionality




    - Create cart screen with item list
    - Implement quantity adjustment (+/- buttons)
    - Show price breakdown (subtotal, taxes, shipping)
    - Add remove item confirmation dialog
    - Display empty cart state






    - _Requirements: 12.7_







- [ ] 8. Chadhava Offering Screen
  - [ ] 8.1 Create Chadhava screen layout
    - Build horizontal category filter chips with deity icons

    - Implement featured chadhava banner (Panch Devi-Devta example)



    - Create sections for Daily Deity, Special Occasion, Life Benefit, and Prasad
    - _Requirements: 5.1_

  - [ ] 8.2 Build chadhava category grids
    - Create 2-column grid for Daily Deity Chadhava
    - Display deity circular images with names


    - Show starting price and "Offer" button

    - Implement vertical list for Special Occasion cards
    - _Requirements: 5.1_

  - [ ] 8.3 Create chadhava detail page
    - Display large deity image at top

    - Show temple name and location


    - Create visual offering type selector grid (flowers, honey, diya, coconut)





    - Implement quantity selector with +/- buttons
    - Add optional prayer message textarea (500 char limit)

    - _Requirements: 5.2, 5.3, 5.4_


  - [x] 8.4 Implement multi-temple chadhava flow

    - Create temple selection checklist
    - Calculate combined price for all temples
    - Show single booking confirmation

    - Display separate video delivery for each temple
    - _Requirements: 5.5_




  - [x] 8.5 Add video proof feature

    - Display video delivery timeframe (24-48 hours)
    - Show sample video thumbnail
    - Implement push notification when video is ready


    - Create video player for viewing offering proof


    - _Requirements: 5.6, 11.4_

- [x] 9. Temples Exploration Screen



  - [x] 9.1 Create Temples screen layout




    - Build featured temple spotlight with hero image
    - Implement horizontal category chips (All, Shaktipeeths, Jyotirlingas, Char Dham, Popular, Nearby)

    - Create 2-column temple grid

    - _Requirements: 6.1_



  - [x] 9.2 Build temple card component


    - Display temple image with rounded corners

    - Show temple name and location
    - Add rating and review count


    - Implement "View Services" button
    - _Requirements: 6.1_


  - [ ] 9.3 Create temple detail page structure
    - Build swipeable image carousel (5-10 photos)
    - Display temple name, location, and rating
    - Add favorite and share icons

    - Create quick action bar (Offer Chadhava, Live Darshan, About, Visit Guide)

    - _Requirements: 6.2_


  - [ ] 9.4 Implement temple services tabs
    - Create tabbed navigation (Chadhava, Pujas, Live Darshan, Aartis)
    - Build Chadhava options list specific to temple
    - Display Puja services with booking options
    - Implement Live Darshan embed with schedule

    - Show Aarti timings and sponsorship options

    - _Requirements: 6.3, 6.4_

  - [ ] 9.5 Add temple information sections
    - Create collapsible sections (History, Presiding Deity, Timings, Festivals, Dress Code)
    - Implement embedded map with directions button

    - Build photo and video gallery
    - Add virtual tour option (if available)
    - _Requirements: 6.5_


  - [ ] 9.6 Create temple reviews section
    - Display star rating summary with breakdown
    - Show recent reviews with photos


    - Implement filter options (Most Helpful, Recent, Highest Rated)
    - Add "Write a Review" button



    - _Requirements: 6.6_

- [ ] 10. Booking Flow and Payment Integration
  - [x] 10.1 Create booking summary screen

    - Display all selected options in summary card

    - Show total price breakdown (subtotal, taxes, delivery)
    - Add edit buttons for each section
    - Display estimated ritual date and Aashirwad Box delivery
    - _Requirements: 9.2_


  - [ ] 10.2 Implement authentication check
    - Verify user authentication before booking
    - Redirect to login/signup if not authenticated
    - Preserve booking selections after login

    - _Requirements: 9.1_

  - [ ] 10.3 Build payment gateway integration
    - Integrate payment provider (Razorpay for India market)

    - Support UPI, cards, net banking, and digital wallets
    - Implement secure payment form with TLS 1.3
    - Add installment options for bookings above ₹2000
    - Handle payment success/failure states
    - _Requirements: 9.4, 14.1, 14.3, 14.4_



  - [ ] 10.4 Implement payment retry and recovery


    - Save booking details for 15 minutes on payment failure

    - Allow payment retry without re-entering booking details
    - Display specific error reasons with user-friendly messages
    - Suggest alternative payment methods on failure
    - Send SMS recovery link for incomplete payments

    - _Requirements: 14.2, 14.6_


  - [ ] 10.5 Add payment status tracking
    - Display real-time payment processing status every 2 seconds
    - Show progress indicator during payment
    - Generate payment receipt with transaction ID and breakdown

    - _Requirements: 14.5, 14.7_




  - [ ] 10.6 Create booking confirmation screen
    - Display success icon with circular reveal animation
    - Show booking ID and reference number
    - Add countdown to ritual date
    - Display confirmation message




    - Create "View My Bookings" and "Go to Home" buttons
    - _Requirements: 9.4, 9.5_




  - [ ] 10.7 Implement booking notifications
    - Send email confirmation within 30 seconds
    - Send SMS confirmation with booking details
    - Add booking to user's Orders section
    - _Requirements: 9.5_


  - [x] 10.8 Build Aashirwad Box tracking

    - Implement real-time tracking with map view
    - Display estimated delivery time
    - Show delivery person contact information
    - Send photo confirmation on delivery



    - Request feedback within 24 hours of delivery
    - _Requirements: 9.7, 9.8_

  - [ ] 10.9 Write property-based test for authentication verification
    - **Property 13: Authentication verification**
    - **Validates: Requirements 9.1**





  - [ ] 10.10 Write property-based test for payment retry
    - **Property 14: Payment retry preservation**
    - **Validates: Requirements 14.2**





  - [x] 10.11 Write property-based test for payment encryption

    - **Property 15: Payment data encryption**

    - **Validates: Requirements 14.4**


  - [ ] 10.12 Checkpoint - Ensure booking and payment tests pass
    - Ensure all booking flow tests pass
    - Ensure all payment integration tests pass
    - Verify payment security measures
    - Ask the user if questions arise

- [ ] 11. User Profile and Orders Management
  - [ ] 11.1 Create profile screen
    - Display user avatar, name, and email

    - Show spiritual progress stats (Punya Mudra, Bhakti streak, level)
    - Create settings sections (Account, Preferences, Notifications)
    - Add logout button
    - _Requirements: 2.2_


  - [ ] 11.2 Build orders/bookings screen
    - Display list of all bookings with status
    - Implement status indicators (Upcoming, In Progress, Completed, Cancelled)
    - Show booking cards with ritual name, date, temple, and reference ID

    - Add filter by status
    - _Requirements: 9.6_


  - [ ] 11.3 Create booking detail view
    - Display complete booking information
    - Show live stream link when ritual is in progress


    - Add recorded video link after completion

    - Display Aashirwad Box tracking information


    - Implement cancel booking option with confirmation dialog
    - _Requirements: 9.6_

  - [ ] 11.4 Build notification preferences
    - Create toggles for ritual reminders, live streaming alerts, shipping updates

    - Add special occasions and promotional offers toggles

    - Save preferences to backend

    - _Requirements: 11.5_

- [x] 12. Search and Discovery Features

  - [ ] 12.1 Implement global search functionality
    - Create search bar with auto-suggestions

    - Display suggestions within 200ms of typing
    - Support search by ritual, temple, deity, location, benefit, product
    - Implement fuzzy matching for spelling variations
    - _Requirements: 13.1, 13.2_

  - [ ] 12.2 Build search results screen
    - Display categorized results (Rituals, Temples, Holy Items, Chadhava)



    - Implement filter and sort options
    - Show result count

    - Create empty state for no results with suggestions
    - _Requirements: 13.4, 13.5_

  - [ ] 12.3 Add recent searches feature
    - Save last 5 searches locally

    - Display as quick access chips below search bar

    - Implement clear individual or all searches
    - _Requirements: 13.6_


  - [x] 12.4 Implement personalized recommendations

    - Build recommendation engine based on user history
    - Display minimum 3 personalized rituals on Home screen





    - Consider past bookings, preferred deities, and auspicious dates
    - Update recommendations daily
    - _Requirements: 13.7_


  - [ ] 12.5 Write property-based test for search timing
    - **Property 11: Search suggestion speed**

    - **Validates: Requirements 13.1**

  - [ ] 12.6 Write property-based test for fuzzy matching
    - **Property 12: Fuzzy search matching**
    - **Validates: Requirements 13.2**


- [ ] 13. Notifications System
  - [ ] 13.1 Implement push notification infrastructure
    - Set up Firebase Cloud Messaging for Flutter

    - Request notification permissions from user
    - Handle notification tokens and registration
    - _Requirements: 11.1, 11.2, 11.3, 11.4, 11.5_


  - [ ] 13.2 Create notification types and handlers
    - Build ritual reminder notifications (24 hours and 1 hour before)
    - Implement live streaming start alerts

    - Create Aashirwad Box shipping notifications


    - Add chadhava video ready notifications

    - Build special occasion suggestion notifications


    - _Requirements: 11.1, 11.2, 11.3, 11.4, 11.5_

  - [x] 13.3 Implement notification preferences and quiet hours

    - Create notification settings screen with toggles

    - Implement quiet hours (10 PM - 8 AM) for non-critical notifications

    - Build notification bundling for daily digest
    - Save preferences to backend

    - _Requirements: 11.7, 11.8_



  - [x] 13.4 Build in-app notification center



    - Create notification list screen
    - Display notification badge on profile icon (max 99+)


    - Implement mark as read functionality

    - Add notification action handlers (deep linking)
    - _Requirements: 11.6_

  - [ ] 13.5 Write property-based test for notification timing
    - **Property 22: Ritual reminder timing (24 hours)**
    - **Property 23: Ritual reminder timing (1 hour)**

    - **Validates: Requirements 11.1, 11.2**

  - [ ] 13.6 Write property-based test for quiet hours
    - **Property 24: Quiet hours respect**
    - **Validates: Requirements 11.7**


- [ ] 14. Animations and Micro-interactions
  - [ ] 14.1 Implement core animations
    - Create button press animation (scale 0.98)
    - Build card hover animation (lift 4px)
    - Implement page transition animations (slide left/right)
    - Add modal fade + scale animation



    - _Requirements: 7.5, 10.6_

  - [ ] 14.2 Create loading animations
    - Build skeleton shimmer effect
    - Implement spinner rotation animation
    - Create progress bar fill animation

    - _Requirements: 10.4_

  - [ ] 14.3 Add success and feedback animations
    - Create checkmark draw animation
    - Build success circle reveal animation



    - Implement heart wishlist animation
    - Add toast slide up/down animations
    - _Requirements: 10.6_

  - [x] 14.4 Implement gesture animations

    - Create swipe carousel with momentum
    - Build pull-to-refresh animation
    - Add divine glow effect for CTAs
    - _Requirements: 7.5_


- [x] 15. Accessibility Implementation

  - [ ] 15.1 Ensure touch target compliance
    - Verify all interactive elements are minimum 44x44px
    - Add padding where needed to meet requirements
    - Test on various device sizes
    - _Requirements: 1.5, 10.1_


  - [ ] 15.2 Implement color contrast compliance
    - Verify all text meets WCAG AA standards (4.5:1 for normal, 3:1 for large)
    - Adjust colors where needed
    - Test with contrast checking tools
    - _Requirements: 10.2_


  - [ ] 15.3 Add screen reader support
    - Implement proper semantic HTML/React Native elements
    - Add ARIA labels and descriptions
    - Create focus management for modals and navigation
    - Test with screen readers (TalkBack, VoiceOver)
    - _Requirements: 10.3_


  - [ ] 15.4 Implement reduced motion support
    - Detect prefers-reduced-motion setting
    - Disable or reduce animations when enabled
    - Ensure functionality works without animations

    - _Requirements: 10.6_

- [ ] 16. Performance Optimization
  - [ ] 16.1 Implement image optimization
    - Set up lazy loading for images below fold
    - Use WebP format with fallbacks

    - Implement responsive image sizes with srcset
    - Add image caching strategy
    - _Requirements: 10.4, 10.5_

  - [x] 16.2 Optimize API calls and caching

    - Implement API response caching

    - Add request deduplication
    - Create cache invalidation strategy
    - Prefetch critical data
    - _Requirements: 10.5_


  - [ ] 16.3 Implement code splitting and lazy loading
    - Set up route-based code splitting
    - Lazy load heavy components
    - Implement dynamic imports for modals
    - _Requirements: 10.5_


  

- [ ] 17. Error Handling and Edge Cases
  - [ ] 17.1 Implement network error handling
    - Create no internet connection screen
    - Build server error (5xx) screen

    - Add retry functionality
    - Implement offline mode indicators
    - _Requirements: 10.6_

  - [ ] 17.2 Create empty states
    - Build no search results state

    - Create empty cart state
    - Implement no bookings yet state
    - Add empty wishlist state
    - _Requirements: 10.6_


  - [ ] 17.3 Implement form validation and errors
    - Create inline field error messages
    - Build form-level error summary

    - Add real-time validation feedback
    - Implement error styling (red border, background)


    - _Requirements: 10.6_


  - [ ] 17.4 Add payment error handling
    - Create payment failed screen
    - Implement retry payment functionality
    - Add change payment method option

    - Display specific error messages
    - _Requirements: 10.6_

- [ ] 18. Testing and Quality Assurance
  - [ ] 18.1 Write unit tests for core components
    - Test Button, Card, Form components

    - Test navigation components
    - Test filter and search components
    - Achieve 80% code coverage minimum

  - [ ] 18.2 Create integration tests for critical user flows
    - Test ritual booking flow end-to-end (mandatory)

    - Test payment processing flow (mandatory)
    - Test custom ritual request flow (mandatory)
    - Test holy items purchase flow
    - Test chadhava offering flow
    - Test temple exploration and booking flow


  - [ ] 18.3 Perform accessibility testing
    - Run automated accessibility tests
    - Conduct manual keyboard navigation testing
    - Test with screen readers (TalkBack on Android, VoiceOver on iOS)
    - Verify touch target sizes (minimum 44x44px)
    - Check color contrast ratios (WCAG AA compliance)


  - [ ] 18.4 Conduct performance testing
    - Test on various devices and network conditions

    - Measure key performance metrics (FCP, LCP, TTI)
    - Optimize based on findings
    - Test offline mode performance


  - [ ] 18.5 Execute cross-platform testing
    - Test on iOS devices (iPhone 12, 13, 14, iPad)
    - Test on Android devices (Samsung, Pixel, OnePlus)
    - Test various screen sizes (360px, 375px, 414px, 768px)
    - Verify consistent behavior across platforms
    - Test on different OS versions (iOS 14+, Android 10+)

  - [ ] 18.6 Security testing
    - Verify data encryption implementation
    - Test payment gateway security
    - Check for common vulnerabilities (SQL injection, XSS)
    - Verify secure storage of sensitive data
    - Test API authentication and authorization

- [ ] 19. Offline Mode Implementation
  - [ ] 19.1 Set up offline storage infrastructure
    - Configure Hive or SQLite for local data storage
    - Implement caching strategy for rituals, holy items, and temples
    - Set up cache size limits and eviction policies
    - _Requirements: 15.1_

  - [ ] 19.2 Implement offline content caching
    - Cache last 50 viewed rituals with images
    - Cache last 30 holy items with images
    - Cache last 20 temples with images
    - Implement background sync for cache updates
    - _Requirements: 15.1_

  - [ ] 19.3 Build offline indicator and browsing
    - Create persistent offline banner at top of screen
    - Allow browsing of cached content when offline
    - Disable booking and payment actions when offline
    - Show clear messaging for unavailable features
    - _Requirements: 15.2_

  - [ ] 19.4 Implement offline cart and sync
    - Allow adding items to cart while offline
    - Queue cart actions for sync when online
    - Implement sync status indicator
    - Auto-sync within 30 seconds of reconnection
    - _Requirements: 15.3, 15.4_

  - [ ] 19.5 Add offline booking intent saving
    - Save booking intent when user attempts to book offline
    - Show "Complete your booking" prompt when online
    - Preserve booking intent for 24 hours
    - _Requirements: 15.5_

  - [ ] 19.6 Write property-based test for offline content
    - **Property 31: Offline content availability**
    - **Validates: Requirements 15.1**

  - [ ] 19.7 Write property-based test for sync timing
    - **Property 33: Sync timing on reconnection**
    - **Validates: Requirements 15.3**

- [ ] 20. Data Privacy and Security Implementation
  - [ ] 20.1 Implement data encryption
    - Set up AES-256 encryption for personal data at rest
    - Use flutter_secure_storage for sensitive data
    - Implement TLS 1.3 for all API communications
    - _Requirements: 16.1, 14.4_

  - [ ] 20.2 Build privacy consent flow
    - Create privacy policy screen with clear language
    - Implement consent checkbox during signup
    - Require explicit consent before account creation
    - Store consent timestamp and version
    - _Requirements: 16.4_

  - [ ] 20.3 Create data export functionality
    - Build data export request form
    - Generate JSON export of all user data
    - Deliver export within 48 hours via email
    - Include all bookings, preferences, and profile data
    - _Requirements: 16.2_

  - [ ] 20.4 Implement account deletion
    - Create account deletion confirmation flow
    - Show data purge timeline (30 days)
    - Process complete data deletion
    - Send deletion confirmation email
    - _Requirements: 16.3_

  - [ ] 20.5 Build privacy settings screen
    - Display all data collection practices
    - Add toggle controls for optional data sharing
    - Show third-party data sharing options
    - Require opt-in for marketing communications
    - _Requirements: 16.5, 16.6_

  - [ ] 20.6 Write property-based test for encryption
    - **Property 35: Data encryption at rest**
    - **Validates: Requirements 16.1**

  - [ ] 20.7 Write property-based test for consent requirement
    - **Property 38: Privacy consent requirement**
    - **Validates: Requirements 16.4**

  - [ ] 20.8 Checkpoint - Ensure offline and privacy tests pass
    - Ensure all offline mode tests pass
    - Ensure all data privacy tests pass
    - Verify encryption implementation
    - Ask the user if questions arise

- [ ] 21. Localization and Internationalization
  - [ ] 21.1 Set up i18n framework
    - Configure flutter_localizations package
    - Set up supported locales (en, hi, ta, te)
    - Create translation JSON/ARB files structure
    - Implement language switcher in settings
    - _Requirements: 10.3_

  - [ ] 21.2 Translate all UI strings
    - Translate navigation labels and tab names
    - Translate form labels and placeholders
    - Translate validation messages and errors
    - Translate empty states and error messages
    - Translate button labels and CTAs
    - _Requirements: 10.3_

  - [ ] 21.3 Implement Devanagari font support
    - Add Noto Sans Devanagari font for Hindi
    - Configure proper font rendering for Indian languages
    - Test text rendering across all languages
    - _Requirements: 7.2_

  - [ ] 21.4 Handle date, time, and currency formatting
    - Implement locale-specific date formatting
    - Format currency with ₹ symbol and Indian numbering
    - Handle time zone conversions for ritual scheduling
    - _Requirements: 10.3_

  - [ ] 21.5 Implement RTL support (future-proofing)
    - Configure bidirectional text support
    - Test layout mirroring for RTL languages
    - Ensure icons and images work in RTL mode
    - _Requirements: 10.3_

  - [ ] 21.6 Create translation management workflow
    - Set up process for adding new translations
    - Create translation keys documentation
    - Implement missing translation fallbacks
    - Add translation coverage testing

- [ ] 22. Final Polish and Launch Preparation
  - [ ] 22.1 Implement dark mode support
    - Create dark mode color tokens
    - Implement theme switching functionality
    - Test all screens in dark mode
    - Respect system preference
    - _Requirements: 7.1, 7.2_

  - [ ] 22.2 Add analytics tracking
    - Integrate Firebase Analytics for Flutter
    - Track key user events (screen views, bookings, purchases)
    - Set up conversion funnels
    - Create custom events for important actions
    - Implement privacy-compliant analytics with user consent

  - [ ] 22.3 Create onboarding flow
    - Build welcome screens for new users
    - Create feature highlights carousel (3-4 screens)
    - Implement skip and get started options
    - Show only on first launch
    - Include language selection on first screen

  - [ ] 22.4 Prepare app store assets
    - Create app icon in all required sizes (iOS and Android)
    - Design app store screenshots (5-8 per platform)
    - Write app description and keywords for ASO
    - Prepare promotional graphics and feature graphics
    - Create app preview videos (optional)

  - [ ] 22.5 Final QA and bug fixes
    - Conduct comprehensive testing on all features
    - Fix any remaining bugs
    - Verify all requirements are met
    - Perform final performance optimization
    - Test on multiple devices (iOS and Android)
    - Verify all property-based tests pass
    - Complete security audit checklist

- [ ] 23. Booking Modification and Rescheduling
  - [ ] 23.1 Implement rescheduling functionality
    - Create reschedule booking screen
    - Display available dates with muhurat indicators
    - Calculate rescheduling fee (free if 48+ hours, 10% if <48 hours)
    - Update booking with reschedule history
    - Send confirmation email and SMS
    - _Requirements: 17.1, 17.2, 17.3_

  - [ ] 23.2 Build cancellation flow
    - Create cancellation confirmation dialog
    - Display refund amount based on cancellation time
    - Add optional cancellation reason dropdown
    - Process cancellation and update booking status
    - Trigger refund workflow
    - Send cancellation confirmation
    - _Requirements: 17.4, 17.5, 17.6, 17.7_

  - [ ] 23.3 Implement refund processing
    - Calculate refund amount based on cancellation policy
    - Create refund transaction record
    - Integrate with payment gateway refund API
    - Track refund status (pending, processed, failed)
    - Send refund confirmation with timeline
    - Handle partial refunds for rescheduling fees
    - _Requirements: 17.4, 17.5, 17.6, 17.7_

  - [ ] 23.4 Handle temple-initiated cancellations
    - Create admin interface for temple cancellations
    - Process 100% refund automatically
    - Award compensation credit (₹100 or ₹200 based on notice)
    - Send immediate notification to devotee
    - Suggest 3 alternative rituals
    - _Requirements: 17.8_

  - [ ] 23.5 Write property-based test for rescheduling
    - **Property 41: Free rescheduling window**
    - **Property 42: Rescheduling fee calculation**
    - **Validates: Requirements 17.1, 17.2**

  - [ ] 23.6 Write property-based test for refunds
    - **Property 43: Refund amount calculation**
    - **Property 44: Temple cancellation compensation**
    - **Validates: Requirements 17.4-17.8**

- [ ] 24. Payment Recovery and Failure Handling
  - [ ] 24.1 Implement payment state persistence
    - Save booking details to local storage on payment initiation
    - Store payment attempt history
    - Set 24-hour expiry for saved state
    - Clear saved state on successful payment
    - _Requirements: 18.1_

  - [ ] 24.2 Build payment recovery flow
    - Detect incomplete bookings on app launch
    - Display "Complete Your Booking" banner/modal
    - Restore all booking selections
    - Allow payment retry with saved details
    - Track recovery conversion rate
    - _Requirements: 18.2_

  - [ ] 24.3 Create payment dispute resolution
    - Build dispute form with order details
    - Capture transaction ID and payment method
    - Upload payment proof (screenshot)
    - Submit to customer support system
    - Display support contact information
    - _Requirements: 18.3_

  - [ ] 24.4 Implement transaction verification
    - Create admin tool to verify payment status
    - Check payment gateway for transaction
    - Auto-confirm booking if payment found
    - Process refund if duplicate charge detected
    - Send resolution notification within 2 hours
    - _Requirements: 18.4_

  - [ ] 24.5 Build SMS recovery system
    - Generate unique recovery link for incomplete payment
    - Send SMS with link valid for 24 hours
    - Handle deep link to resume payment
    - Track SMS recovery conversion rate
    - _Requirements: 18.5_

  - [ ] 24.6 Create alternative payment method suggestions
    - Detect payment failure patterns
    - Suggest alternative methods based on failure reason
    - Display customer support contact
    - Offer payment assistance via chat/call
    - _Requirements: 18.6_

  - [ ] 24.7 Write property-based test for payment recovery
    - **Property 45: Booking state preservation**
    - **Property 46: Recovery prompt display**
    - **Property 47: SMS recovery link validity**
    - **Validates: Requirements 18.1, 18.2, 18.5**

- [ ] 25. Service Failure Recovery
  - [ ] 25.1 Implement live stream failure handling
    - Detect live stream failures automatically
    - Start automatic recording as backup
    - Send immediate notification to devotee
    - Process 20% refund within 3-5 days
    - Deliver recorded video within 24 hours
    - _Requirements: 19.1, 19.2_

  - [ ] 25.2 Build Aashirwad Box issue resolution
    - Create issue reporting form (lost, damaged, delayed)
    - Require photo proof for damaged items
    - Process full refund for lost items
    - Ship free replacement within specified timeline
    - Award compensation credits for delays
    - Track issue resolution status
    - _Requirements: 19.3, 19.4, 19.5_

  - [ ] 25.3 Handle video proof delays
    - Monitor video delivery timelines
    - Send proactive notification at 48-hour mark
    - Award ₹50 credit for delays
    - Escalate to temple partner if >72 hours
    - Offer photo proof alternative
    - _Requirements: 19.6_

  - [ ] 25.4 Create compensation credit system
    - Build credit wallet for devotees
    - Auto-apply credits to next booking
    - Display credit balance in profile
    - Track credit expiry (6 months)
    - Send credit expiry reminders
    - _Requirements: 19.5, 19.6, 19.7_

  - [ ] 25.5 Write property-based test for service recovery
    - **Property 48: Live stream failure compensation**
    - **Property 49: Lost Aashirwad Box recovery**
    - **Property 50: Video proof delay compensation**
    - **Validates: Requirements 19.1-19.6**

- [ ] 26. Promotional System
  - [ ] 26.1 Build promo code system
    - Create promo code data model
    - Implement code validation logic
    - Build admin interface for code creation
    - Support percentage and fixed-amount discounts
    - Set usage limits (total and per-user)
    - Add expiry date handling
    - _Requirements: 20.1_

  - [ ] 26.2 Implement promo code application
    - Add promo code input field on checkout
    - Validate code in real-time
    - Display discount amount immediately
    - Show specific error messages for invalid codes
    - Apply discount to total price
    - Track promo code usage
    - _Requirements: 20.1, 20.6_

  - [ ] 26.3 Create referral system
    - Generate unique referral code for each devotee
    - Build referral sharing interface (WhatsApp, SMS, email)
    - Track referral signups via code
    - Award ₹100 credit to both parties on first booking
    - Display referral stats in profile
    - Send referral success notifications
    - _Requirements: 20.2_

  - [ ] 26.4 Implement festival pricing
    - Create festival calendar with pricing rules
    - Apply 10-20% discount during festivals
    - Display festival badge on affected rituals
    - Show original and discounted prices
    - Track festival promotion performance
    - _Requirements: 20.3_

  - [ ] 26.5 Build tier-based discount system
    - Track completed ritual count per devotee
    - Unlock "Dedicated Devotee" tier at 5 rituals
    - Auto-apply 15% discount for tier members
    - Display tier badge in profile
    - Show tier benefits on booking screen
    - _Requirements: 20.4_

  - [ ] 26.6 Create promo code restrictions
    - Implement one-code-per-booking rule
    - Add minimum order value checks
    - Restrict codes to specific categories
    - Support first-time user only codes
    - Display restriction messages clearly
    - _Requirements: 20.7_

  - [ ] 26.7 Write property-based test for promotions
    - **Property 51: Promo code validation**
    - **Property 52: Referral reward distribution**
    - **Property 53: Tier discount application**
    - **Validates: Requirements 20.1, 20.2, 20.4**

- [ ] 27. Gamification System
  - [ ] 27.1 Implement Punya Mudra points system
    - Award points on ritual completion (10/25/50 based on package)
    - Award points for chadhava offerings (5/15)
    - Award points for holy item purchases (2 per ₹100)
    - Award points for reviews (5/10 with/without photo)
    - Display points balance in profile
    - Create points transaction history
    - _Requirements: 21.1_

  - [ ] 27.2 Build badge system
    - Create badge definitions (First Ritual, 5 Rituals, etc.)
    - Detect milestone achievements
    - Unlock badges automatically
    - Display badge unlock animation
    - Show badge collection in profile
    - Add badge sharing functionality
    - _Requirements: 21.2_

  - [ ] 27.3 Implement Bhakti Streak tracking
    - Track daily app activity
    - Calculate consecutive day streaks
    - Display current and longest streak
    - Award bonus points for 7-day and 30-day streaks
    - Show streak calendar visualization
    - _Requirements: 21.3_

  - [ ] 27.4 Create streak break recovery
    - Detect broken streaks (7+ days)
    - Send encouragement notification
    - Display motivational quote
    - Offer "streak freeze" feature (1 per month)
    - Track streak recovery rate
    - _Requirements: 21.4_

  - [ ] 27.5 Build level progression system
    - Calculate level based on Punya Mudra points
    - Display level progress bar
    - Show benefits for each level
    - Trigger level-up animation
    - Award tier-specific discounts (0%/5%/10%/15%)
    - Send level-up celebration notification
    - _Requirements: 21.6_

  - [ ] 27.6 Create monthly progress report
    - Generate monthly summary email
    - Include rituals completed count
    - Show Punya Mudra earned
    - List badges unlocked
    - Display level progress
    - Add personalized recommendations
    - _Requirements: 21.5_

  - [ ] 27.7 Build level-up celebration
    - Create celebration animation (confetti, glow)
    - Display level-up modal with benefits
    - Play celebration sound (optional)
    - Trigger haptic feedback
    - Share achievement option
    - _Requirements: 21.7_

  - [ ] 27.8 Write property-based test for gamification
    - **Property 54: Punya Mudra point allocation**
    - **Property 55: Badge unlock timing**
    - **Property 56: Bhakti Streak calculation**
    - **Property 57: Level progression**
    - **Validates: Requirements 21.1, 21.2, 21.3, 21.6**

- [ ] 28. Analytics and Metrics
  - [ ] 28.1 Implement conversion funnel tracking
    - Track: Home → Ritual Detail → Package Selection → Date → Payment → Success
    - Identify drop-off points at each step
    - Set up funnel visualization in analytics dashboard
    - Create alerts for unusual drop-off rates (>50%)
    - Track custom ritual funnel separately
    - _Requirements: All booking requirements_

  - [ ] 28.2 Set up A/B testing framework
    - Integrate Firebase Remote Config or similar
    - Create experiment tracking system
    - Define key metrics for experiments
    - Test: Custom ritual CTA placement (top vs floating)
    - Test: Package selection layout (cards vs list)
    - Track experiment results and statistical significance

  - [ ] 28.3 Implement key performance indicators
    - Track daily/monthly active users (DAU/MAU)
    - Monitor booking conversion rate
    - Track cart abandonment rate
    - Measure average order value (AOV)
    - Monitor payment success rate
    - Track retention rates (D1, D7, D30)

  - [ ] 28.4 Create business metrics dashboard
    - Display total bookings and revenue
    - Show top performing rituals
    - Track temple partner performance
    - Monitor refund and cancellation rates
    - Display promotional code effectiveness
    - Show gamification engagement metrics

- [ ] 29. Flutter-Specific Optimizations
  - [ ] 29.1 Configure Riverpod state management
    - Set up ProviderScope at app root
    - Create providers for auth, bookings, cart, user profile
    - Implement StateNotifier for complex state
    - Set up AsyncValue for API data handling
    - Add provider observers for debugging

  - [ ] 29.2 Implement go_router for navigation
    - Set up route definitions with deep linking
    - Implement auth guards for protected routes
    - Add redirect logic for unauthenticated users
    - Support query parameters for tracking
    - Handle navigation state restoration

  - [ ] 29.3 Apply Flutter performance optimizations
    - Use const constructors wherever possible
    - Implement RepaintBoundary for complex widgets
    - Use ListView.builder for long lists
    - Implement image caching with cached_network_image
    - Use compute() for heavy computations (JSON parsing)
    - Profile with Flutter DevTools and fix jank

  - [ ] 29.4 Implement platform-specific adaptations
    - Use Cupertino widgets for iOS pickers and dialogs
    - Implement Material Design 3 for Android
    - Add platform-specific haptic feedback
    - Support iOS pull-to-refresh and Android swipe-to-refresh
    - Test on both platforms for consistency

  - [ ] 29.5 Add certificate pinning for security
    - Pin production API certificates
    - Implement certificate validation
    - Add fallback mechanism for certificate rotation
    - Test certificate pinning on both platforms

- [ ] 30. Final Launch Preparation
  - [ ] 30.1 Conduct chaos engineering tests
    - Simulate payment gateway downtime
    - Test with intermittent network connectivity
    - Verify graceful degradation of features
    - Test database connection failures
    - Simulate API rate limiting

  - [ ] 30.2 Complete load testing
    - Test 100 concurrent users browsing
    - Test 50 concurrent users booking rituals
    - Test 25 concurrent users making payments
    - Simulate peak load during festivals (10x normal)
    - Monitor server response times and optimize

  - [ ] 30.3 Execute beta testing program
    - Recruit 50-100 beta testers
    - Distribute via TestFlight (iOS) and Play Console (Android)
    - Collect feedback via in-app surveys
    - Track crash reports and fix critical issues
    - Iterate based on beta feedback

  - [ ] 30.4 Create launch checklist
    - Verify all P0 requirements implemented
    - Confirm all property-based tests passing
    - Complete security audit
    - Verify payment gateway in production mode
    - Test push notifications in production
    - Prepare rollback plan
    - Set up monitoring and alerting
    - Prepare customer support documentation

  - [ ] 30.5 Checkpoint - Final verification
    - Ensure all critical features working
    - Verify all tests passing (unit, integration, property-based)
    - Confirm analytics tracking correctly
    - Test on multiple devices and OS versions
    - Verify app store assets ready
    - Get final stakeholder approval
