class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response

    private

    def unprocessable_entity_response(invalid)
        render json: { error: git invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
