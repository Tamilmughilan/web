json.extract! borrow, :id, :book_id, :member_id, :borrowed_on, :due_date, :created_at, :updated_at
json.url borrow_url(borrow, format: :json)
