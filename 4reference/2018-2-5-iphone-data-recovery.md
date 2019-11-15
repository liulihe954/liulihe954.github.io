---
layout: post-no-cover
title: Corrupt iPhone 6 – Data Recovery
date: 2018-2-5
description: Retrieving data from a corrupt iPhone 6
img: apple-logo.gif
tags: [apple, ios]
---

Last year, someone gave me her iPhone 6 for diagnosis. She said it would randomly restart during use, and suspected it had to do with nearing full storage. The phone then came to the point where it would not boot past the Apple logo. iOS version was unknown since the phone was not readable by my mac. All the other “boot loop” solutions found online did not work.

## Symptoms

- Turns on and shows the Apple logo for roughly 2 minutes and 10 seconds, then turns back off.
- Does not turn back on by itself (not a boot loop).
- Turns on without being plugged in and draws current when both on/off (not a battery issue).
- Does not show up in iTunes EXCEPT when placing it in **DFU mode**.
- In DFU mode, the serial number of the iPhone shows as **NA** in iTunes. There might have been an option to restore but I did not attempt it since the goal was data recovery.

## The Fix

The solution was to put it in **recovery mode** by plugging the phone in to turn it on, then holding the home button down. The key is to hold it down for the **ENTIRE 2 minutes and 10 seconds**. Letting go any earlier would cause it to turn off instead of entering recovery mode.

{% include image.html
            img="assets/img/recovery-mode-vs-dfu-mode.jpg"
            title="quicklook-csv" %}

After entering recovery mode, the iTunes logo with the data cable icon appears on the screen. The phone can then be recognized in iTunes including the serial number. There was then an option to restore OR upgrade. I chose to upgrade to the latest iOS (iOS 11.0.3), and the upgrade ran smoothly.

Since the phone works fine with the upgrade, something must have been wrong with the previous operating system that prevented proper booting. Unfortunately, I was unable to get information on which iOS version was installed previously.
