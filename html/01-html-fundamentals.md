#HTML Fundamentals
## Semantic HTML, HTML Tags, and HTML Attributes

> "The structure of a webpage should describe the meaning of its content, not just its appearance."


---

1. What is HTML?
2. Semantic HTML
3. HTML Tags
4. HTML Attributes
5. Best Practices
6. Learning Resources
7. Recommended Books
8. Practice Exercices

---

# What is HTML?

**HTML (HyperText Markup Language)** is the standqrd markup language used to create webpages.

HTML is **not** a programming language.

Instead, it is a **markup language** that describes the structure and meaning of content displayed by web browsers.

HTML works together with:

- CSS -> Presentation
- JavaScript -> Behavior
- Backend Languages -> Data and Logic

Example:

---html
<!DOCTYPE html>
<html>
<head>
    <title>Jean Steven ClassRoom</title>
</head>

<body>
<h1>This is the html fundamentals workshop from the classroom/</h1>

<p>HTML Markup Language to my web page.</p>

</body>
</html>

---

# 1. Semantic HTML

## Definition

Semantic HTML is the practice of using HTML elements according to their **meaning** rather than their appearance.

Semantic elements describe **what the content is**, making webpages:

- easier to read
- easier to mantain
- accessible
- SEO friendly
- easier for search engines to understand

Instead of writing:

---html
<div>
---

we write:

---html
<header>
---
because the content represents a page header.

---

## Why Semantic HTML Matters

Semantic HTML improves:

- Accessibility
- Search Engine Optimization (SEO)
- Code readability
- Team collaboration
- Browser interpretation

---

## Common Semantic Elements

| Tag | Meaning |
|------|----------|
| `<header>` | Page or section header |
| `<nav>` | Navigation menu |
| `<main>` | Main content |
| `<section>` | Thematic section |
| `<article>` | Independent content |
| `<aside>` | Sidebar |
| `<footer>` | Footer |
| `<figure>` | Image with caption |
| `<figcaption>` | Caption |
| `<address>` | Contact information |
| `<time>` | Date or time |
| `<details>` | Expandable content |
| `<summary>` | Title of expandable content |

---

## Example 1

Without semantic HTML:

```html
<div class="header">
    My Blog
</div>

<div class="menu">
    Home
</div>

<div class="content">
    Welcome!
</div>
```

Semantic version:

```html
<header>
    My Blog
</header>

<nav>
    Home
</nav>

<main>
    Welcome!
</main>
```

---

## Example 2

Blog article

```html
<article>

<h2>Learning HTML</h2>

<p>HTML is awesome.</p>

</article>
```

---

## Example 3

News website

```html
<header>
    Daily News
</header>

<nav>
    Politics
    Sports
    Technology
</nav>

<main>

<section>

<h2>Technology</h2>

<article>

<h3>Artificial Intelligence</h3>

<p>Latest news...</p>

</article>

</section>

</main>

<footer>

Copyright 2026

</footer>
```

---

# 2. HTML Tags

## Definition

An HTML tag is a markup instruction enclosed in angle brackets (`< >`) that tells the browser how to structure or display content.

Most HTML elements have:

- Opening tag
- Closing tag
- Content

Example

```html
<p>Hello World</p>
```

Opening tag

```html
<p>
```

Closing tag

```html
</p>
```

Content

```text
Hello World
```

---

## Basic Syntax

```html
<tagname>

Content

</tagname>
```

---

## Types of Tags

### Container Tags

Contain content.

Example

```html
<p>Hello</p>

<div>Content</div>

<section>

...

</section>
```

---

### Empty Tags

Do not require a closing tag.

Examples

```html
<img>

<br>

<hr>

<input>

<meta>

<link>
```

---

## Example 1

Heading

```html
<h1>Software Engineering</h1>
```

---

## Example 2

Paragraph

```html
<p>This is a paragraph.</p>
```

---

## Example 3

Image

```html
<img src="cat.jpg" alt="A black cat">
```

---

# Frequently Used HTML Tags

| Tag | Purpose |
|------|----------|
| html | Root element |
| head | Metadata |
| title | Browser title |
| body | Visible content |
| h1-h6 | Headings |
| p | Paragraph |
| a | Hyperlink |
| img | Image |
| ul | Unordered list |
| ol | Ordered list |
| li | List item |
| div | Generic container |
| span | Inline container |
| button | Button |
| form | Form |
| input | Input |
| textarea | Text area |
| select | Dropdown |
| table | Table |
| tr | Table row |
| td | Table cell |
| footer | Footer |

