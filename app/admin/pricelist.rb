ActiveAdmin.register Pricelist do


  permit_params :name, :description, prices_attributes: [:amount]

  form do |f|
    f.semantic_errors *f.object.errors.keys

    f.inputs 'Pricelist Details' do
      f.input :name
      f.input :description
    end

  end

end
