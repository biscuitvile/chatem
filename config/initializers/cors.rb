Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins(
      "https://chatem-frontend.vercel.app",
      "http://localhost:5173",
      "http://localhost:3000",
      "https://evening-headland-99649-ad144f8efa52.herokuapp.com",
      "production-sfo.browserless.io",
      "production-lon.browserless.io"
    )

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
