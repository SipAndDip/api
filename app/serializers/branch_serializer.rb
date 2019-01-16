class BranchSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name,
             :phone_number,
             :email,
             :facebook_page,
             :address
end
