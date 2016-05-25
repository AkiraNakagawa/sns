json.array!(@userinfos) do |userinfo|
  json.extract! userinfo, :id, :firstname, :lastname, :school, :email, :password
  json.url userinfo_url(userinfo, format: :json)
end
