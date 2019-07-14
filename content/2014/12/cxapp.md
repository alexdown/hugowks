+++
draft = false
title = "Cathay Pacific, mobile app"
date = 2014-12-11T12:45:00Z
tags = [ "mobile", "review", "UI" ]
+++

<a name="aIntro"></a>
Few days ago, <a href="https://www.cathaypacific.com">Cathay Pacific</a> released its new <a href="https://play.google.com/store/apps/details?id=com.xs2theworld.cxmobile&hl=en">mobile app</a>.

I downloaded the android version, and gave it a try. TL;DR? It's better than it used to be, looks more modern, but there are a number of bugs still open, and questionable design chooices have been made. Here are a few comments.

<a name="aSpinners"></a>
Two different loading spinners: why?

<div align="center">
	<img src="/2014_12_cxm1.png" style="display: inline;" width="40%" /> 
	<img src="/2014_12_cxm2.png" style="display: inline;" width="40%" /> 
</div>

<a name="aT"></a>
Page transitions (see below an example of the language selection) are ok, but the "back" button should animate from left to right, not right to left. In the app all transitions animated in a screen presented right to left, which is kind of counterintuitive if happens in response to a "back" action.

<div align="center">
	<img src="/2014_12_cxm3.png" style="display: inline;" width="40%" /> 
	<img src="/2014_12_cxm4.png" style="display: inline;" width="40%" /> 
</div>

<a name="aB"></a>
On the login page, the button state changes to "active" only if I tap "enter", not if I dismiss the keyboard somehow else (like, tapping on some other elements in the interface, the tick, or just the dismiss button on the keyboard...)

<div align="center">
	<img src="/2014_12_cxm5.jpg" style="display: inline;" width="40%" /> 
	<img src="/2014_12_cxm6.jpg" style="display: inline;" width="40%" /> 
</div>

<a name="aS"></a>
Seems I can't search for bookings once logged in, just view the ones already associated with my Marcopolo account. 

<div align="center">
	<img src="/2014_12_cxm7.png" style="display: inline;" width="40%" /> 
</div>

Why? Doesn't make much sense... I would expect I can search a booking by code, and then have a nice button "add to my bookings" if not already...

<a name="aLO"></a>
When I do search for bookings, you tell me I have to LOGOUT to show it? 

<div align="center">
	<img src="/2014_12_cxm9.png" style="display: inline;" width="40%" /> 
</div>

<a name="aLO2"></a>
Make very very very little sense. Except... you are not really logging me out. I still see logout and settings link in the side menu, but some buttons on the home screen ("view profile", for instance) do not work. Tap, nothing happens...

<div align="center">
	<img src="/2014_12_cxm11.png" style="display: inline;" width="40%" /> 
	<img src="/2014_12_cxm10.png" style="display: inline;" width="40%" /> 
</div>

<a name="aOK"></a>
When I then logout and re-login... "OK". What does that mean? :)

<div align="center">
	<img src="/2014_12_cxm12.png" style="display: inline;" width="40%" /> 
</div>

<a name="aEND"></a>
All the above after using the app for no more than 5 minutes... still haven't tried the online checkin, mobile boarding pass and seat selection.
I am sure these features are amazing, but the very first impression of the app is sloppy and rushed into production. 

Plus, some functionalities are really not making sense (logout to view bookings?!??). And I still can't book a ticket via the mobile app!!

Come on, "world best airline", you can really do better!