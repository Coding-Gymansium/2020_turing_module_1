class Building
    attr_reader :units
    def initialize(units= [], renters= [], rented_units= [])
        @units = units
    end

    def add_unit(unit)
        @units << unit
    end

    def renters
        
        renters_names = @units.map do |unit|
                unit.renter.name if unit.renter
        end
        renters_names.compact
    
    end

    def average_rent
        # total_rent = []
        # @units.map do |unit|
        #    total_rent << unit.monthly_rent.to_f
        # end
        # total_rent.sum / total_rent.count.round(1)
        total = @units.sum do |unit|
            unit.monthly_rent
        end
        (total.to_f / @units.count).round(1)
    end

    def rented_units
        @units.find_all do |unit|
            unit.renter
        end
    end

    def renter_with_highest_rent
        # binding.pry
        highest_rent = rented_units.max_by do |unit| 
            unit.monthly_rent
        end.renter 
        # highest_rent.renter 

        # highest_paying_renter = []
        # highest_paying_renter << rented_units.max do |a, b|
        #     a.monthly_rent <=> b.monthly_rent
        # end
        
        # highest_paying_renter[0].renter
    end

    def units_by_number_of_bedrooms
            ## => shorter version
        # units_by_beds = Hash.new { |h, k| h[k] = []}

        #     @units.each do |unit| 
        #         units_by_beds[unit.bedrooms] << unit.number
        #     end
        #     units_by_beds

            ## => longer version
        # units_by_beds = {}

        # @units.each do |unit|
        #     if units_by_beds[unit.bedrooms]
        #         units_by_beds[unit.bedrooms] << unit.number
        #     else 
        #         units_by_beds[unit.bedrooms] = [unit.number]
        #     end
        # end
        # units_by_beds

        ## =>  version with reduce
        # units_by_beds = Hash.new { |h, k| h[k] = []}

        @units.reduce(Hash.new { |h, k| h[k] = []}) do |units_by_beds, unit|
                units_by_beds[unit.bedrooms] << unit.number
            units_by_beds
        end
            
    end


end

# building.units[0].renter.name