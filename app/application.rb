class Application

def call (env)
  resp = Rack::Reponse.new
  req = Rack::Request.new(env)

  if req.path.match(\items\)

  else
    resp.write "Rout not found"
    respt.status = 404
  end
end




end
