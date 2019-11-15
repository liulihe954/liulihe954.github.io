---
layout: post-no-cover
title: Previewing CSV files on macOS
date: 2018-1-18
description: A guide on previewing CSV files on macOS
img: png/csv-example.png
tags: [productivity, software]
---

The comma-separated values (CSV) file format is often used to store and share tabular data. A CSV file is simply plain text, which makes it easy to share across applications and platforms.

**Microsoft Excel** and Apple's **Numbers** can open these files as a spreadsheet. However, there are times when all you need is a quick and simple read-only option.

## macOS – Quick Look

{% include image.html
            img="assets/img/png/quicklook-csv-screenshot.png"
            title="quicklook-csv"
            caption="Quick Look on a CSV file using quicklook-csv" %}

One handy feature of macOS is **Quick Look**. Any file can be previewed by pressing <kbd>space</kbd>, instead of opening through an application. Custom Quick Look plugins can be installed to work with certain file types. For CSV and other plain-text delimited files, there is [quicklook-csv](https://github.com/p2/quicklook-csv) by Pascal Pfiffner.

The downside of this option is that it takes time to preview larger files. This is when the command line approach is desirable.

## Command Line

If the file is small, the `column` command is sufficient to show contents in a pretty tabular format.

    $ column -t -s , ford_escort.csv
    "Year"   "Mileage (thousands)"    "Price"
    1998      27                        9991
    1997      17                        9925
    1998      28                       10491
    1998       5                       10990
    1997      38                        9493
    ...

Additionally, other commands can be used to customize the view.

- `head` – get a few rows from the file.
- `cut` – get a subset of the columns. Useful if one column contains long entries that would overflow the screen.
- `less` – view the output in a pager rather than the default output stream. Useful if the file has many lines.

Pipes can be used to combine the commands. For example,

    head -n 100 example.csv | cut -d , -f 2-6 | column -t -s , | less -S

displays a pager for the first 100 rows of `example.csv` with just columns 2-6. The `-S` option for `less` prevents line wrapping for a better view.

## References

- example CSV file: [ford_escort.csv](https://people.sc.fsu.edu/~jburkardt/data/csv/ford_escort.csv)
- in-depth post on command line CSV viewing: <http://stefaanlippens.net/pretty-csv.html>
