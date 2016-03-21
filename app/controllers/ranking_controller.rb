class RankingController < ApplicationController
    
    def have
        @have_rankings = Have.group(:item_id).limit(10).order('count_item_id desc').count('item_id')
        #Destructively convert all keys using the block operations. Same as transform_keys but modifies self.
        @have_rankings.transform_keys!{|key| Item.find(key)}
    end
    
    def want
        @want_rankings = Want.group(:item_id).limit(10).order('count_item_id desc').count('item_id')
        #Destructively convert all keys using the block operations. Same as transform_keys but modifies self.
        @want_rankings.transform_keys!{|key| Item.find(key)}
    end
    
end