+++
draft = true
title = "A Website's restyling"
date = 2014-10-30T09:59:00Z
+++

<a name="aIntro"></a>
Last Sunday, Cathay Pacific launched a new restyling for its website. It looks modern while still elegant, and — most important, given the lacking of a mobile app to book flights — it looks good on a mobile.

I write “looks” good, because when you start using it, lots of small issues becomes evident. Let’s start from the beginning.

<a name="aMenu"></a>
When I first open the home page, everything looks good. Side menu is mobile-y. Animation runs smooth. First slip are the links. 
When I decide to _book_ something and then select _flight_ (well, the only option), nothing happens. Missing link? Maybe…

<div align="center">
	<img src="/2014_10_cx1a.png" style="display: inline;" width="30%" />
	<img src="/2014_10_cx1b.png" style="display: inline;" width="30%" />
	<img src="/2014_10_cx1c.png" style="display: inline;" width="30%" />
</div>

Also, the keyboard stay alphanumeric even if I'm asked to enter a PIN... <code> &#x3C;input&#x3E;</code> without the <code>pattern</code> attribute...

Let’s move to the booking part. A short scroll down, and I can insert departure and destination airport.

<a name="aBook"></a>
All good, also the suggestion of any previous search. I like the fact that the date form element and other details (number of travellers, etc) appears _after_ I select the destination… unclutters the homepage.

<div align="center">
	<img src="/2014_10_cx3.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx2.png" style="display: inline;" width="40%" />
</div>

<a name="aDatepicker"></a>
However, a main issue happens on the datepicker. When I tap on one of the two date fields, either _Departing on_ or _Returning on_, the datepicker _Confirm_ button is visible only if I scroll down.

<div align="center">
	<img src="/2014_10_cx4.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx5.png" style="display: inline;" width="40%" />
</div>

<a name="aDatepickerBA"></a>
This is not because the datepicker is bigger than the viewport, but because it is anchored to the date fields. This may be a deliberate choice, to allow the customer to modify the values for “return/ one way” and “=/- 3 days”, but the result is confusing, because the user doesn’t immediately see the _Confirm_ button, and so his “way out” of the datepicker.

If you compare it with another website, for instance ba.com, the datepicker is anchored to the top of the screen, and it’s modal. _Confirm_ and _Cancel_ are clearly visible.

<div align="center">
	<img src="/2014_10_cx6.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx7.png" style="display: inline;" width="40%" />
</div>

<a name="aBooking"></a>
The biggest disappointment happens when you click _Search flights_: the second screen (and all the subsequent) is not mobile optimised. Although text is displayed with a font size suitable for mobile, the datepicker does not adapt to the mobile form factor, nor does the price summary.

<div align="center">
	<img src="/2014_10_cx8.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx9.png" style="display: inline;" width="40%" />
</div>

<a name="aBars"></a>
Back to ba.com for a moment, the way the search results are presented is mobile optimised: if the intention was that all price options are clearly visible on one screen, there are other types of view that could have been better suitable for a mobile screen, like the skyscanner one:

<div align="center">
	<img src="/2014_10_cx10.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx11.png" style="display: inline;" width="40%" />
</div>

<a name="aBookingCont"></a>
All subsequent screens on the booking journey are not mobile optimised.

<div align="center">
	<img src="/2014_10_cx12.png" style="display: inline;" width="40%" />
	<img src="/2014_10_cx13.png" style="display: inline;" width="40%" />
</div>

<a name="aConclusion"></a>
Is it a deliberate choice? I don’t know. Surely, a customer who starts a booking on a mobile, expect the experience to be consistent. I can only imagine a very high abandonment rate, especially considering that it is still not possible — at least on android — to book using the Cathay Pacific mobile app.

<hr />
<a name="aUpdate"></a>
<img src="/2014_10_cx14.png" style="float: right; margin: 10px;" width="30%"/>
**Update**: it seems there is an issue on the _live chat_ functionality, the one that allows to get in touch with a staff member to get support during the booking process.

When the user taps on the “live chat” icon, a new browser window opens, but Google Chrome shows the certificate not valid message.

The certificate is indeed signed by a valid CA, but Chrome mobile shows the red open lock… Chome for desktop reports an error as well, albeit without the red lock icon.