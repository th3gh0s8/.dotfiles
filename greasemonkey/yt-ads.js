/* // ==UserScript==
// @name         Auto Skip YouTube Ads
// @version      1.1.0
// @description  Speed up and skip YouTube ads automatically
// @author       jso8910 and others
// @match        *://*.youtube.com/*
// ==/UserScript==


document.addEventListener('load', () => {
    const btn = document.querySelector('.videoAdUiSkipButton,.ytp-ad-skip-button-modern')
    if (btn) {
        btn.click()
    }
    const ad = [...document.querySelectorAll('.ad-showing')][0];
    if (ad) {
        document.querySelector('video').currentTime = 9999999999;
    }
}, true); */

// ==UserScript==
// @name         Smart YouTube Ad Skipper
// @version      1.2.0
// @description  Automatically skip YouTube ads without breaking playlists
// @author       ghost (based on jso8910's work)
// @match        *://*.youtube.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';

    const observer = new MutationObserver(() => {
        // Try to find the skip button
        const skipButton = document.querySelector('.ytp-ad-skip-button, .ytp-ad-skip-button-modern');
        if (skipButton) {
            skipButton.click();
            console.log('[AdSkipper] Skip button clicked.');
        }

        // Detect if an ad is playing
        const adContainer = document.querySelector('.ad-showing');
        const video = document.querySelector('video');

        if (adContainer && video && video.duration < 15) {
            // Only fast-forward short ad videos, not main content
            video.currentTime = video.duration;
            console.log('[AdSkipper] Fast-forwarded ad video.');
        }
    });

    // Watch for changes in the DOM that might indicate ad status
    observer.observe(document.body, {
        childList: true,
        subtree: true
    });

    console.log('[AdSkipper] Script loaded.');
})();

