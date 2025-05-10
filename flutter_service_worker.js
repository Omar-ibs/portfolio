'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"assets/AssetManifest.bin": "61e2ae056eace9ead457f7b815424418",
"assets/AssetManifest.bin.json": "79643265fe0e599965f11a821fc9c942",
"assets/AssetManifest.json": "ed6b28c362fa62bef5f90f45d4111392",
"assets/assets/fonts/poppins/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/poppins/Poppins-BlackItalic.ttf": "e9c5c588e39d0765d30bcd6594734102",
"assets/assets/fonts/poppins/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/poppins/Poppins-BoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/assets/fonts/poppins/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/poppins/Poppins-ExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/assets/fonts/poppins/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/assets/fonts/poppins/Poppins-ExtraLightItalic.ttf": "a9bed017984a258097841902b696a7a6",
"assets/assets/fonts/poppins/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/assets/fonts/poppins/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/poppins/Poppins-LightItalic.ttf": "0613c488cf7911af70db821bdd05dfc4",
"assets/assets/fonts/poppins/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/poppins/Poppins-MediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/assets/fonts/poppins/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/poppins/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/poppins/Poppins-SemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/assets/fonts/poppins/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/assets/fonts/poppins/Poppins-ThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/assets/fonts/Work_Sans/WorkSans-Italic-VariableFont_wght.ttf": "07733191faaacc2ad581ffe0b6235b90",
"assets/assets/fonts/Work_Sans/WorkSans-VariableFont_wght.ttf": "c3972579bd5cb0090c0c9fc6201fda19",
"assets/assets/images/MyPic.JPG": "2df359bf2a65ed135d48ef4226de33ad",
"assets/assets/projects/bookly_cover.png": "392752f66343715074bc5c18c92ac6cf",
"assets/assets/projects/bookly_details_page.png": "afe241774d4afdb377788d61434d1967",
"assets/assets/projects/bookly_main_page.png": "8d0fa201bc86c347d9a9a0a4ce27ae7f",
"assets/assets/projects/bookly_search_page.png": "98f421038b98a76143683f07cc8e603e",
"assets/assets/projects/bookly_splash_page.png": "1afb3e351904c16f196f38379909b44f",
"assets/assets/projects/cozo_account_page.png": "33e6fec4104c55cb757fe6693515c8ae",
"assets/assets/projects/cozo_add_new_coupon.png": "bd1b24ba5a71dee2e61673e0b51027f4",
"assets/assets/projects/cozo_add_new_store.png": "1c9e8d43c418a500e6546f8cbacc7992",
"assets/assets/projects/cozo_cover.png": "27f7aacda333b831f9dc3b01d6e8ca41",
"assets/assets/projects/cozo_explore_page.png": "de59b5cb55a67238a584549f802d3da2",
"assets/assets/projects/cozo_favourite_page.png": "6cda7f2929fd205d0633e4da13109685",
"assets/assets/projects/cozo_home_page.png": "48dd9f5e309941f1f60899c3f2c705f5",
"assets/assets/projects/cozo_login_page.png": "a0612aa87b740217ac306788f414cb38",
"assets/assets/projects/cozo_notifications_page.png": "96088e52b784fc3e4aa5b1cbc5c5ee51",
"assets/assets/projects/cozo_onboarding_first_page.png": "fdb5138d5727212ac90cb14df7c74015",
"assets/assets/projects/cozo_onboarding_last_page.png": "db2b0451f414119bcf8460884f763bde",
"assets/assets/projects/cozo_splash_page.png": "3e9f1def847724727a3a2869d1753482",
"assets/assets/projects/cozo_store_profile.png": "1c9c860a36135b0aaba629ba013bfaec",
"assets/assets/projects/currency_cover.png": "5dadd8b44cddb5861c6148169990359d",
"assets/assets/projects/currency_tracker_eur.png": "6331ea0c3344a549ca8e0407c38cbc52",
"assets/assets/projects/currency_tracker_gbp.png": "2fc34315da34e3ec129066a503202054",
"assets/assets/projects/currency_tracker_usd.png": "9427fc5be5b53fff05ffa009192dbcac",
"assets/assets/projects/flash_chat_initial_page.png": "3901e76107e05c0f0b9c2407df78e3d7",
"assets/assets/projects/flash_chat_login_page.png": "78be514ae4ba50bf6e56a0f90d5d0500",
"assets/assets/projects/perfumes_account_page.png": "81966f68cbe12817efa2648e9cc77df1",
"assets/assets/projects/perfumes_buy_page.png": "54b7770ddff8bd2ee2c53e72e55eb3b4",
"assets/assets/projects/perfumes_cover.png": "d7d2925bd62e12a133e120660c3baad1",
"assets/assets/projects/perfumes_details_page.png": "40a6a72e2c3171ab2ab7f6e43e787ced",
"assets/assets/projects/perfumes_home_page.png": "a29b6681f904eb5eadf5780320a6e7d0",
"assets/assets/projects/perfumes_see_all_page.png": "568e298c792622eb1a074481183b4475",
"assets/assets/projects/responsive_dashboard_full_page.png": "062a15529799440fc3af55b1914ada87",
"assets/assets/projects/responsive_dashboard_lower_page.png": "3ccfe50206b3a072e0ab5f8e37801084",
"assets/assets/projects/responsive_dashboard_mobile_page.png": "85ea8fc01605cf3764679b2f5ec3ff76",
"assets/assets/projects/responsive_dashboard_second_mobile_page.png": "28e3972b7eb164199ac29ac3293c4a7a",
"assets/assets/projects/responsive_dashboard_second_tablet_page.png": "b84a02b20571f7489250b26e4d0ad51a",
"assets/assets/projects/responsive_dashboard_tablet_page.png": "9455115bae461b8fcc745774907eba39",
"assets/FontManifest.json": "f2a0ef115fba260bf142e874eade3061",
"assets/fonts/MaterialIcons-Regular.otf": "4b7140a712a9d97e539bcb084ba9ccd0",
"assets/NOTICES": "713b99add4f274ec446b158272f2a5cd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "7862f8ebed764fdf167b55ab5b71a9ca",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "510120590b61e2d30c387d4022ef629e",
"/": "510120590b61e2d30c387d4022ef629e",
"main.dart.js": "e579716092c1992728bc4550ecdf59b5",
"manifest.json": "e74af8957b5899dc6da961caee768ec9",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
