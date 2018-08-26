class Application
@@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]
def call (env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)

  if req.path.match(/items/)
    item_name = req.path.split("/items/").last
    if item == @@items.find do |i|
      i.name == item_name
    end
    resp.write item.price
  else
    resp.write "Rout not found"
    resp.status = 404
  end
  else
    resp.write "Rout not found"
    resp.status = 404
  end
end




end
