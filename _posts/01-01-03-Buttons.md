---
layout: post
title: Buttons &amp; Links
---

### Default Buttons

Button styles can be applied to anything with the <code>.btn</code> class applied. However, typically you'll want to apply these to only <code>&lt;a&gt;</code> and <code>&lt;button&gt;</code> elements for the best rendering.

{% snippet html %}
<p>
	<button class="btn">Default</button>
</p>
<p>
	<button class="btn btn-primary">Primary</button>
</p>
<p>
	<button class="btn btn-info">Info</button>
</p>
<p>
	<button class="btn btn-success">Success</button>
</p>
<p>
	<button class="btn btn-warning">Warning</button>
</p>
<p>
	<button class="btn btn-danger">Danger</button>
</p>
<p>
	<button class="btn btn-inverse">Inverse</button>
</p>
{% endsnippet %}

#### Cross browser compatibility

IE9 doesn't crop background gradients on rounded corners, so we remove it. Related, IE9 jankifies disabled <code>button</code> elements, rendering text gray with a nasty text-shadow that we cannot fix.



### Button Sizes

Fancy larger or smaller buttons? Add <code>.btn-large</code>, <code>.btn-small</code>, or <code>.btn-mini</code> for additional sizes.

{% snippet html %}
<p>
  <button type="button" class="btn btn-large btn-primary">Large button</button>
  <button type="button" class="btn btn-large">Large button</button>
</p>
<p>
  <button type="button" class="btn btn-primary">Default button</button>
  <button type="button" class="btn">Default button</button>
</p>
<p>
  <button type="button" class="btn btn-small btn-primary">Small button</button>
  <button type="button" class="btn btn-small">Small button</button>
</p>
<p>
  <button type="button" class="btn btn-mini btn-primary">Mini button</button>
  <button type="button" class="btn btn-mini">Mini button</button>
</p>
{% endsnippet %}