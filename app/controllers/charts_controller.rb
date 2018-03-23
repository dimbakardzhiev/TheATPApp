class ChartsController < ApplicationController
	before_action :logged_in_user, only: [:line_chart, :bar_chart, :form_bar_chart, :form_line_chart]
	rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_not_found
	
	
	def form_bar_chart
	end

	def form_line_chart
	end

	def line_chart
		@boolean = false
		@first_player = params[:first_player]
		@second_player = params[:second_player]
		@first_player_name = Player.find(@first_player[:player_id]).first_name + " " + Player.find(@first_player[:player_id]).last_name
		@second_player_name = Player.find(@second_player[:player_id]).first_name + " " + Player.find(@second_player[:player_id]).last_name
		@players = Player.find(@first_player[:player_id], @second_player[:player_id])
		@player = Player.find(@first_player[:player_id])
		@rankings = Ranking.all
		@line_chart_year = params[:line_chart_year]
		if @line_chart_year == ""
			redirect_to("/linecharts")
		end

		if @first_player == @second_player
			@boolean = true
		end
	end

	def bar_chart
		@players = Player.all
		@rankings = Ranking.all
		@bar_chart_year = params[:bar_chart_year]
		if @bar_chart_year == ""
			redirect_to("/barcharts")
		end
	end

end