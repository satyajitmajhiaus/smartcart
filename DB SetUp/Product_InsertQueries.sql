INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy A35',
 'Affordable smartphone with AMOLED display, 5G connectivity, and long-lasting battery.',
 182, 'INR', 22999, 'Samsung,Smartphone,Android,Affordable',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 80, 4.2, 310),

('Apple iPhone SE 4',
 'Compact iPhone with A17 Bionic chip, Retina display, and Touch ID.',
 182, 'INR', 49999, 'Apple,iPhone,Smartphone,Compact',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 84, 4.4, 420),

('Google Pixel 9a',
 'Budget smartphone with Tensor G4 chip, excellent camera, and clean Android experience.',
 182, 'INR', 34999, 'Google,Pixel,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 110, GETDATE(), GETDATE(), 82, 4.3, 380),

('OnePlus Nord 5',
 'Mid-range smartphone with AMOLED display, Snapdragon processor, and fast charging.',
 182, 'INR', 29999, 'OnePlus,Smartphone,Android,MidRange',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 81, 4.2, 340),

('Dell Inspiron 16',
 'Laptop with Intel i7 processor, SSD storage, and slim design for everyday use.',
 174, 'INR', 79999, 'Dell,Laptop,Notebook,Inspiron',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 83, 4.3, 360),

('HP Envy x360 15',
 'Convertible laptop with touchscreen display, AMD Ryzen processor, and premium design.',
 174, 'INR', 89999, 'HP,Laptop,Convertible,Envy',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 85, 4.4, 390),

('Lenovo Yoga Slim 7',
 'Ultrabook with OLED display, Intel Core Ultra processor, and lightweight design.',
 174, 'INR', 105000, 'Lenovo,Laptop,Yoga,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 87, 4.5, 420),

('Asus ROG Phone 8',
 'Gaming smartphone with Snapdragon 8 Gen 3, AMOLED display, and advanced cooling system.',
 182, 'INR', 79999, 'Asus,Smartphone,Gaming,ROG',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 35, GETDATE(), GETDATE(), 90, 4.7, 610),

('Sony WH-XB910N',
 'Wireless headphones with extra bass, ANC, and long battery life.',
 163, 'INR', 12990, 'Sony,Headphones,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 100, GETDATE(), GETDATE(), 82, 4.3, 350),

('Boat Rockerz 550',
 'Affordable wireless headphones with deep bass, Bluetooth 5.0, and cushioned earcups.',
 163, 'INR', 1990, 'Boat,Headphones,Audio,Affordable',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 78, 4.1, 280),

('Samsung 43" Crystal UHD',
 'Smart TV with Crystal UHD panel, HDR support, and multiple streaming apps.',
 153, 'INR', 35999, 'Samsung,SmartTV,UHD,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 83, 4.3, 330),

('LG 32" Smart LED TV',
 'Compact smart TV with LED panel, HDR support, and built-in apps.',
 153, 'INR', 22999, 'LG,SmartTV,LED,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 80, 4.2, 300),

('Voltas 1T Window AC',
 'Window AC with copper condenser, turbo cooling, and energy efficiency.',
 205, 'INR', 25990, 'Voltas,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 85, GETDATE(), GETDATE(), 79, 4.2, 280),

('Blue Star 2T Inverter AC',
 'Split AC with inverter compressor, copper condenser, and dust filter.',
 205, 'INR', 52990, 'BlueStar,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 84, 4.4, 350),

('Whirlpool 6kg Washing Machine',
 'Top-load washing machine with inverter motor, multiple wash programs, and energy efficiency.',
 205, 'INR', 22990, 'Whirlpool,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 81, 4.3, 310),

('Nike Revolution 7',
 'Running shoes with cushioned midsole, breathable mesh, and durable outsole.',
 201, 'INR', 4999, 'Nike,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 80, 4.2, 290),

('Adidas Duramo SL',
 'Affordable running shoes with lightweight cushioning, breathable mesh, and durable outsole.',
 201, 'INR', 3999, 'Adidas,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 79, 4.1, 270),

('Philips Induction Cooktop',
 'Energy-efficient induction cooktop with multiple cooking modes and safety features.',
 205, 'INR', 3499, 'Philips,Cooktop,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 82, 4.3, 320),

('Prestige Mixer Grinder 750W',
 'Durable mixer grinder with multiple jars, powerful motor, and easy cleaning.',
 205, 'INR', 5990, 'Prestige,Mixer,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 100, GETDATE(), GETDATE(), 83, 4.4, 340);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy Tab S10',
 'Android tablet with AMOLED display, Snapdragon processor, and S Pen support.',
 174, 'INR', 79999, 'Samsung,Tablet,Android,GalaxyTab',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 88, 4.6, 520),

('Apple AirPods Max 2',
 'Premium over-ear headphones with spatial audio, ANC, and seamless iOS integration.',
 163, 'INR', 59990, 'Apple,Headphones,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 91, 4.8, 740),

('Dell Alienware Aurora R16',
 'Gaming desktop with Intel Core i9, RTX 5090 GPU, and liquid cooling.',
 173, 'INR', 325000, 'Dell,Gaming,Desktop,Alienware',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 15, GETDATE(), GETDATE(), 94, 4.9, 810),

('LG 55" NanoCell TV',
 'Smart TV with NanoCell technology, HDR10, and AI-powered picture enhancement.',
 153, 'INR', 69999, 'LG,NanoCell,SmartTV,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 50, GETDATE(), GETDATE(), 84, 4.4, 360),

('Sony PlayStation 5 Pro',
 'Next-gen gaming console with 8K support, ray tracing, and ultra-fast SSD.',
 173, 'INR', 69990, 'Sony,PlayStation,Console,Gaming',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 35, GETDATE(), GETDATE(), 95, 4.9, 1200),

('Microsoft Xbox Series X2',
 'Gaming console with advanced graphics, Game Pass integration, and 8K HDR support.',
 173, 'INR', 64990, 'Microsoft,Xbox,Console,Gaming',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 93, 4.8, 980),

('Canon EOS R6 Mark III',
 'Mirrorless camera with 24MP sensor, 4K 120fps video, and advanced autofocus.',
 193, 'INR', 189999, 'Canon,Camera,Mirrorless,Photography',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 90, 4.7, 620),

('Nikon Z8',
 'Professional mirrorless camera with 45MP sensor, 8K video recording, and rugged design.',
 193, 'INR', 249999, 'Nikon,Camera,Mirrorless,Professional',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 20, GETDATE(), GETDATE(), 92, 4.8, 710),

('Dyson Pure Cool Air Purifier',
 'Smart air purifier with bladeless fan design, HEPA filter, and app connectivity.',
 205, 'INR', 45990, 'Dyson,AirPurifier,Appliance,SmartHome',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 87, 4.6, 430),

('Prestige Rice Cooker 2L',
 'Electric rice cooker with non-stick pan, auto shut-off, and compact design.',
 205, 'INR', 2990, 'Prestige,RiceCooker,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 79, 4.2, 280);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Realme Narzo 70 Pro',
 'Mid-range smartphone with AMOLED display, 5G connectivity, and fast charging.',
 182, 'INR', 22999, 'Realme,Smartphone,Android,MidRange',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 80, 4.2, 280),

('Samsung Galaxy M55',
 'Affordable smartphone with large AMOLED display, 6000mAh battery, and triple camera setup.',
 182, 'INR', 19999, 'Samsung,Smartphone,Android,Affordable',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 78, 4.1, 250),

('Apple iPad Pro M4',
 'Tablet with Apple Silicon M4 chip, ProMotion display, and Pencil Pro support.',
 174, 'INR', 119900, 'Apple,iPad,Tablet,Pro',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 92, 4.8, 880),

('Microsoft Surface Laptop 6',
 'Premium laptop with Intel Core Ultra processor, touchscreen display, and Windows 11 integration.',
 174, 'INR', 145000, 'Microsoft,Laptop,Surface,Windows',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 89, 4.7, 620),

('Sony Bravia XR 65"',
 'Smart TV with Cognitive Processor XR, OLED panel, and Dolby Vision support.',
 153, 'INR', 179999, 'Sony,Bravia,SmartTV,OLED',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 91, 4.8, 640),

('LG Gram 16',
 'Ultra-light laptop with Intel Core Ultra processor, large display, and long battery life.',
 174, 'INR', 135000, 'LG,Laptop,Gram,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 87, 4.6, 510),

('Noise Luna Ring',
 'Smart ring with health tracking, sleep monitoring, and app integration.',
 163, 'INR', 19999, 'Noise,SmartRing,Wearable,Health',
 'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&w=400',
 85, GETDATE(), GETDATE(), 82, 4.3, 330),

('Samsung Galaxy Buds 3 Pro',
 'Wireless earbuds with ANC, immersive audio, and seamless Galaxy ecosystem integration.',
 163, 'INR', 17999, 'Samsung,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 100, GETDATE(), GETDATE(), 86, 4.5, 410),

('Whirlpool Refrigerator 340L',
 'Double-door refrigerator with inverter compressor, frost-free cooling, and energy efficiency.',
 205, 'INR', 38990, 'Whirlpool,Refrigerator,Appliance,Home',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 83, 4.4, 350),

('Godrej 1.5T Inverter AC',
 'Split AC with inverter compressor, copper condenser, and anti-bacterial filter.',
 205, 'INR', 36990, 'Godrej,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 82, 4.3, 320),

('Nike Air Force 1',
 'Classic lifestyle sneakers with leather upper, cushioned midsole, and iconic design.',
 201, 'INR', 8999, 'Nike,Shoes,Fashion,Sneakers',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 85, 4.5, 420),

('Adidas Superstar',
 'Lifestyle sneakers with shell-toe design, durable leather, and cushioned sole.',
 201, 'INR', 7999, 'Adidas,Shoes,Fashion,Sneakers',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 83, 4.4, 380),

('Philips Blender HL7705',
 'Powerful blender with multiple speed settings, durable jars, and easy cleaning.',
 205, 'INR', 5990, 'Philips,Blender,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 81, 4.3, 310),

('Prestige Gas Stove 3 Burner',
 'Gas stove with toughened glass top, high-efficiency burners, and ergonomic knobs.',
 205, 'INR', 7490, 'Prestige,GasStove,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 80, 4.2, 290),

('Havells Immersion Rod Heater',
 'Portable immersion rod water heater with durable heating element and safety features.',
 205, 'INR', 999, 'Havells,Heater,Appliance,Home',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 77, 4.1, 240);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Poco F6 Pro',
 'Performance smartphone with Snapdragon 8 Gen 3, AMOLED display, and 120W fast charging.',
 182, 'INR', 45999, 'Poco,Smartphone,Android,Performance',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 80, GETDATE(), GETDATE(), 85, 4.4, 390),

('Redmi Note 15 Pro',
 'Mid-range smartphone with 200MP camera, AMOLED display, and large battery.',
 182, 'INR', 28999, 'Redmi,Smartphone,Android,MidRange',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 83, 4.3, 340),

('Infinix Zero Ultra',
 'Affordable smartphone with curved AMOLED display, 200MP camera, and 180W charging.',
 182, 'INR', 34999, 'Infinix,Smartphone,Android,Affordable',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 82, 4.2, 310),

('Asus Vivobook Pro 16',
 'Laptop with OLED display, NVIDIA RTX graphics, and Intel Core Ultra processor.',
 174, 'INR', 125000, 'Asus,Laptop,Vivobook,Creator',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 86, 4.5, 420),

('HP Omen 17',
 'Gaming laptop with RTX 4080 GPU, high refresh rate display, and advanced cooling.',
 173, 'INR', 215000, 'HP,Gaming,Laptop,Omen',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 22, GETDATE(), GETDATE(), 91, 4.7, 580),

('Sony LinkBuds S',
 'Compact wireless earbuds with adaptive sound control, ANC, and lightweight design.',
 163, 'INR', 16990, 'Sony,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 110, GETDATE(), GETDATE(), 84, 4.4, 370),

('Beats Studio Buds+',
 'Wireless earbuds with spatial audio, ANC, and seamless Apple/Android compatibility.',
 163, 'INR', 14990, 'Beats,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 83, 4.3, 340),

('Samsung 75" UHD Smart TV',
 'Large UHD smart TV with HDR10+, Dolby Atmos, and multiple streaming apps.',
 153, 'INR', 99999, 'Samsung,UHD,SmartTV,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 28, GETDATE(), GETDATE(), 87, 4.5, 460),

('Blue Star 1.5T Inverter AC',
 'Split AC with inverter compressor, copper condenser, and dust filter.',
 205, 'INR', 37990, 'BlueStar,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 65, GETDATE(), GETDATE(), 82, 4.3, 320),

('Samsung 8kg EcoBubble Washer',
 'Front-load washing machine with EcoBubble technology, inverter motor, and smart controls.',
 205, 'INR', 45990, 'Samsung,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 85, 4.4, 350),

('Skechers GoRun 10',
 'Running shoes with lightweight cushioning, breathable mesh, and durable outsole.',
 201, 'INR', 7999, 'Skechers,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 80, 4.3, 300),

('New Balance Fresh Foam 1080v13',
 'Premium running shoes with Fresh Foam cushioning, breathable mesh, and durable outsole.',
 201, 'INR', 12999, 'NewBalance,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 84, 4.5, 360),

('Philips Air Purifier Series 3000i',
 'Smart air purifier with HEPA filter, app control, and real-time air quality monitoring.',
 205, 'INR', 24990, 'Philips,AirPurifier,Appliance,SmartHome',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 86, 4.6, 410),

('Prestige Pressure Cooker 5L',
 'Durable aluminum pressure cooker with safety valve, induction base, and ergonomic handles.',
 205, 'INR', 2999, 'Prestige,Cooker,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 78, 4.2, 280),

('Havells Water Heater 25L',
 'Electric geyser with energy-efficient heating, safety features, and durable design.',
 205, 'INR', 8990, 'Havells,Geyser,Appliance,Home',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 81, 4.3, 310);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Motorola Edge 50 Pro',
 'Smartphone with Snapdragon processor, curved OLED display, and fast charging.',
 182, 'INR', 45999, 'Motorola,Smartphone,Android,Performance',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 65, GETDATE(), GETDATE(), 84, 4.4, 360),

('iQOO 12',
 'Gaming-focused smartphone with Snapdragon 8 Gen 3, AMOLED display, and liquid cooling.',
 182, 'INR', 55999, 'iQOO,Smartphone,Android,Gaming',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 86, 4.5, 410),

('Tecno Phantom V Fold',
 'Foldable smartphone with large AMOLED display, multitasking features, and premium design.',
 182, 'INR', 89999, 'Tecno,Smartphone,Android,Foldable',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 82, 4.3, 280),

('Honor MagicBook X16',
 'Affordable laptop with Intel i5 processor, slim design, and long battery life.',
 174, 'INR', 55999, 'Honor,Laptop,Notebook,Affordable',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 81, 4.3, 300),

('Samsung Odyssey Neo G9',
 'Ultra-wide gaming monitor with mini-LED technology, 240Hz refresh rate, and immersive design.',
 153, 'INR', 185000, 'Samsung,Monitor,Gaming,NeoG9',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 18, GETDATE(), GETDATE(), 90, 4.7, 520),

('LG Tone Free T90',
 'Wireless earbuds with Dolby Atmos support, adaptive ANC, and UVnano charging case.',
 163, 'INR', 19990, 'LG,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 85, 4.5, 410),

('Realme Buds Air 6',
 'True wireless earbuds with ANC, low latency gaming mode, and long battery life.',
 163, 'INR', 4999, 'Realme,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 80, 4.2, 290),

('Samsung 65" QLED 4K',
 'Smart TV with Quantum Dot technology, HDR10+, and multiple streaming apps.',
 153, 'INR', 124999, 'Samsung,QLED,SmartTV,4K',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 88, 4.6, 470),

('Voltas 1.5T Inverter AC',
 'Split AC with inverter compressor, copper condenser, and turbo cooling.',
 205, 'INR', 35990, 'Voltas,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 83, 4.3, 330),

('Bosch 7kg Washing Machine',
 'Front-load washing machine with EcoSilence motor, multiple wash programs, and energy efficiency.',
 205, 'INR', 42990, 'Bosch,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 84, 4.4, 350),

('Nike ZoomX Vaporfly 5',
 'Elite running shoes with carbon plate, lightweight design, and responsive cushioning.',
 201, 'INR', 18999, 'Nike,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 89, 4.7, 510),

('Adidas Yeezy Boost 350 V3',
 'Lifestyle sneakers with Primeknit upper, Boost cushioning, and iconic design.',
 201, 'INR', 21999, 'Adidas,Shoes,Fashion,Sneakers',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 87, 4.6, 460),

('Philips Smart LED TV 43"',
 'Affordable smart TV with LED panel, HDR support, and built-in streaming apps.',
 153, 'INR', 32999, 'Philips,SmartTV,LED,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 80, GETDATE(), GETDATE(), 82, 4.3, 310),

('Prestige Electric Kettle 1.5L',
 'Electric kettle with stainless steel body, auto shut-off, and fast boiling.',
 205, 'INR', 1999, 'Prestige,Kettle,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 78, 4.2, 270),

('Havells Ceiling Fan 1200mm',
 'Energy-efficient ceiling fan with stylish design, high-speed motor, and durable blades.',
 205, 'INR', 3499, 'Havells,Fan,Appliance,Home',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 80, 4.3, 290);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Realme GT 7 Pro',
 'High-performance smartphone with Snapdragon 8 Gen 3, AMOLED display, and fast charging.',
 182, 'INR', 55999, 'Realme,Smartphone,Android,Performance',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 86, 4.5, 420),

('Vivo X100 Ultra',
 'Premium smartphone with advanced camera system, curved AMOLED display, and 5G connectivity.',
 182, 'INR', 69999, 'Vivo,Smartphone,Android,Camera',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 88, 4.6, 510),

('Oppo Find X7 Pro',
 'Flagship smartphone with periscope zoom camera, Snapdragon processor, and sleek design.',
 182, 'INR', 74999, 'Oppo,Smartphone,Android,Flagship',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 87, 4.6, 480),

('Asus ZenBook 15 OLED',
 'Ultrabook with OLED display, Intel Core Ultra processor, and lightweight design.',
 174, 'INR', 135000, 'Asus,Laptop,ZenBook,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 28, GETDATE(), GETDATE(), 85, 4.5, 390),

('Acer Predator Helios 18',
 'Gaming laptop with RTX 5090 GPU, high refresh rate display, and advanced cooling system.',
 173, 'INR', 275000, 'Acer,Gaming,Laptop,Predator',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 20, GETDATE(), GETDATE(), 93, 4.8, 640),

('Boat Nirvana 751 ANC',
 'Wireless headphones with active noise cancellation, deep bass, and long battery life.',
 163, 'INR', 4990, 'Boat,Headphones,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 82, 4.3, 310),

('Noise ColorFit Ultra 4',
 'Smartwatch with AMOLED display, fitness tracking, and customizable watch faces.',
 163, 'INR', 5999, 'Noise,Smartwatch,Wearable,Fitness',
 'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 80, 4.2, 280),

('Samsung 55" Crystal UHD',
 'Smart TV with Crystal UHD panel, HDR support, and multiple streaming apps.',
 153, 'INR', 55999, 'Samsung,SmartTV,UHD,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 84, 4.4, 350),

('Haier 1.5T Inverter AC',
 'Split air conditioner with inverter compressor, fast cooling, and energy efficiency.',
 205, 'INR', 38990, 'Haier,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 83, 4.3, 320),

('IFB 8kg Front Load Washer',
 'Front-load washing machine with inverter motor, steam wash, and smart controls.',
 205, 'INR', 42990, 'IFB,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 50, GETDATE(), GETDATE(), 85, 4.4, 370),

('Reebok Nano X4',
 'Training shoes with durable design, cushioned midsole, and breathable upper.',
 201, 'INR', 7999, 'Reebok,Shoes,Fashion,Training',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 81, 4.3, 290),

('Under Armour HOVR Machina 3',
 'Running shoes with responsive cushioning, lightweight design, and Bluetooth connectivity.',
 201, 'INR', 10999, 'UnderArmour,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 83, 4.4, 310),

('Mi Smart LED Bulb',
 'Smart LED bulb with app control, voice assistant compatibility, and adjustable brightness.',
 205, 'INR', 999, 'Xiaomi,SmartBulb,Appliance,SmartHome',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 300, GETDATE(), GETDATE(), 77, 4.2, 250),

('Prestige Induction Cooktop',
 'Energy-efficient induction cooktop with multiple cooking modes and safety features.',
 205, 'INR', 3499, 'Prestige,Cooktop,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 79, 4.3, 280),

('Philips Mixer Grinder HL7707',
 'Powerful mixer grinder with multiple jars, durable motor, and easy cleaning.',
 205, 'INR', 7990, 'Philips,Mixer,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 82, 4.4, 330);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('OnePlus 13 Pro',
 'Flagship smartphone with Snapdragon 8 Gen 3, Hasselblad camera system, and 120Hz AMOLED display.',
 182, 'INR', 79999, 'OnePlus,Smartphone,Android,Flagship',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 91, 4.7, 640),

('Google Pixel 9 Pro',
 'Smartphone with Tensor G4 chip, advanced AI features, and exceptional photography performance.',
 182, 'INR', 89999, 'Google,Pixel,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 38, GETDATE(), GETDATE(), 92, 4.8, 720),

('Dell XPS 15 OLED',
 'Premium laptop with Intel Core Ultra processor, OLED display, and sleek aluminum design.',
 174, 'INR', 165000, 'Dell,Laptop,XPS,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 89, 4.6, 510),

('HP Spectre x360 14',
 'Convertible laptop with OLED touchscreen, Intel Evo certification, and premium build quality.',
 174, 'INR', 145000, 'HP,Laptop,Spectre,Convertible',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 87, 4.5, 480),

('Bose QuietComfort Ultra',
 'Wireless headphones with world-class noise cancellation, immersive audio, and long battery life.',
 163, 'INR', 34990, 'Bose,Headphones,Audio,NoiseCancelling',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 93, 4.8, 690),

('Apple Watch Series 10',
 'Smartwatch with advanced health tracking, improved battery life, and seamless iOS integration.',
 163, 'INR', 45900, 'Apple,Smartwatch,Wearable,Health',
 'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 90, 4.7, 820),

('Samsung Galaxy Watch 7',
 'Smartwatch with Wear OS, advanced fitness tracking, and durable design.',
 163, 'INR', 32999, 'Samsung,Smartwatch,Wearable,Fitness',
 'https://images.pexels.com/photos/267394/pexels-photo-267394.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 85, 4.5, 540),

('LG OLED evo C4 65"',
 'Smart TV with OLED evo panel, Dolby Vision IQ, and AI-powered upscaling.',
 153, 'INR', 199999, 'LG,OLED,SmartTV,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 20, GETDATE(), GETDATE(), 92, 4.8, 610),

('Panasonic Air Conditioner 1.5T',
 'Energy-efficient split AC with inverter technology, fast cooling, and smart controls.',
 205, 'INR', 45990, 'Panasonic,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 50, GETDATE(), GETDATE(), 84, 4.4, 370),

('Whirlpool 7kg Washing Machine',
 'Front-load washing machine with 6th Sense technology, inverter motor, and quick wash modes.',
 205, 'INR', 35990, 'Whirlpool,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 65, GETDATE(), GETDATE(), 82, 4.3, 310),

('Adidas Ultraboost 25',
 'High-performance running shoes with responsive cushioning and breathable Primeknit upper.',
 201, 'INR', 12999, 'Adidas,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 86, 4.6, 420),

('Puma RS-X Sneakers',
 'Lifestyle sneakers with bold design, cushioned midsole, and durable outsole.',
 201, 'INR', 8999, 'Puma,Shoes,Fashion,Sneakers',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 80, 4.4, 350),

('Asus ROG Strix G18',
 'Gaming laptop with NVIDIA RTX 5090 GPU, high refresh rate display, and advanced cooling.',
 173, 'INR', 245000, 'Asus,Gaming,Laptop,ROG',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 18, GETDATE(), GETDATE(), 94, 4.9, 770),

('MSI Raider GE78 HX',
 'Gaming laptop with Intel Core i9 HX processor, RTX graphics, and RGB lighting.',
 173, 'INR', 265000, 'MSI,Gaming,Laptop,Notebook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 22, GETDATE(), GETDATE(), 92, 4.8, 690),

('KitchenAid Stand Mixer',
 'Premium stand mixer with multiple attachments, durable build, and powerful motor.',
 205, 'INR', 49990, 'KitchenAid,Mixer,Appliance,Cooking',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 88, 4.7, 510);INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy S24 Ultra',
 'Flagship smartphone with Snapdragon 8 Gen 3, 200MP camera, and AI-powered features.',
 182, 'INR', 124999, 'Samsung,Smartphone,Android,Flagship',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 35, GETDATE(), GETDATE(), 95, 4.8, 920),

('Apple iPhone 16 Pro Max',
 'Premium smartphone with A18 Bionic chip, ProMotion display, and advanced camera system.',
 182, 'INR', 139999, 'Apple,iPhone,Smartphone,iOS',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 28, GETDATE(), GETDATE(), 97, 4.9, 1100),

('Lenovo ThinkPad X1 Carbon Gen 12',
 'Business ultrabook with Intel Core Ultra processor, lightweight carbon-fiber design, and enterprise-grade security.',
 174, 'INR', 189999, 'Lenovo,Laptop,ThinkPad,Business',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 15, GETDATE(), GETDATE(), 90, 4.7, 640),

('Apple MacBook Air M4',
 'Ultra-thin laptop with Apple Silicon M4 chip, Retina display, and all-day battery life.',
 174, 'INR', 129999, 'Apple,Laptop,MacBook,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 22, GETDATE(), GETDATE(), 92, 4.8, 720),

('Sony WH-1000XM6',
 'Next-gen noise-cancelling headphones with adaptive sound control and improved battery life.',
 163, 'INR', 29999, 'Sony,Headphones,Audio,NoiseCancelling',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 50, GETDATE(), GETDATE(), 94, 4.9, 870),

('Amazon Echo Dot 6th Gen',
 'Smart speaker with Alexa voice assistant, improved sound quality, and compact design.',
 163, 'INR', 5999, 'Amazon,SmartSpeaker,Alexa,SmartHome',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 85, 4.5, 560),

('Xiaomi Smart Air Fryer 6L',
 'Large-capacity air fryer with app control, multiple cooking modes, and energy efficiency.',
 205, 'INR', 8999, 'Xiaomi,AirFryer,Appliance,SmartKitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 83, 4.4, 430),

('Levi’s Slim Fit Jeans',
 'Classic slim-fit denim jeans with durable stitching and modern style.',
 201, 'INR', 3499, 'Levis,Fashion,Jeans,Clothing',
 'https://images.pexels.com/photos/428338/pexels-photo-428338.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 78, 4.3, 310),

('Harry Potter Complete Box Set',
 'Fantasy book series collection with all seven novels in hardcover edition.',
 210, 'INR', 5999, 'HarryPotter,Books,Fiction,Fantasy',
 'https://images.pexels.com/photos/1112048/pexels-photo-1112048.jpeg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 96, 4.9, 1500),

('Lego Technic Ferrari Daytona SP3',
 'Detailed Lego Technic model with authentic Ferrari design and advanced building techniques.',
 211, 'INR', 19999, 'Lego,Toys,Ferrari,Technic',
 'https://images.pexels.com/photos/163077/macro-close-up-toy-lego-163077.jpeg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 89, 4.8, 620),

('Samsung 75" Neo QLED 8K',
 'Premium 8K QLED TV with Quantum HDR, AI upscaling, and Dolby Atmos sound.',
 153, 'INR', 249999, 'Samsung,QLED,SmartTV,8K',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 93, 4.9, 880),

('Dyson V15 Detect Absolute',
 'Cordless vacuum cleaner with laser dust detection, powerful suction, and HEPA filtration.',
 205, 'INR', 59990, 'Dyson,Vacuum,Appliance,Cleaning',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 90, 4.8, 540),

('JBL Flip 7',
 'Portable Bluetooth speaker with waterproof design, enhanced bass, and 24-hour battery life.',
 163, 'INR', 12990, 'JBL,Speaker,Audio,Portable',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 87, 4.6, 460),

('Nike Air Zoom Pegasus 42',
 'Running shoes with responsive cushioning, breathable mesh, and durable outsole.',
 201, 'INR', 9999, 'Nike,Shoes,Fashion,Running',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 84, 4.5, 390),

('LG InstaView Refrigerator 675L',
 'Smart refrigerator with InstaView door, Wi-Fi connectivity, and energy-efficient cooling.',
 205, 'INR', 145000, 'LG,Refrigerator,Appliance,SmartHome',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 88, 4.7, 510);INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy A54',
 'Mid-range smartphone with AMOLED display, 5G connectivity, and long-lasting battery.',
 182, 'INR', 28999, 'Samsung,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 210, GETDATE(), GETDATE(), 82, 4.4, 320),

('Apple iPad Air M2',
 'Lightweight tablet with Apple Silicon M2 chip, Liquid Retina display, and Pencil support.',
 174, 'INR', 59900, 'Apple,iPad,Tablet',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 88, 4.6, 540),

('Dell Inspiron 14',
 'Affordable laptop with Intel i5 processor, SSD storage, and slim design for everyday use.',
 174, 'INR', 55000, 'Dell,Laptop,Notebook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 80, 4.3, 280),

('Sony WH-1000XM5',
 'Noise-cancelling headphones with adaptive sound control and premium comfort.',
 163, 'INR', 29990, 'Sony,Headphones,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 92, 4.8, 870),

('Canon EOS M50 Mark II',
 'Compact mirrorless camera with 24MP sensor, 4K video, and vlogging features.',
 193, 'INR', 58999, 'Canon,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 85, 4.6, 410),

('LG Gram 17',
 'Ultra-light laptop with large display, Intel i7 processor, and long battery life.',
 174, 'INR', 135000, 'LG,Laptop,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 87, 4.7, 520),

('HP Pavilion Gaming 15',
 'Gaming laptop with NVIDIA graphics, fast refresh display, and dual fan cooling.',
 173, 'INR', 78000, 'HP,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 83, 4.5, 390),

('Samsung Neo QLED 75"',
 'Premium QLED TV with AI upscaling, Quantum HDR, and immersive surround sound.',
 153, 'INR', 249999, 'Samsung,QLED,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 91, 4.8, 640),

('Nikon Coolpix P950',
 'Bridge camera with 83x optical zoom, 4K video, and versatile shooting modes.',
 192, 'INR', 69999, 'Nikon,Bridge,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 80, 4.4, 310),

('Philips Air Fryer XL',
 'Digital air fryer with rapid air technology, large capacity, and easy cleaning.',
 205, 'INR', 12999, 'Philips,AirFryer,Appliance',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 110, GETDATE(), GETDATE(), 82, 4.5, 420),

('Panasonic Lumix GH6',
 'Professional mirrorless camera with 25MP sensor, advanced video features, and rugged design.',
 193, 'INR', 165000, 'Panasonic,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 86, 4.7, 510),

('Lenovo ThinkPad X1 Carbon',
 'Business ultrabook with carbon-fiber design, Intel i7 processor, and enterprise security.',
 174, 'INR', 145000, 'Lenovo,ThinkPad,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 89, 4.8, 640),

('Sony Alpha A7 IV',
 'Full-frame mirrorless camera with 33MP sensor, 4K 60fps video, and advanced autofocus.',
 193, 'INR', 210000, 'Sony,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 20, GETDATE(), GETDATE(), 93, 4.9, 720),

('JBL Charge 5',
 'Portable Bluetooth speaker with waterproof design, powerful bass, and 20-hour battery life.',
 163, 'INR', 14990, 'JBL,Speaker,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 160, GETDATE(), GETDATE(), 85, 4.6, 430),

('Dyson V12 Detect Slim',
 'Cordless vacuum cleaner with laser dust detection, powerful suction, and lightweight design.',
 205, 'INR', 45990, 'Dyson,Vacuum,Appliance',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 55, GETDATE(), GETDATE(), 88, 4.7, 510);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('OnePlus 12',
 'Flagship smartphone with Snapdragon processor, fast charging, and AMOLED display.',
 182, 'INR', 69999, 'OnePlus,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 92, 4.7, 640),

('Realme GT Neo 5',
 'Affordable performance smartphone with 150W fast charging and gaming features.',
 182, 'INR', 34999, 'Realme,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 220, GETDATE(), GETDATE(), 85, 4.5, 420),

('Asus ROG Strix G17',
 'Gaming laptop with RTX graphics, RGB keyboard, and high refresh rate display.',
 173, 'INR', 125000, 'Asus,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 88, 4.6, 510),

('HP Omen 16',
 'Gaming laptop with Intel i7 processor, RTX graphics, and advanced cooling system.',
 173, 'INR', 110000, 'HP,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 84, 4.5, 430),

('LG OLED evo 77"',
 'Premium OLED TV with AI picture processing, Dolby Vision, and immersive sound.',
 153, 'INR', 199999, 'LG,OLED,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 90, 4.8, 520),

('Sony PlayStation 5',
 'Next-gen gaming console with ultra-fast SSD, ray tracing, and immersive DualSense controller.',
 185, 'INR', 55990, 'Sony,PlayStation,Gaming',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 95, 4.9, 980),

('Microsoft Xbox Series X',
 'Powerful gaming console with 4K gaming, Game Pass support, and fast load times.',
 185, 'INR', 49990, 'Microsoft,Xbox,Gaming',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 140, GETDATE(), GETDATE(), 92, 4.8, 870),

('Canon EOS 5D Mark IV',
 'Professional DSLR camera with 30.4MP sensor, 4K video, and advanced autofocus.',
 192, 'INR', 185000, 'Canon,DSLR,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 88, 4.7, 640),

('Nikon Z6 II',
 'Mirrorless camera with 24.5MP sensor, dual processors, and 4K UHD video recording.',
 193, 'INR', 145000, 'Nikon,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 35, GETDATE(), GETDATE(), 86, 4.6, 520),

('Bose QuietComfort 45',
 'Noise-cancelling headphones with long battery life and premium sound quality.',
 163, 'INR', 29990, 'Bose,Headphones,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 89, 4.7, 760),

('JBL Flip 6',
 'Portable Bluetooth speaker with waterproof design, powerful bass, and 12-hour battery life.',
 163, 'INR', 9990, 'JBL,Speaker,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 84, 4.5, 430),

('Whirlpool 340L Refrigerator',
 'Frost-free refrigerator with inverter compressor, spacious compartments, and energy efficiency.',
 205, 'INR', 45999, 'Whirlpool,Refrigerator,Appliance',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 82, 4.4, 310),

('Philips Hair Dryer',
 'Compact hair dryer with multiple heat settings, foldable design, and quick drying.',
 207, 'INR', 2999, 'Philips,HairDryer,PersonalCare',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 78, 4.3, 280),

('Dyson Airwrap Styler',
 'Premium hair styling tool with multiple attachments, intelligent heat control, and sleek design.',
 207, 'INR', 45990, 'Dyson,HairStyler,PersonalCare',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 92, 4.8, 640);
INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy S23 Ultra',
 'Flagship Android smartphone with 200MP camera, Snapdragon processor, and premium design.',
 182, 'INR', 124999, 'Samsung,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 95, 4.8, 870),

('Apple iPhone 15 Pro',
 'Premium iPhone with A17 chip, advanced cameras, and seamless integration with iOS ecosystem.',
 183, 'INR', 134900, 'Apple,iPhone,Smartphone',
 'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 97, 4.9, 1020),

('Dell XPS 15',
 'High-performance ultrabook with OLED display, Intel i7 processor, and sleek aluminum chassis.',
 174, 'INR', 145000, 'Dell,Laptop,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 88, 4.7, 640),

('Sony Bravia OLED 65"',
 'Premium OLED TV delivering cinematic visuals, deep blacks, and immersive Dolby Atmos audio.',
 153, 'INR', 129999, 'Sony,OLED,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 90, 4.8, 520),

('Canon EOS R7 Mirrorless',
 'Advanced mirrorless camera with 32MP sensor, 4K video, and fast autofocus for professionals.',
 193, 'INR', 145000, 'Canon,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 85, 4.7, 640),

('Bose Soundbar 700',
 'Premium soundbar with deep bass, Alexa integration, and wireless connectivity for home theaters.',
 163, 'INR', 79999, 'Bose,Soundbar,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 88, 4.6, 430),

('HP Spectre x360',
 'Convertible ultrabook with touchscreen, Intel i7 processor, and sleek design for professionals.',
 174, 'INR', 118000, 'HP,Laptop,Convertible',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 87, 4.6, 540),

('Lenovo Legion 5 Pro',
 'Gaming laptop with RTX graphics, high refresh display, and advanced cooling system.',
 173, 'INR', 135000, 'Lenovo,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 89, 4.7, 720),

('LG NanoCell 55"',
 'Smart TV with NanoCell technology, HDR support, and AI-powered picture enhancements.',
 152, 'INR', 79999, 'LG,NanoCell,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 84, 4.5, 410),

('Nikon D7500 DSLR',
 'DSLR camera with 20.9MP sensor, 4K UHD video recording, and versatile lens compatibility.',
 192, 'INR', 95000, 'Nikon,DSLR,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 82, 4.6, 530)

-- … continue with 39 more rows in this batch …
INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy S23 Ultra',
 'Flagship Android smartphone with 200MP camera, Snapdragon processor, and premium design.',
 182, 'INR', 124999, 'Samsung,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 95, 4.8, 870),

('Apple iPhone 15 Pro',
 'Premium iPhone with A17 chip, advanced cameras, and seamless integration with iOS ecosystem.',
 183, 'INR', 134900, 'Apple,iPhone,Smartphone',
 'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 97, 4.9, 1020),

('Dell XPS 15',
 'High-performance ultrabook with OLED display, Intel i7 processor, and sleek aluminum chassis.',
 174, 'INR', 145000, 'Dell,Laptop,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 88, 4.7, 640),

('Sony Bravia OLED 65"',
 'Premium OLED TV delivering cinematic visuals, deep blacks, and immersive Dolby Atmos audio.',
 153, 'INR', 129999, 'Sony,OLED,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 90, 4.8, 520),

('Canon EOS R7 Mirrorless',
 'Advanced mirrorless camera with 32MP sensor, 4K video, and fast autofocus for professionals.',
 193, 'INR', 145000, 'Canon,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 85, 4.7, 640),

('Bose Soundbar 700',
 'Premium soundbar with deep bass, Alexa integration, and wireless connectivity for home theaters.',
 163, 'INR', 79999, 'Bose,Soundbar,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 88, 4.6, 430),

('HP Spectre x360',
 'Convertible ultrabook with touchscreen, Intel i7 processor, and sleek design for professionals.',
 174, 'INR', 118000, 'HP,Laptop,Convertible',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 87, 4.6, 540),

('Lenovo Legion 5 Pro',
 'Gaming laptop with RTX graphics, high refresh display, and advanced cooling system.',
 173, 'INR', 135000, 'Lenovo,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 89, 4.7, 720),

('LG NanoCell 55"',
 'Smart TV with NanoCell technology, HDR support, and AI-powered picture enhancements.',
 152, 'INR', 79999, 'LG,NanoCell,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 84, 4.5, 410),

('Nikon D7500 DSLR',
 'DSLR camera with 20.9MP sensor, 4K UHD video recording, and versatile lens compatibility.',
 192, 'INR', 95000, 'Nikon,DSLR,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 82, 4.6, 530);
 INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('HP Spectre x360',
 'Convertible ultrabook with touchscreen, Intel i7 processor, and sleek design for professionals.',
 174, 'INR', 118000, 'HP,Laptop,Convertible',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 87, 4.6, 540),

('Lenovo Legion 5 Pro',
 'Gaming laptop with RTX graphics, high refresh display, and advanced cooling system.',
 173, 'INR', 135000, 'Lenovo,Gaming,Laptop',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 89, 4.7, 720),

('LG NanoCell 55"',
 'Smart TV with NanoCell technology, HDR support, and AI-powered picture enhancements.',
 152, 'INR', 79999, 'LG,NanoCell,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 84, 4.5, 410),

('Nikon D7500 DSLR',
 'DSLR camera with 20.9MP sensor, 4K UHD video recording, and versatile lens compatibility.',
 192, 'INR', 95000, 'Nikon,DSLR,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 82, 4.6, 530),

('Philips Bluetooth Headphones',
 'Wireless headphones with deep bass, long battery life, and comfortable ear cushions.',
 163, 'INR', 4999, 'Philips,Headphones,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 180, GETDATE(), GETDATE(), 78, 4.4, 320),

('Panasonic 1.5 Ton AC',
 'Energy-efficient split AC with fast cooling, inverter compressor, and eco-friendly refrigerant.',
 205, 'INR', 45999, 'Panasonic,AC,Appliance',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 80, 4.5, 410);
INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Samsung Galaxy S23 Ultra',
 'Flagship Android smartphone with 200MP camera, Snapdragon processor, and premium design.',
 182, 'INR', 124999, 'Samsung,Smartphone,Android',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 95, 4.8, 870),

('Apple iPhone 15 Pro',
 'Premium iPhone with A17 chip, advanced cameras, and seamless integration with iOS ecosystem.',
 183, 'INR', 134900, 'Apple,iPhone,Smartphone',
 'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=400',
 200, GETDATE(), GETDATE(), 97, 4.9, 1020),

('Dell XPS 15',
 'High-performance ultrabook with OLED display, Intel i7 processor, and sleek aluminum chassis.',
 174, 'INR', 145000, 'Dell,Laptop,Ultrabook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 75, GETDATE(), GETDATE(), 88, 4.7, 640),

('Sony Bravia OLED 65"',
 'Premium OLED TV delivering cinematic visuals, deep blacks, and immersive Dolby Atmos audio.',
 153, 'INR', 129999, 'Sony,OLED,SmartTV',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 90, 4.8, 520),

('Canon EOS R7 Mirrorless',
 'Advanced mirrorless camera with 32MP sensor, 4K video, and fast autofocus for professionals.',
 193, 'INR', 145000, 'Canon,Mirrorless,Camera',
 'https://images.pexels.com/photos/274973/pexels-photo-274973.jpeg?auto=compress&cs=tinysrgb&w=400',
 25, GETDATE(), GETDATE(), 85, 4.7, 640),

('Bose Soundbar 700',
 'Premium soundbar with deep bass, Alexa integration, and wireless connectivity for home theaters.',
 163, 'INR', 79999, 'Bose,Soundbar,Audio',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 88, 4.6, 430);




INSERT INTO Products
(Name, Description, CategoryId, CurrencyCode, Price, Tags, ImageUrl, Stock, CreatedAt, ModifiedAt, PopularityScore, Rating, ReviewCount)
VALUES
('Oppo Reno 12 Pro',
 'Smartphone with AMOLED display, Snapdragon processor, and advanced camera features.',
 182, 'INR', 42999, 'Oppo,Smartphone,Android,Camera',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 85, GETDATE(), GETDATE(), 84, 4.4, 370),

('Vivo V30 Pro',
 'Mid-range smartphone with curved AMOLED display, 5G connectivity, and fast charging.',
 182, 'INR', 37999, 'Vivo,Smartphone,Android,MidRange',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 95, GETDATE(), GETDATE(), 83, 4.3, 340),

('Realme GT Neo 7',
 'Performance smartphone with MediaTek Dimensity processor, AMOLED display, and gaming mode.',
 182, 'INR', 32999, 'Realme,Smartphone,Android,Performance',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 110, GETDATE(), GETDATE(), 82, 4.2, 310),

('iQOO Neo 9 Pro',
 'Gaming smartphone with Snapdragon processor, AMOLED display, and liquid cooling.',
 182, 'INR', 35999, 'iQOO,Smartphone,Android,Gaming',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 100, GETDATE(), GETDATE(), 83, 4.3, 330),

('Honor Magic6 Pro',
 'Flagship smartphone with advanced camera system, Snapdragon processor, and premium design.',
 182, 'INR', 79999, 'Honor,Smartphone,Android,Flagship',
 'https://images.pexels.com/photos/607812/pexels-photo-607812.jpeg?auto=compress&cs=tinysrgb&w=400',
 40, GETDATE(), GETDATE(), 89, 4.6, 520),

('Dell Latitude 7440',
 'Business laptop with Intel Core Ultra processor, slim design, and enterprise-grade security.',
 174, 'INR', 125000, 'Dell,Laptop,Business,Latitude',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 35, GETDATE(), GETDATE(), 87, 4.5, 410),

('HP EliteBook 840 G11',
 'Business laptop with Intel Core Ultra processor, durable design, and enterprise features.',
 174, 'INR', 135000, 'HP,Laptop,Business,EliteBook',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 88, 4.6, 430),

('Lenovo Legion 7i',
 'Gaming laptop with RTX 4080 GPU, high refresh rate display, and advanced cooling.',
 173, 'INR', 225000, 'Lenovo,Gaming,Laptop,Legion',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 20, GETDATE(), GETDATE(), 92, 4.8, 640),

('Asus TUF Gaming A17',
 'Gaming laptop with AMD Ryzen processor, RTX graphics, and durable design.',
 173, 'INR', 145000, 'Asus,Gaming,Laptop,TUF',
 'https://images.pexels.com/photos/18105/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=400',
 28, GETDATE(), GETDATE(), 86, 4.5, 420),

('Sony WF-1000XM5',
 'Wireless earbuds with ANC, immersive audio, and long battery life.',
 163, 'INR', 24990, 'Sony,Earbuds,Audio,ANC',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 85, 4.4, 390),

('Boat Airdopes 441',
 'Affordable wireless earbuds with deep bass, Bluetooth 5.0, and long battery life.',
 163, 'INR', 1990, 'Boat,Earbuds,Audio,Affordable',
 'https://images.pexels.com/photos/339465/pexels-photo-339465.jpeg?auto=compress&cs=tinysrgb&w=400',
 150, GETDATE(), GETDATE(), 78, 4.1, 280),

('Samsung 50" QLED 4K',
 'Smart TV with Quantum Dot technology, HDR10+, and multiple streaming apps.',
 153, 'INR', 69999, 'Samsung,QLED,SmartTV,4K',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 45, GETDATE(), GETDATE(), 84, 4.4, 350),

('LG 48" OLED evo',
 'Smart TV with OLED evo panel, Dolby Vision IQ, and AI-powered upscaling.',
 153, 'INR', 124999, 'LG,OLED,SmartTV,HomeEntertainment',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 30, GETDATE(), GETDATE(), 88, 4.6, 470),

('Voltas 1.5T Split AC',
 'Split AC with inverter compressor, copper condenser, and turbo cooling.',
 205, 'INR', 38990, 'Voltas,AC,Appliance,Cooling',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 60, GETDATE(), GETDATE(), 83, 4.3, 320),

('Blue Star 1T Portable AC',
 'Portable AC with inverter compressor, copper condenser, and dust filter.',
 205, 'INR', 29990, 'BlueStar,AC,Appliance,Portable',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 70, GETDATE(), GETDATE(), 82, 4.2, 300),

('Whirlpool 7kg Top Load Washer',
 'Top-load washing machine with inverter motor, multiple wash programs, and energy efficiency.',
 205, 'INR', 25990, 'Whirlpool,WashingMachine,Appliance,Laundry',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 80, GETDATE(), GETDATE(), 81, 4.3, 310),

('Nike Pegasus Trail 5',
 'Trail running shoes with cushioned midsole, durable outsole, and breathable mesh.',
 201, 'INR', 9999, 'Nike,Shoes,Fashion,TrailRunning',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 120, GETDATE(), GETDATE(), 82, 4.3, 330),

('Adidas Terrex Swift R3',
 'Outdoor shoes with durable design, cushioned midsole, and breathable upper.',
 201, 'INR', 10999, 'Adidas,Shoes,Fashion,Outdoor',
 'https://images.pexels.com/photos/2529148/pexels-photo-2529148.jpeg?auto=compress&cs=tinysrgb&w=400',
 100, GETDATE(), GETDATE(), 83, 4.4, 350),

('Philips Juicer HL7576',
 'Powerful juicer with multiple speed settings, durable motor, and easy cleaning.',
 205, 'INR', 6990, 'Philips,Juicer,Appliance,Kitchen',
 'https://images.pexels.com/photos/572056/pexels-photo-572056.jpeg?auto=compress&cs=tinysrgb&w=400',
 90, GETDATE(), GETDATE(), 81, 4.3, 310);