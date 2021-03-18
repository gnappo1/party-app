class PartiesController < ApplicationController

    def index
        @parties = Party.all
    end

    def show
        @party = Party.find_by(id: params[:id])
    end

    def new
        @party = Party.new
    end

    def create
        @party = Party.create(party_params)
        if @party.id
            redirect_to party_path(@party)
        else
            render :new 
        end
    end

    def edit
        @party = Party.find_by(id: params[:id])
    end

    def update
        @party = Party.find_by(id: params[:id])
        if @party.update(party_params)
            redirect_to party_path(@party)
        else
            render :edit 
        end
    end

    def destroy 
        @party = Party.find_by(id: params[:id])
        if @party.destroy
            redirect_to parties_path
        else
            render :show
        end
    end

    private

    def party_params
        params.require(:party).permit(:name, :date, :budget, :private)
    end
end
