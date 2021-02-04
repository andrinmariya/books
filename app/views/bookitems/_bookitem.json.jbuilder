json.extract! bookitem, :id, :bookname, :price, :author, :created_at, :updated_at
json.url bookitem_url(bookitem, format: :json)
