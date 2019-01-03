module Api
  module V1
    class SpongeMockController < ApplicationController
      def create
        content = params[:content]

        if content.present?
          render json: { mock: content.to_sponge_mock }
        else
          render json: { status: :error, message: 'sOmEtHiNg WeNt wRoNg' }, status: :unprocessable_entity
        end
      end
    end
  end
end
