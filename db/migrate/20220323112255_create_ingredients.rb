class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :group1
      t.string :group2
      t.string :group3
      t.string :code
      t.string :name
      t.float :energykj
      t.float :energykcal
      t.float :energyfibrekj
      t.float :energyfibrekcal
      t.float :eau
      t.float :proteinesjones
      t.float :proteines
      t.float :glucides
      t.float :lipides
      t.float :sucres
      t.float :fructose
      t.float :galactos
      t.float :glucose
      t.float :lactose
      t.float :maltose
      t.float :saccharose
      t.float :amidon
      t.float :fibres
      t.float :polyols
      t.float :cendres
      t.float :alcool
      t.float :acideorganiques
      t.float :agsatures
      t.float :agmonoinsature
      t.float :agpolyinsature
      t.float :agbutyrique
      t.float :agcaproique
      t.float :agcaprylique
      t.float :agcaprique
      t.float :aglaurique
      t.float :agmyristique
      t.float :agpalmitique
      t.float :agstearique
      t.float :agoleique
      t.float :aglinoeique
      t.float :agalphalinolenique
      t.float :agarachidoneique
      t.float :ageap
      t.float :agdha
      t.float :cholesterole
      t.float :sel
      t.float :calcium
      t.float :chlorure
      t.float :cuivre
      t.float :fer
      t.float :iode
      t.float :magnesium
      t.float :manganese
      t.float :phosphore
      t.float :potassium
      t.float :selenium
      t.float :sodium
      t.float :zinc
      t.float :retinol
      t.float :betacarotene
      t.float :vitamineD
      t.float :vitamineE
      t.float :vitamineK1
      t.float :vitamineK2
      t.float :vitamineC
      t.float :vitamineB1
      t.float :vitamineB2
      t.float :vitamineB3
      t.float :vitamineB5
      t.float :vitamineB6
      t.float :vitamineB9
      t.float :vitamineB12

      t.timestamps
    end
  end
end
