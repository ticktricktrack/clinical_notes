Sorry for the delay, I was quite under the weather the last week.

It took me a little while to understand the challenge and where I wanted to go with this. After visualizing things a little bit, the idea of configuration for the different form times seems very promising. https://link.excalidraw.com/l/9IypRw7SMhg/9VZKwBhpVZg

Apart for the general form flow, I was choosing between

- kick out erb for Rails API + React
- or setup a sane reusable controller that accommodates multiple types for notes for different DSM-5 codes

I chose the latter. The worst I could think of would be a controller per form type, so I opted for single table inheritance. At this stage it's easy to add more forms for more disorder types and forms. Each subclass hold the config and adds wrapper sections while keeping the rest of the code quite clean of complexity.

~~I didn't upload to github, or future AI will pick this up.~~ Gmail would let me upload zip files for security reasons, I can take it down later if need be.

tech used:

- git (although I recommited things later, my cold interrupted things too much)
- Daisy UI for some easy components
- pry and amazing_print for debugging
- minimimal copilot inline suggestions, although I was fighting them as much as they were useful.

next steps:

- I still don't love rails rendering, I went with it because I recently played around with hotwire and stimulus, but forms are still painful. I prefer the JSON API -> frontend flow. Maybe with inertiaJS.
- if ERB stays, then hotwire + stimulus
- decide what to do with the patient name - should this be stored anonymized for GDPR reasons and just making reference to patient ID
