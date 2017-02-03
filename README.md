# README

This is test application to demonstate usage of video.js with rails.
I know that there're gems for it but I think that they're quite old and there's no great profit in their usage.

For running this project you will need ffmpeg installed at your system.

Optionally you can try to deploy it to heroku. You will need this buildpacks to do it:
```
heroku buildpacks:add heroku/nodejs
heroku buildpacks:add https://github.com/HYPERHYPER/heroku-buildpack-ffmpeg.git
heroku buildpacks:add heroku/ruby

```

But I was running it at my local machine and it worked. If you would have any questions - feel free to contact me at <gophan1992@gmail.com>.


P.S. Firstly I wanted to render text directly in video with sidekiq workers, but then i found solution in video.js creating watermark as div.
But I had to fork watermark plugin and tweak it(firstly it was allowing only usage of images as watermarks).
