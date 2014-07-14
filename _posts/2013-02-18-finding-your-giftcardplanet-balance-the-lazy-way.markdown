---
title: Finding your GiftCardPlanet balance the lazy way
vim: linebreak
---

I did some market research because I love glasses so much, and to compensate me for my time I received two giftcards from the market research company. They're made by [GiftCardPlanet.com.au](http://www.giftcardplanet.com.au/) and work just like EFTPOS but with stored value, which is pretty convenient.

They have this website for checking the remaining balance. It's easy, but it's a nuisance needing to "log in" every time. The site [looks kinda janky](http://www.giftcardplanet.com.au/balance.php), so I thought I'd go poking to see if I could just hit a URL instead.

It turns out it's reeeeally easy. The webpage is a little javascript-driven state machine, and your login details are just the card number and PIN.

Handily, the ASP backend doesn't care whether you pass parameters as POST or GET variables, and also doesn't mind if you don't pass in the various junk parameters that the page was sending. Score!

If you hit this URL you'll get a full list of transactions against the card along with its current balance, no browser state needed. Sweet!

[https://cardaccount.emerchants.com.au/GiftCardOnline/Default.asp?Stage=1.5&txtCardNumber=5021180077725657&txtPasscode=0478](https://cardaccount.emerchants.com.au/GiftCardOnline/Default.asp?Stage=1.5&txtCardNumber=5021180077725657&txtPasscode=0478)

{% insert_image giftcard_balance.png %}
Caption: This was a $30 card, it's all burnt out now so there's no reason not to share it.

Substitute in your own card's details and you're good to go.
