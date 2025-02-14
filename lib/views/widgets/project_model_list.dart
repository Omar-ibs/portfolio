import 'package:portfolio/utils/github_links.dart';
import 'package:portfolio/utils/projects_images.dart';
import 'package:portfolio/views/widgets/project_model.dart';

class ProjectModelList {
  List<ProjectModel> projectModel = [
    ProjectModel(
        projectImages: [
          Assets.projectsCozoSplashPage,
          Assets.projectsCozoOnboardingFirstPage,
          Assets.projectsCozoOnboardingLastPage,
          Assets.projectsCozoLoginPage,
          Assets.projectsCozoHomePage,
          Assets.projectsCozoExplorePage,
          Assets.projectsCozoFavouritePage,
          Assets.projectsCozoAccountPage,
          Assets.projectsCozoAddNewStore,
          Assets.projectsCozoAddNewCoupon,
          Assets.projectsCozoStoreProfile,
          Assets.projectsCozoNotificationsPage,
        ],
        projectName: 'COZO',
        projectLink: null,
        description:
            'Cozo is a coupon management app designed to help users find, organize, and redeem the best deals and discounts available. Built using Flutter with a Supabase backend, Cozo provides a seamless experience for browsing and saving coupons. The app features a user-friendly interface with multiple tabs that retain their state for smooth navigation. Cozo\'s real-time updates and state management using BLoC ensure that users can quickly access the latest offers, making it a convenient tool for saving money on their favorite products and services.'),
    ProjectModel(
        projectImages: [
          Assets.projectsPerfumesHomePage,
          Assets.projectsPerfumesSeeAllPage,
          Assets.projectsPerfumesDetailsPage,
          Assets.projectsPerfumesBuyPage,
          Assets.projectsPerfumesAccountPage,
        ],
        projectName: 'Perfumes Store',
        projectLink: GithubLinks.perfumesApp,
        description:
            'Perfumes App is a beautifully designed UI for an online perfume shop, created using Flutter. The app showcases a wide variety of perfumes with elegant layouts, focusing on delivering a visually appealing and smooth user experience. The design features a modern interface with categorized product listings, detailed perfume descriptions, and high-quality images. Although primarily a UI project, it demonstrates a strong understanding of responsive design principles and attention to detail, making it a solid foundation for a full-fledged e-commerce platform in the future.'),
    ProjectModel(
        projectImages: [
          Assets.projectsBooklySplashPage,
          Assets.projectsBooklyDetailsPage,
          Assets.projectsBooklyMainPage,
          Assets.projectsBooklySearchPage,
        ],
        projectName: 'Bookly',
        projectLink: GithubLinks.bookLy,
        description:
            'Bookly is a sleek and intuitive app designed for book enthusiasts to explore, organize, and track their reading lists. Built using Flutter, the app features a modern and user-friendly interface that allows users to browse a wide collection of books, view detailed information, and add titles to their personal reading lists. Bookly focuses on enhancing the user experience with a clean layout and smooth navigation, making it easy for users to discover new books and keep track of their reading progress. This project showcases expertise in Flutter\'s UI development and state management, laying the groundwork for a comprehensive digital library platform.'),
    ProjectModel(
        projectImages: [
          Assets.projectsResponsiveDashboardLowerPage,
          Assets.projectsResponsiveDashboardTabletPage,
          Assets.projectsResponsiveDashboardSecondTabletPage,
          Assets.projectsResponsiveDashboardMobilePage,
          Assets.projectsResponsiveDashboardSecondMobilePage,
        ],
        projectName: 'Responsive Dashboard',
        projectLink: GithubLinks.responsiveDashboard,
        description:
            'Responsive Dashboard is a versatile Flutter project designed to provide a dynamic and adaptable user interface for various screen sizes. The dashboard features a clean and intuitive design that automatically adjusts its layout to provide an optimal user experience on both mobile and desktop devices. It includes interactive widgets, data visualization components, and a multi-panel layout that seamlessly reorganizes based on screen dimensions. This project demonstrates a strong grasp of responsive and adaptive design principles in Flutter, ensuring a consistent and fluid user experience across different platforms.'),
    ProjectModel(
        projectImages: [
          Assets.projectsCurrencyTrackerUsd,
          Assets.projectsCurrencyTrackerEur,
          Assets.projectsCurrencyTrackerGbp,
        ],
        projectName: 'Crypto Currency Tracker',
        projectLink: GithubLinks.bitcoinTracker,
        description:
            'Cryptocurrency Tracker is a Flutter app designed to provide users with real-time data on various cryptocurrencies. The app features a clean and intuitive interface that displays up-to-date information on coin prices, market trends, and trading volumes. Users can track their favorite cryptocurrencies, view detailed price charts, and stay informed about the latest market movements. The app\'s responsive design ensures a seamless experience on both mobile and tablet devices. This project highlights skills in API integration, data handling, and UI design, making it a valuable tool for anyone interested in the crypto market.'),
  ];
}
