ActiveAdmin.register Pricelist do


  permit_params :name, :description, prices_attributes: [:amount]

  form do |f|

    f.semantic_errors *f.object.errors.keys

    tabs do


      tab 'Pricelist Details' do
        f.inputs 'Pricelist Details' do
          f.input :name
          f.input :description
        end
      end

      tab 'Prices with label' do
        f.inputs 'Prices with label' do
          f.has_many :prices, heading: false, allow_destroy: false, new_record: false do |price|
            label "#{price.object.try!(:city).try!(:name)}"
            price.input :amount
          end
        end
      end if f.object.try!(:persisted?)


      tab 'Prices with readonly city_id' do
        f.inputs 'Prices with readonly city_id' do
          f.has_many :prices, heading: false, allow_destroy: false, new_record: false do |price|
            price.input :city_id, input_html: {readonly: true}, label: price.object.try!(:city).try!(:name)
            price.input :amount
          end
        end
      end if f.object.try!(:persisted?)


      tab 'Prices in f.inputs' do
        f.inputs 'Prices in f.inputs' do
          f.has_many :prices, heading: false, allow_destroy: false, new_record: false do |price|
            f.inputs "#{price.object.try!(:city).try!(:name)}" do
              price.input :amount
            end
          end
        end
      end if f.object.try!(:persisted?)


      tab 'Prices in price.inputs' do
        f.inputs 'Prices in price.inputs' do
          f.has_many :prices, heading: false, allow_destroy: false, new_record: false do |price|
            price.inputs "#{price.object.try!(:city).try!(:name)}" do
              price.input :amount
            end
          end
        end
      end if f.object.try!(:persisted?)


      tab 'Prices in panel' do
        f.inputs 'Prices in panel' do
          f.has_many :prices, heading: false, allow_destroy: false, new_record: false do |price|
            panel "#{price.object.try!(:city).try!(:name)}" do
              price.input :amount
            end
          end
        end
      end if f.object.try!(:persisted?)


    end









  end


end
