I built the smallest app exposing a curious behaviour wiht js managing in a ruby app : On the main screnn, I design a button with an onclick js function that modifies html in a div. No problem with that screen.

I create a small model. On the main screen, I put a link to the index action of the new controller. There's the curious sequence :

- Launch the app

- Click on button : it works

- Click on the link

- On the new page, click on Home

- Click on buttton : again : it doesn't work !

When you look in the source debugging js on the fly, one can see that the html have been modified, but not in the document displayed.