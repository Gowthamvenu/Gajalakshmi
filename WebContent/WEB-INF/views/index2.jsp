<style>
		.swag-line{
			content: '';
			<!-- position: absolute; -->
			display: block;
			<!-- top: 0; -->
			<!-- padding-top:2px; -->
			left: 0;
			right: 0;
			height: 2px;
			z-index: 2;
			background-color: #ac2aa1;
			background: -webkit-linear-gradient(45deg, #6b15a1, #ac2aa1);
			background: linear-gradient(45deg, #6b15a1, #ac2aa1);
		}
		
		div.polaroid {
		  width: 250px;
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		  text-align: center;
		}
		.parallax1 {
			/* The image used */
			background-image: url('Images/img1.jpg');

			/* Full height */
			min-height: 100%;

			/* Create the parallax scrolling effect */
			position:relative;
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			opacity: 0.65;
		}
		.parallax2 {
			/* The image used */
			background-image: url('Images/img2.jpg');

			/* Full height */
			height: 80%; 

			/* Create the parallax scrolling effect */
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			opacity: 0.65;
		}
		.pbw{
			color: #ddd;
			background-color: #282E34;
			text-align: center;
			padding: 50px 80px;
			text-align: justify;
		}
		
		.caption{
			position: absolute;
			left: 0;
			top: 50%;
			width: 100%;
			text-align: center;
			color: #6f2626;
		}
		.caption span.border {
		  background-color: #111;
		  color: #fff;
		  padding: 18px;
		  font-size: 25px;
		  letter-spacing: 10px;
		}
		@media (max-width: 767px) {
			.caption span.border {
			  background-color: #111;
			  color: #fff;
			  padding: 3px !important;
			  font-size: 25px;
			  letter-spacing: 10px;
			}
			
		}
		@media (max-width: 960px) {
		   .caption span.border {
				  background-color: #111;
				  color: #fff;
				  padding: 3px !important;
				  font-size: 25px;
				  letter-spacing: 10px;
			}
		}
		</style>
		
	
		
			<div class="parallax1">
				<div class="caption">
					<span class="border">HAI GAJALAKSHMI HANDLOOMS</span>
				</div>
			</div>
			<div class="pbw" style="background-color:#fff;">
			<h3 style="text-align:center;color:#111;">KASAVU SAREE</h3>
			<p style="color:#777;">This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
			</div>

			<div class="parallax2"></div>
			
			<div class="pbw">
			<h3 style="text-align:center;">SET MUNDU</h3>
			<p>This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
			</div>
			
			<div class="parallax1" ></div>
			
			<div class="pbw">
			<h3 style="text-align:center;">DHOTHI</h3>
			<p>This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
			</div>
			
			<div class="parallax2"></div>