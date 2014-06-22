Shoes.app do
	fill red
	orig_left, orig_top = nil, nil
	animate 24 do
		button, left, top = self.mouse
		line(orig_left, orig_top, left, top) if button == 1
		line(orig_left, orig_top, left, top) if button == 2
		orig_left, orig_top = left, top
	end
end