---

# 3. HTML Attributes

## Definition

Attributes provide additional information about HTML elements.

Attributes are always placed inside the opening tag.

General syntax:

```html
<tag attribute="value">
```

---

## Common Attributes

| Attribute | Purpose |
|------------|----------|
| id | Unique identifier |
| class | CSS class |
| style | Inline CSS |
| src | Resource location |
| href | Hyperlink |
| alt | Alternative text |
| title | Tooltip |
| value | Default value |
| placeholder | Placeholder text |
| disabled | Disable element |
| checked | Checkbox selected |
| required | Required field |
| readonly | Read-only field |

---

## Example 1

Link

```html
<a href="https://example.com">

Visit Website

</a>
```

Attribute:

```text
href
```

---

## Example 2

Image

```html
<img
    src="profile.jpg"
    alt="Software Developer">
```

Attributes

- src
- alt

---

## Example 3

Input

```html
<input
type="email"
placeholder="Enter your email"
required>
```

Attributes

- type
- placeholder
- required

---

# Combining Tags and Attributes

```html
<header>

<h1 class="title">

Learning HTML

</h1>

<nav>

<a href="index.html">

Home

</a>

</nav>

</header>
```

---

# Best Practices

✅ Prefer semantic elements over generic `<div>` elements whenever appropriate.

✅ Always provide meaningful `alt` text for images.

✅ Use only one `<h1>` per page whenever possible.

✅ Write lowercase HTML tags and attributes for consistency.

✅ Indent nested elements consistently to improve readability.

✅ Keep HTML focused on structure; use CSS for presentation and JavaScript for behavior.

---

# Learning Resources

## Official Documentation

- MDN Web Docs
  https://developer.mozilla.org/en-US/docs/Web/HTML

- HTML Living Standard
  https://html.spec.whatwg.org

- W3C
  https://www.w3.org/html/

---

## Interactive Learning

- freeCodeCamp
  https://www.freecodecamp.org

- The Odin Project
  https://www.theodinproject.com

- Codecademy
  https://www.codecademy.com

- Scrimba
  https://scrimba.com

---

## Video Courses

- Traversy Media
- Kevin Powell
- Web Dev Simplified
- Programming with Mosh
- SuperSimpleDev

YouTube Channels:

https://www.youtube.com/@TraversyMedia

https://www.youtube.com/@KevinPowell

https://www.youtube.com/@WebDevSimplified

---

## Blogs

- CSS-Tricks
  https://css-tricks.com

- Smashing Magazine
  https://www.smashingmagazine.com

- web.dev
  https://web.dev

- MDN Blog
  https://developer.mozilla.org

---

## Practice Websites

- Frontend Mentor
- CodePen
- JSFiddle
- CodeSandbox
- Exercism

---

# Recommended Books

## Beginner

- HTML & CSS — Jon Duckett

- Learning Web Design — Jennifer Robbins

- Web Design with HTML, CSS, JavaScript and jQuery — Jon Duckett

---

## Intermediate

- Responsive Web Design with HTML5 and CSS — Ben Frain

- HTML5: Up and Running — Mark Pilgrim

---

## Advanced

- Designing with Web Standards — Jeffrey Zeldman

- Don't Make Me Think — Steve Krug

- Refactoring UI — Adam Wathan

---

# Exercises

## Exercise 1

Create a semantic webpage containing:

- Header
- Navigation
- Main
- Section
- Article
- Footer

---

## Exercise 2

Build a portfolio page using:

- Images
- Links
- Lists
- Headings

---

## Exercise 3

Create a contact form containing:

- Name
- Email
- Password
- Submit button

using appropriate HTML attributes.

---

# Summary

HTML consists of three essential building blocks:

- **Semantic HTML** gives meaning and structure to content.
- **HTML Tags** define the elements that make up a webpage.
- **HTML Attributes** provide additional information and configuration for those elements.

Mastering these concepts is the foundation for modern web development and prepares you for learning CSS, JavaScript, frontend frameworks, accessibility, and SEO.



























