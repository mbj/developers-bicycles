---
author: Markus Schirp
title: Development with Bicycles for Brains
date: 2021
---

## Intro

Humans outclass all living beings in terms of movement efficiency when using a bicycle.

We should have the equivalents of bicycles for developer brains.

---

## Outline

This talk is about `mutant`, a tool to improve developer efficiency.

Before going into details of the tool, let's focus on the need for more
efficient reviews.

---

## Cost of software development

The most valuable and indeterministic resource in software development is human time.

* Human time is the biggest software development expense.
* Human performance varies with each time window.
* Some time windows are significantly more productive than others.
* Some time windows are actively affecting the software product negatively.

---

## Solution?

Provide developers with tools and processes to increase their
efficiency in productive time windows.

But decrease the likelihood that their bad moments lead to a reduction in
product value (also known as bugs).

All of this is easier said than done.

---

## More Technical Solution

At a high level we can aim for:

1) Reducing feedback time on actionable work to get more done.
2) Automating constraints to not introduce regressions without noticing.

On 1) with Ruby we have excellent feedback time. But what about 2), the constraints?

---

## Available constraints

* Types (Brand new! Future topic!)
* Tests

But are tests good constraints?

---

## Tests as Constraints

Tests, at a high level, are: A set of input output relations.

* Fail a test: Fix the code (or the test).
* Pass a test: Move on?

---

## Coverage

A passing test suite only signals the **lower bound** of
semantics a program can express.

What constrains the **upper bound**?

Enter code reviews.

---

## Code reviews

Manual verification that there is nothing the code does in addition to
passing the tests.

This can, in part, be automated! Saving time, increasing efficiency.

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

The `do_a` call site can be removed without the tests noticing.

---

## Interpretation

The mutation testing tool tells you:

> Hey Human: Either remove `do_a` or prove to me it should exist
> via a test, but for now it's floating.

The reviewer saved time and can act on this information to
verify if `do_a` is actually needed.

---

## Live coding

[here mutant gets shown in action to the audience]

---

## Consequences

Consistently applying mutation testing using `mutant` reduces the cost of software development.

More time can be spent on non automatable parts.

Most importantly: New developers can **self train** without needing access to peers!

**Reduces the entry barrier to software development with Ruby.**

## Marketing

Mutant is commercial software.

But it's **Free to use for opensource projects**.

Find mutant:

[https://github.com/mbj/mutant](https://github.com/mbj/mutant)

Find me (on twitter):

[https://twitter.com/\_m\_b\_j\_](https://twitter.com/_m_b_j_)

Find this presentation (wihout the life coding part):

[https://mbj.github.io/developers-bicycles](https://mbj.github.io/developers-bicycles)
