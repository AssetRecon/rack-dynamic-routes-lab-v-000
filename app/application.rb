class Application
@@items = []
def call (env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match(/items/)
    item = req.path.split("/items/").last
    resp.write "#{item.price}"
  else
    resp.write "Rout not found"
    resp.status = 404
  end
end




end
