(1..300).to_a.each do |i|
  `convert -background black -fill '#565656' -size 1920x1080 -pointsize 50 -gravity center label:#{i} frame_#{i}.jpg`
end

`ffmpeg -f image2 -i frame_%d.jpg frames.gif`
`rm frame_*`