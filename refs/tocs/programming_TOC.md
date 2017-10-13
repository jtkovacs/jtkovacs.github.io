<p class="path"><a href="../pkb.html">pkb contents</a> \> programming | just under 975 words | updated 10/13/2017</p><div class="TOC">- &nbsp;1. [What is programming?](#what-is-programming)
	- &nbsp;1.1. [... as a profession?](#...-as-a-profession)
		- &nbsp;1.1.1. [What skills are required for programming?](#what-skills-are-required-for-programming)
	- &nbsp;1.2. [... in relation to hardware?](#...-in-relation-to-hardware)
	- &nbsp;1.3. [Programming languages](#programming-languages)
		- &nbsp;1.3.1. [What is an algorithm?](#what-is-an-algorithm)
		- &nbsp;1.3.2. [What are major programming paradigms?](#what-are-major-programming-paradigms)
		- &nbsp;1.3.3. [What are major types of programming by level of abstraction?](#what-are-major-types-of-programming-by-level-of-abstraction)
		- &nbsp;1.3.4. [Which language for what task?](#which-language-for-what-task)
- &nbsp;2. [What are good programming practices?](#what-are-good-programming-practices)
	- &nbsp;2.1. [Style](#style)
		- &nbsp;2.1.1. [Naming conventions](#naming-conventions)
	- &nbsp;2.2. [Reproducibility](#reproducibility)
		- &nbsp;2.2.1. [Version control](#version-control)
		- &nbsp;2.2.2. [Literate programming and notebooks](#literate-programming-and-notebooks)
		- &nbsp;2.2.3. [Documentation](#documentation)
	- &nbsp;2.3. [Debugging & testing](#debugging-testing)
		- &nbsp;2.3.1. [Types of errors](#types-of-errors)
		- &nbsp;2.3.2. [Debugging process](#debugging-process)
- &nbsp;3. [Sources](#sources)
	- &nbsp;3.1. [Cited](#cited)
	- &nbsp;3.2. [References](#references)
		- &nbsp;3.2.1. [General](#general)
		- &nbsp;3.2.2. [Bash](#bash)
		- &nbsp;3.2.3. [Python](#python)
		- &nbsp;3.2.4. [R](#r)
	- &nbsp;3.3. [Read](#read)
	- &nbsp;3.4. [Unread](#unread)
</div>


# 1. What is programming?

## 1.1. ... as a profession?

### 1.1.1. What skills are required for programming?

[Programmer competencies matrix](http://sijinjoseph.com/programmer-competency-matrix/)



## 1.2. ... in relation to hardware?

What is the function of secondary memory in a computer?

- [ ] Execute all of the computation and logic of the program.
- [ ] Retrieve web pages over the Internet.
- [X] Store information for the long term - even beyond a power cycle.
- [ ] Take input from the user.

*The CPU computes. Web pages are retrieved through networks. User input comes via peripherals. The secondary memory is persistant storage while the primary memory is emptied if ever power cuts out.*

What is a program?

*A program, also called code, is instructions, also called algorithms, for a computer to follow. Programs may contain a single command or millions. Programs my be contained in a single file or many.*

What is the difference between a compiler and an interpreter?

*A compiler performs a one-time conversion of code written in a high-level language to code written in machine-readable language. Once compiled, the program is executable, i.e., it can be run by the computer directly without an imtermediary. The interpreter is this intermediary: it translates code in a high-level language to machine-readable commands dynamically.*

Which of the following contains "machine code"?

- [ ] The Python interpreter.
- [ ] The keyboard.
- [X] Python source file.
- [ ] A word processing document.

Where in the computer is a variable such as "X" stored after the following Python line finishes?

```python
x = 123
```

- [ ] Central processing unit
- [X] Main Memory
- [ ] Secondary Memory
- [ ] Input Devices
- [ ] Output Devices

Explain each of the following using an example of a human capability

- [ ] Central processing unit
- [ ] Main Memory
- [ ] Secondary Memory
- [ ] Input Device
- [ ] Output Device.




## 1.3. Programming languages

### 1.3.1. What is an algorithm?

An algorithm is a step-by-step way of solving a problem. (1) The "steps" may be written as instructions for humans or for machines to follow. (2) There are many ways to solve a problem, so we need ways to evaluate and choose algorithms (the issues of algorithmic bias and algorithmic transparency).

- [http://datworkshop.org/](http://datworkshop.org/)

### 1.3.2. What are major programming paradigms?

- Structured
- Functional
- Object-oriented
- Literate

### 1.3.3. What are major types of programming by level of abstraction?

<img src="../ILLOS/types-of-programming.gif" width=450px>

### 1.3.4. Which language for what task?








# 2. What are good programming practices?

These practices are meant to (1) maintain code quality and (2) manage code well as an asset:

## 2.1. Style

### 2.1.1. Naming conventions

## 2.2. Reproducibility

### 2.2.1. Version control

### 2.2.2. Literate programming and notebooks

### 2.2.3. Documentation

## 2.3. Debugging & testing

### 2.3.1. Types of errors

Per Calvanese (2006), Wikibooks (n.d.), and SQA (2006):

- *Compiler generates error messages* for
    - **syntax errors** that violate the basic rules of the language (invalid statements, usually fatal) and for
    - **exceptions** that violate the rules for using statements (invalid operations; the "parser knows what to do with a piece of code but is unable to perform the action" [Wikibooks, n.d.]).
- *Human or debugger must identify*
    - **incorrect logic** that violates the program specification.

<table>
    <th colspan="4">Types of programming errors</th>
    <tr>
        <td rowspan="2">Syntax</td>
        <td colspan="2">Exceptions AKA semantic?</td>
        <td rowspan="2">Logical</td>
    </tr>
    <tr>
        <td>Static</td>
        <td>Dynamic</td>
    </tr>
    <tr>
        <td colspan="2">Compile-time errors</td>
        <td colspan="2">Run-time errors</td>
    </tr>
    <th colspan="4">Defenses against programming errors</th>
    <tr>
        <td rowspan="2">Knowledge</td>
        <td colspan="2">(in Python) `try ... except` </td>
        <td rowspan="2">Debugger</td>
</table>

### 2.3.2. Debugging process

Per notes by Professor Joseph Hellerman at UW, debugging consists of:

<table>
    <th>Phase</th>
    <th>Action</th>
    <tr>
        <td>Detection of problem</td>
        <td>Testing</td>
    </tr>
    <tr>
        <td rowspan="3">Isolation of responsible code</td>
        <td>Thought</td>
    </tr>
    <tr>
        <td>Logging e.g. with `print`</td>
    </tr>
    <tr>
        <td>Debugging tool\* e.g. `pdb`</td>
    </tr>
    <tr>
        <td>Resolution</td>
        <td>(specific to problem)</td>
    </tr>
</table>

\* "I've probably used it a dozen times or so in five years of coding"

# 3. Sources

## 3.1. Cited

Calvenese, D. (2006). Types of program errors. Retrieved from [http://www.inf.unibz.it/~calvanese/teaching/ip/lecture-notes/uni10/node2.html](http://www.inf.unibz.it/~calvanese/teaching/ip/lecture-notes/uni10/node2.html)

Scottish Qualifications Authority (SQA). (2006). Types of program error. Retrieved from [https://www.sqa.org.uk/e-learning/SDPL03CD/page_04.htm](https://www.sqa.org.uk/e-learning/SDPL03CD/page_04.htm)

Wikibooks. (n.d.). Python_Programming/Errors. Retrieved from [https://en.wikibooks.org/wiki/Python_Programming/Errors](https://en.wikibooks.org/wiki/Python_Programming/Errors)

## 3.2. References

### 3.2.1. General

- [Paul Ford: What <i>is</i>&nbsp;code?](https://www.bloomberg.com/graphics/2015-paul-ford-what-is-code/)
- [ReadTheDocs.org](https://docs.readthedocs.io/en/latest/getting_started.html)

### 3.2.2. Bash

- [Command line cheatsheets for Mac<span style="background-color:transparent">,&nbsp;</span>Linux<span style="background-color:transparent">,&nbsp;</span>Windows](http://ss64.com/)
- [Software Carpentry’s Unix shell cheatsheet](http://swcarpentry.github.io/shell-novice/reference/)

### 3.2.3. Python

- [Official Python 3.5.2. documentation](https://docs.python.org/3/index.html)
- [Official Jupyter notebook documentation](http://jupyter-notebook.readthedocs.io/en/latest/notebook.html)
- [Python cookbook](http://code.activestate.com/recipes/langs/python/)
- [Python package index (PyPI)](https://pypi.python.org/pypi)

### 3.2.4. R

- [Official R documentation](https://www.r-project.org/)
- [R cookbook](http://www.cookbook-r.com/)
- [R documentation search engine](https://www.rdocumentation.org/)


## 3.3. Read

- [Low quality of scientific code](http://techblog.bozho.net/the-astonishingly-low-quality-of-scientific-code/)
- [Why code written by scientists gets ugly](https://nsaunders.wordpress.com/2014/05/14/this-is-why-code-written-by-scientists-gets-ugly/)
- [Bad scientific code beats following best practices](http://yosefk.com/blog/why-bad-scientific-code-beats-code-following-best-practices.html)
- [Functional Programming](https://en.wikipedia.org/wiki/Functional_programming)
- [The rise of “worse is better”](https://www.jwz.org/doc/worse-is-better.html)
- [Linear vs. Binary Search](https://schani.wordpress.com/2010/04/30/linear-vs-binary-search/)
- [Why is binary search better than linear search?](http://programmers.stackexchange.com/questions/204260/why-is-binary-search-which-needs-sorted-data-considered-better-than-linear-sear)
- [Introduction to inodes](http://www.grymoire.com/Unix/Inodes.html)
- [10 Things Every Linux Beginner Should Know](https://www.codementor.io/linux/tutorial/10-things-every-linux-beginner-should-know)
- [8 deadly commands you should never run on Linux](http://www.howtogeek.com/125157/8-deadly-commands-you-should-never-run-on-linux/)
- [Thinking in SQL vs. Thinking in Python](https://blog.modeanalytics.com/learning-python-sql/)
- [R beats Python beats Julia, anyone else wanna challenge R?](https://matloff.wordpress.com/2014/05/21/r-beats-python-r-beats-julia-anyone-else-wanna-challenge-r/)
- [Surviving MATLAB &amp; R](http://programmers.stackexchange.com/questions/40738/surviving-matlab-and-r-as-a-hardcore-programmer)
- [R: the master troll](http://www.talyarkoni.org/blog/2012/06/08/r-the-master-troll-of-statistical-languages/)
- [The homogenization of scientific computing](http://www.talyarkoni.org/blog/2013/11/18/the-homogenization-of-scientific-computing-or-why-python-is-steadily-eating-other-languages-lunch/)


## 3.4. Unread

- [Khan Academy - Algorithms&nbsp;](https://www.khanacademy.org/computing/computer-science/algorithms)
- [Algorithms every software engineer should know by heart](https://www.quora.com/What-are-the-top-10-algorithms-every-software-engineer-should-know-by-heart/answer/Adeel-Ahmed-41?srid=uSgUs&amp;share=0b867289)
- [Reasoning about performance](https://www.youtube.com/watch?v=80LKF2qph6I)
- [Lynda - Code Efficiency](https://www.lynda.com/Developer-Programming-Foundations-tutorials/Foundations-Programming-Code-Efficiency/122461-2.html?srchtrk=index:1%0Alinktypeid:2%0Aq:UML%0Apage:1%0As:relevance%0Asa:true%0Aproducttypeid:2&amp;bm=1)
- [How to Design Programs](http://www.ccs.neu.edu/home/matthias/HtDP2e/)
- [On the value of fundamentals in software development](http://www.skorks.com/2010/04/on-the-value-of-fundamentals-in-software-development/)
- [“Big Ball of Mud”](http://www.laputan.org/mud/)
- [Model, View, Controller](https://www.codecademy.com/articles/mvc)
- [Becl testing framework](https://web.archive.org/web/20150315073817/http://www.xprogramming.com/testfram.htm)
- [Lynda - Design Patterns](https://www.lynda.com/Developer-Programming-Foundations-tutorials/Foundations-Programming-Design-Patterns/135365-2.html)
- [Udacity - Design of Computer Programs](https://www.udacity.com/course/design-of-computer-programs--cs212)
- [MIT - Software construction](http://web.mit.edu/6.005/www/fa15/)
- Literate programming: [1,](https://en.wikipedia.org/wiki/Literate_programming) [2,](http://www.literateprogramming.com/) [3](http://www.witheve.com/)
- [Code Complete](http://cc2e.com/Page.aspx?nid=71)
- [Seven virtues of a good object](http://www.yegor256.com/2014/11/20/seven-virtues-of-good-object.html)
- [Foundations of Computer Science](http://i.stanford.edu/~ullman/focs.html#pdfs)
- [Using Access Control Lists on Linux](http://bencane.com/2012/05/27/acl-using-access-control-lists-on-linux/)
- [Configuring your Linux for development](https://www.codementor.io/linux/tutorial/configure-linux-toolset-zsh-tmux-vim)
- [Vim Adventures](http://vim-adventures.com/)
- [Vim Genius](http://www.vimgenius.com/)
- [R vs Python? No!](http://www.datasciencecentral.com/profiles/blogs/r-vs-python-r-and-python-and-something-else)
- [Paul Graham - The 100 year language](http://www.paulgraham.com/hundred.html)
