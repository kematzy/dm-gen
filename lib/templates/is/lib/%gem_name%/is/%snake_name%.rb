module DataMapper
  module Is
    
    ##
    #  TODO:: Add some documentation about your plugin here
    # 
    # 
    # 
    module <%= class_name %>
      
      ##
      # (optional)
      # fired when your plugin gets included into Resource
      #
      def self.included(base)
        
      end
      
      ##
      # Methods that should be included in DataMapper::Model.
      # Normally this should just be your generator, so that the namespace
      # does not get cluttered. ClassMethods and InstanceMethods gets added
      # in the specific resources when you fire is :<%= snake_name %>
      ##
      # TODO:: Add description of what your method does
      # 
      # ==== Params 
      # 
      # * 
      # 
      # ==== Examples
      # 
      #   
      #   is :<%= snake_name %> ...
      #   
      #   is :<%= snake_name %> ....
      #   
      # 
      # @api public
      def is_<%= snake_name %>(options)
        
        # process params 
        
        
        # Add class & Instance methods
        extend  DataMapper::Is::<%= class_name %>::ClassMethods
        include DataMapper::Is::<%= class_name %>::InstanceMethods
        
        # add/process Model properties here
        # if properties.any?{ |p| p.name == :NAME_OF_YOUR_PROPERTY }
        #   # check the attributes given to the property here and set accordingly
        # else
        #   property :NAME_OF_YOUR_PROPERTY....
        # end
        
        # dynamic instance methods 
        # define_method("dynamic_#{method_name}") do 
        #   self.SOMETHING = SOMETHING_ELSE
        # end
        
        # callbacks 
        # before :valid? { do something }
        
        # validations
        
      end
      
      module ClassMethods
        
      end # ClassMethods
      
      module InstanceMethods
        
      end # InstanceMethods
      
    end # <%= class_name %>
  end # Is
  
  Model.append_extensions(Is::<%= class_name %>)
  
end # DataMapper
