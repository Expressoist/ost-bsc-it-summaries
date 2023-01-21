# B.Sc. Computer Science Summaries (OST)
This repository contains some of the summaries I have written during my time at the Eastern Switzerland University of Applied Sciences (OST). Was it worth it? No, probably not. But at least now you don't have to write these summaries yourself.

## Installation
### Prerequisites
If you want to build the `.adoc` and `.scss` files locally on your computer, you will need to install the following tools:

* Node Package Manager (`npm`)
* Pdfxup for Unix/Linux (`pdfxup`)
* Make (`make`)

If you are running a Windows OS, you may need to install / activate the Linux-Bash to use `pdfxup`. You can skip this step if you don't mind manually merging the generated `.pdf` files for the column layout.

### Installation
To install the necessary dependencies, run the following code in the project root directory:

`npm install`

## Usage
You can create either an extensive summary or a short cheatsheet using the `make` commands listed below. Note that we only created cheatsheets for modules that had specific requirements for the exam.

* **Summary:** `make summary lecture=LECTURE` or `make lecture=LECTURE`
* **Cheatsheet:** `make cheatsheet lecture=LECTURE`

Example: `make summary lecture=ComGra`



