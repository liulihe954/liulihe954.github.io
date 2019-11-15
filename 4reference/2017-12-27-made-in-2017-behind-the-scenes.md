---
layout: post
title: Made in 2017 - Behind the Scenes
permalink: /mashups/made-in-2017/behind-the-scenes
date: 2017-12-27
description: how I made my 2017 year-end mashup
img: made-in-2017-full.jpg
tags: [music, mashup, software]
---

A couple weeks ago, I released my annual year-end mashup on YouTube. It's been a tradition since 2013 when I made my [first one](https://youtu.be/9lwkMQOjzo0), which went somewhat viral. Over the years, I've fine-tuned an effective workflow for mashup creation which this post will describe.

YouTube video: <https://youtu.be/wQA59PXOguc>

SoundCloud track: <https://soundcloud.com/victorlin/made-in-2017>

## Overview

A mashup is a collection of 2 or more different songs in a single composition.

To begin, each song has two important features that are used: **key** and **tempo**. A song's key tells what pitches it is composed in, and its tempo tells the pace in terms of beats per minute. Both these features can be altered by software to match those of another song.

There are 3 steps to the workflow, listed below. I've also added the amount of time I spent on each step, tracked using [Timing](https://timingapp.com).

1. Stem Collection (8 hours)
2. Audio Compilation (34 hours)
3. Video Compilation (11 hours)

Total: 53 hours

## 1. Stem Collection

Separate audio files for vocals and instrumentals of each song are needed so they can be mixed together. This is the most tedious task of all, requiring massive amounts of manual web scraping and the occasional audio editing for vocals using the [phase cancellation technique](https://manual.audacityteam.org/man/tutorial_vocal_removal_and_isolation.html#isolate). Here are some good resources:

- <http://acapellas.eu/>
- <http://producerarea.net/>
- <https://www.reddit.com/r/IsolatedVocals/>
- <https://www.reddit.com/r/SongStems> RIP :(
- [YouTube – MS Project Sound](https://www.youtube.com/channel/UC83vT9w9gKWQUTDeCNlEjyA/)
- [YouTube – DirectionHQ](https://www.youtube.com/channel/UCj-ac9vJNHJe5noWymjjeYw)

What sucks is how boring but important this step is. I'll often find myself skipping ahead and mixing a few stems, but it's crucial to know exactly what songs can be used. Sometimes a song can go well with another, but that's useless if stems aren't available.

## 2. Audio Compilation

{% include image.html
            img="assets/img/made-in-2017-logic.jpg"
            title="Made in 2017 Logic project"
            caption="mixing in Logic Pro (2:34 - 3:00 in the video)" %}

This step is the where the mashup itself is made. It can be broken down into 3 parts: **exploring**, **mixing**, and **mastering**.

### Exploring

To get a feel of which songs go well together, I first load them all up in **djay Pro**. The nice thing about this software is that it can be linked to a Spotify Premium account for unlimited access to music. Even better, Spotify already has key and tempo information for each song (with some errors).

The aim here is to find key/tempo combinations that work well for several songs. I like to use combinations that match at least one of the songs perfectly so I can use the original instrumental file without any modification. This involves a lot of trial and error, playing different combinations of songs on top of each other, and listening to the chord progressions.

{% include image.html
            img="assets/img/made-in-2017-notes.jpg"
            title="Made in 2017 planning notepad"
            caption="some planning on a digital notepad" %}

### Mixing

Once I have an idea which songs should be put together, they are mixed in a production environment. I use **Melodyne** for vocal pitch correction and **Logic Pro** to line everything up. In the screenshot of the Logic project, you can see that I overlay the vocals of many songs and choose from sections of each.

Logic Pro is a powerful Digital Audio Workstation (DAW) that is used by professionals such as Alesso, Coldplay, and Kendrick Lamar. It has a large toolset that I am barely touching for mashups.

### Mastering

After the tracks are all lined up, the mix can sound muddy since each vocal was already mastered/optimized for its original instrumental and style. This is where Logic Pro's powerful toolset comes in handy. The tools I use the most are EQ, reverb, low/high pass filter, echo, and limiter. The tools can be applied to each vocal track so they blend better with the underlying instrumental track.

## 3. Video Compilation

{% include image.html
            img="assets/img/made-in-2017-fcpx.jpg"
            title="Made in 2017 FCPX project"
            caption="video editing in Final Cut Pro" %}

This part is the most straightforward since everything is pretty much put together. All that needs to be done is to download the music videos of the songs and put the clips together in **Final Cut Pro**. I try to find clips of artists singing their lyrics and change the speed based on how much it was changed in the mixing step. Then I add some fancy intro and overlay the song titles on the bottom. With my first few mashups, I added the song titles using YouTube annotations in a style similar to [Daniel Kim](https://www.youtube.com/user/kimaginati0n/)'s. This was very tedious and they would often glitch with new YouTube updates. I figured it's better to keep the song titles permanently embedded than have no song titles at all, for viewers' knowledge.

The final step is uploading to YouTube for the world to see!
