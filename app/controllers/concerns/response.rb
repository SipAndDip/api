module Response
  # @param object [Array, Resource]
  def json_response(object, status = :ok)
    klass =
      if object.is_a? Array
        object.first.class.name
      else
        object.class.name
      end

    serializer = "#{klass}Serializer".constantize
    render json: serializer.new(object).serialized_json
  end
end
