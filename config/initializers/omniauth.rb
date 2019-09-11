Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "75zccl6ggJajRUSvKu5E7qhqB", "H8FPHbSXe3mjtJa6mYM04Vo4RPcTRzaEbxOTOrdwG52bePeSiU",
  {
      secure_image_url: 'true',
      image_size: 'bigger'
    }
end