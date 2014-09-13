use Rack::Static,
  :urls => ["/images", "/js", "/CSS"],
  :root => "public"

$stdout.sync = true

run lambda { |env|
  [
    200,
    {
      'Content-Type' => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

