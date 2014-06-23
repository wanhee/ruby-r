Shoes.app height: 200, width: 200 do
	background lightblue
	stack margin: 10 do
		caption strong "Shoes StopWatch"
		flow do
			button "start" do
				@time = Time.new
				@label.replace "Started at #{@time.strftime '%l:%M:%S %p'}"
			end
			button "stop" do
				@label.replace "Stopped, ", strong("#{Time.now - @time}"), " seconds elapsed."
			end
		end
		@label = para "Press ", strong("start"), "to begin timing."
	end
end