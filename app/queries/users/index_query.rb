module UsersQuery
  extend self
  attr_reader :query

  def  sort_data(sorter="")
    filters = {
      "name-asc" => -> { get_query("name ASC") },
      "name-desc" => -> { get_query("name DESC") },
      "email-asc" => -> { get_query("email ASC") },
      "email-desc" => -> { get_query("email DESC") }
    }

    get_query
    return @query
  end

  def get_query
    @query = User.select("name", "email", "phone")

    @query = @query.map do |entry|
        {
          name: entry.name,
          email: entry.email,
          phone: entry.phone
        }.values
      end

      return @query
  end
end