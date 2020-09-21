# Tutorial for the Wegstr and Voltera mix at MDH.
A pre compiled tutorial can be fond on [Google drive](https://drive.google.com/file/d/1DNc1oQEYtZHavuw34UykJabp4SfllP6U/view?usp=sharing).
However the version might be old and thus build the file your self using the instructions bellow.

## Mirrors for the tutorial
[Original](https://drive.google.com/file/d/1DNc1oQEYtZHavuw34UykJabp4SfllP6U/view?usp=sharing)

# Building the file locally:
How to build the file on your computer.
1. Install `pdflatex` on your machine.
2. Go to the LaTeX folder `$ cd latex`
3. Compile using the macro available in the folder:
```bash
$ ./gen.sh
```
4. The result is a file named `tutorial.pdf`.

# File structure of this repo.
The structure of the repo is explained more in detail here.
1. `README.md` is the current file you are viewing.
2. `latex` is the directory where the tutorial lives.
    1. `gen.tex` This is the macro file that compiles the tutorial.
    2. `tutorial.tex` This is the head file for the tutorial where the document start.
    3. `preamble.tex` This file tells the pdflatex system what user library's to use.
    4. The rest of the tex files are relevant to each topic in the report.

# FAQ
In here a attempt to answer the most common questions will be made beforehand.
## How do i contribute?
Glad you asked.
1. Fork the repo using the button top right named [Fork]. This will create a copy of this repository to your github account.
2. After a animation you should see the that a fork of this repo is on your user.
3. Clone your version of the repo to your own computer using `$ git clone <addres to your repo>`
4. Start working. Save the files with your favorite editor.
5. Commit the changes to the repo `$ git commit -sam "The introduction was unclear."`
6. Push the repo to github.  `$ git push`
7. Go to your git hub and find the repo.
8. You will be asked to make a pull request on a button.
9. IMPORTANT. Write what you changed.
10. Click, commit pull request.
11. Done.


