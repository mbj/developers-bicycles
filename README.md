---
author: Markus Schirp
title: Development with Bicycles for Brains
date: 2021
---

## Intro

Humans outclass all living beings in terms of movement efficiency when using a bicycle.

We should have the equivalents of bicycles for the brains of developers.

---

## Outline

This talk is about `mutant`, a tool to improve developer efficiency.

Before going into details of the tool, lets focus on the need for more
efficient reviews.

---

## Cost of software development

The most valuable and indeterministic resource in software development is: human time.

* Human time is the biggest expense on software development.
* Human performance varies with each window.
* Some time windows are significantly more productive than others.
* Some time windows are actively negatively affecting the software product.

---

## Solution?

Provide the developers with tools and processes to increase their
efficiency in the productive time windows.

But decrease the likelihood their bad moments lead to a reduction in
product value (also known as bugs).

All of this is easier said than done.

---

## More Technical Solution

At a high level we can aim for:

1) Reduce feedback time on actionable work to get more done.
2) Automate constraints to not regress the system without noticing.

On 1) with Ruby we have excellent feedback time. But what about 2), the constraints?

---

## Available constraints

* Types (Brand new! Future topic!)
* Tests

But are the tests good constraint?

---

## Tests as Constraints

Tests are, at a high level: A set of input output relations.

* Fail a test: Fix the code (or the test).
* Pass a test: Move on?

---

## Coverage

A Passing test suite only signals the **lower bound** of
semantics in a program can express.

What constrains the **upper bound**?

Enter code reviews.

---

## Code reviews

Manual verification there is nothing the code does "extra"
than passing the tests.

This can be in part automated! Saving time, increasing efficiency.

---

## Example

Automated code review output example:

```diff
Uncovered Mutation (tests still pass):

 def foo
-  do_a
   do_b
 end
```

`do_a` call site can be removed without tests noticing.

---

## Interpretation

The mutation testing tool tells you:

> Hey Human: Either remove `do_a` or prove to me it should exist
> via a test, but for now its floating.

The reviewer saved time, he can act on this information and
verify if `do_a` is actually needed.

---

## Live coding

[here mutant gets shown in action to the audience]

---

## Consequence

Consistently applying mutation testing via `mutant` reduces cost of software development.

More time is spent on the non automatable parts.

And most importantly: New developers can **self train** without having to have access to peers!

**Reduces the entry barrier to software development with Ruby.**

## Marketing

Mutant is commercial software.

But its: **Free to use for opensource projects**.
