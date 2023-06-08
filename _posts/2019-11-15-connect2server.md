---
title: 'Connect to a remote server through RStudio'
date: 2019-11-15
excerpt: "Mini tutorial of using RStudio to connect to a remote server and execute local codes, then you can harness the great power of your computing server while enjoying the fancy features of RStudio. "
permalink: /posts/2019/11/blog-post-1/
tags:
  - rstudio
  - remote-server
  - productivity
---

Eealier, I found it a little bit annoying to incorporate the power of the server computer into a dynamic development process. Well, two working "mode" I usually in are  

  - developing mode, where I take a subset (smaller and lighter) of the dataset then develop and test the codes on RStudio (locally),  

  - script-running mode, where I apply the tesed script to the whole dataset in with high-perfromance server [hypergator](https://www.rc.ufl.edu/services/hipergator/), and I need (Mac) terminal for this. This may introduce extra work, like, tedious local-remote file (dataset and codes) transfering and switching from window to window. Also, to some extent, conducting computation is a burden to the laptop itself.


I ever tried to work, completely, in the terminal (server), and it does not feel so comfortable, mainly for three resons,

  - not easy to test a truck of codes for multiple times, unless I open multiple windows in my terminal,  

  - not friendly to read the codes since it's not easy to have colored codes in the terminal,   

  - no easy to working with multiple scripts and to use the grapical features coming with RStudio, RStudio can accommodate multiple scripts (as small tabs) while it seems not possible to fit several tabs within one terminal window.   

At the same time, I thought about woring completely on my local Mac, and I reallized it would be even more frustrating to download all those huge files entirely. Memory and storage space are the limitations.

However things changed when I happen to find that RStudio can send anything to the terminal, it bridges the gap to a large extent. Well basically, RStudio can send the line where you cursor stands or any piece of code you selected to terminal, and it's not limited to R codes. This will help you to send commands to the terminal while still stay in the RStudio interface and empowered with all the fancy features, such as, color annotation, auto indentation, multi-tab windows, search and replease and the flexibility of select-and-run. This interactive way of developing experience is just so great.

But remeber, this is just helping you sending thing up to the cluster, so all the objects and output will never show up in your local enviornment. Also, the output file will be in your server and need to be downloaded with a nice FTP. Normally I would use command line "scp PATH-TO-FILE PATH-TO-DESTINATION"

Also, mini tutorial is available **[here](https://www.youtube.com/watch?v=XVQSkd1JAqU&t=8s)**

{% include image.html
            img="images/Connect2Server_Illustr.png"
            title="Send Codes to Terminal"
            caption=" Send codes (left) to terminal (right) " %}