#   Active Support 
    -> Its is the component which providesthe extra methods or method extension of the libraries that in a rails .
**There are mainly 4 types or parts**
    1. Core extensions :
        -> These are the main methods which are extended are used mainly in the real time 
        -> There are mainly 4 
            1. Date and Time calculations :
                * Date Methods :
                    1. current_time = Time.zone.now :
                        => 2026-02-04 05:40:50.969854600 UTC +00:00
                    2. current_time + 2.day : 
                        => 2026-02-06 05:41:33.168724000 UTC +00:00
                    3. current_time + 3.week :
                        => 2026-02-25 05:41:33.168724000 UTC +00:00
                    4. current_time + 4.hour :
			            => 2026-02-04 09:41:33.168724000 UTC +00:00
                    5. 1.hour.ago :
			            => 2026-02-04 04:47:29.931601100 UTC +00:00
                    6. curr_day = Date.today :
			            => Wed, 04 Feb 2026
                    7. 3.year.ago :
			            => 2023-02-04 05:53:36.436675000 UTC +00:00

                * Day Methods :               
                    1. Date.new(2026,02,04) :
			            => Wed, 04 Feb 2026
                    2. Date.new(2026,02,04).change(day:06)
			            => Fri, 06 Feb 2026
                    3. Date.new(2026,02,04).beginning_of_month
			            => Sun, 01 Feb 2026
                    4. Date.new(2026,02,04).end_of_month
			            => Sat, 28 Feb 2026

            2. String methods :
                    1. a1 = "ac shirt jan 10"
				        => "ac shirt jan 10"
                    2. a1.parameterize
				        => "ac-shirt-jan-10"
                    3. " laptop ".squish
			            => "laptop"
                    4. "laptop".camelize
			            => "Laptop"
                    5. " laptop is very good ".titleize
				        => "Laptop Is Very Good "
                    6. "laptops".singularize
				        => "laptop"
                    7. db-exmaple(dev):055> str.blank?
				        => true
                    8. str.present?
				        => false
            3. object presence :            
                    1. arr = []
                        => []
                    2. arr.nil? // it check presence of object 
                        => false
                    3. arr.empty?  // it count size
                        => true
                    4. arr.blank?  // there is no meaning full data .
                        => true
                    5. arr.present? // it says true if there is valid 
                        => false
            4. Nil Check Methods 
                    1. nil.present?
	                    => false
                    2. nil.blank?
	                    => true	
### Note :
	-> Empty is for collections ( array, hash, string )
	-> Remaining methods nil, blank, presence work on everything .





    


