-- =========================
-- Parent Categories
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Televisions & Displays',
'Explore a wide range of televisions, monitors, and display devices designed for home entertainment, office productivity, and immersive gaming experiences.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Audio & Home Theater',
'High‑quality speakers, soundbars, and theater systems engineered to deliver immersive audio for movies, music, and gaming, enhancing every listening experience.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Computers & Laptops',
'Modern laptops, desktops, and accessories built for performance, productivity, and gaming, offering cutting‑edge processors, storage, and ergonomic designs.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Mobile Phones & Accessories',
'Smartphones, feature phones, and essential accessories such as chargers, cases, and screen protectors designed to keep users connected and protected on the go.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Cameras & Photography',
'Professional and consumer‑grade cameras, lenses, tripods, and lighting equipment tailored for capturing high‑quality photos and videos across diverse environments.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming & Consoles',
'Gaming consoles, controllers, and accessories designed to deliver immersive experiences, from casual play to competitive gaming, across multiple platforms.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smart Home & IoT',
'Smart devices including lights, plugs, thermostats, and sensors that integrate seamlessly with IoT platforms to create efficient, secure, and connected living spaces.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Kitchen Appliances',
'Appliances for cooking and food preparation such as microwaves, refrigerators, and blenders, designed to simplify everyday tasks and enhance culinary creativity.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Home Appliances',
'Large and small appliances including washing machines, air conditioners, and purifiers, engineered to improve comfort, convenience, and efficiency in modern homes.',
NULL, 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Personal Care Electronics',
'Electronics for grooming and personal care such as trimmers, hair dryers, and massagers, designed to support hygiene, style, and overall well‑being at home.',
NULL, 1);

-- =========================
-- Televisions & Displays children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('LED TVs',
'LED television sets designed for home entertainment with advanced picture quality, energy efficiency, and long‑lasting performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('OLED TVs',
'Premium OLED TVs offering deep blacks, vibrant colors, and cinematic viewing experiences for modern households.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('QLED TVs',
'QLED televisions engineered with quantum dot technology to deliver enhanced brightness, superior contrast, and long‑lasting performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smart TVs',
'Smart TVs with built‑in apps, streaming services, and voice control features, enabling seamless access to entertainment and online content.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('4K Ultra HD TVs',
'Ultra high‑definition 4K televisions offering crisp detail, vivid colors, and immersive viewing experiences for movies, sports, and gaming.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('8K TVs',
'Next‑generation 8K televisions delivering unmatched resolution, clarity, and future‑ready technology for premium entertainment setups.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Projectors',
'Home and office projectors designed for presentations, movies, and gaming, offering portability, brightness, and versatile connectivity.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('TV Accessories',
'Wall mounts, stands, and accessories engineered to support televisions securely while enhancing flexibility and viewing comfort.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Streaming Devices',
'Streaming sticks and boxes that provide instant access to online content, apps, and services, transforming any TV into a smart entertainment hub.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Monitors',
'Computer and gaming monitors available in multiple sizes and resolutions, designed for productivity, immersive gameplay, and professional graphics work.',
(SELECT CategoryId FROM Categories WHERE Name = 'Televisions & Displays'), 1);

------------------------------------------------- 2 ----------------------
-- =========================
-- Audio & Home Theater children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Home Theater Systems',
'Complete home theater packages that combine speakers, amplifiers, and receivers to deliver immersive surround sound and cinematic experiences in living rooms.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Soundbars',
'Compact soundbars engineered to enhance television audio with clear dialogue, deep bass, and wireless connectivity, offering a sleek alternative to bulky speaker setups.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Bluetooth Speakers',
'Portable Bluetooth speakers designed for convenience and mobility, delivering powerful sound quality with long battery life for both indoor and outdoor use.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smart Speakers',
'Voice‑enabled smart speakers that integrate with digital assistants, allowing users to control music, smart home devices, and information services hands‑free.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Wired Speakers',
'Traditional wired speakers offering reliable audio performance, ideal for home stereo systems, professional setups, and users who prefer consistent wired connections.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Amplifiers & Receivers',
'High‑fidelity amplifiers and receivers that power speaker systems, manage audio inputs, and deliver optimized sound quality for home theaters and music enthusiasts.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Headphones (Wired)',
'Standard wired headphones designed for reliable audio playback, offering balanced sound quality for music, movies, and professional audio monitoring tasks.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Wireless Headphones',
'Bluetooth headphones that provide freedom from cables, combining comfort, portability, and high‑quality sound for everyday listening and travel convenience.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Earbuds (True Wireless)',
'Compact true wireless earbuds offering portability, noise isolation, and seamless connectivity, designed for users who value convenience and modern audio technology.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('DJ Equipment',
'Mixers, turntables, and DJ gear tailored for professionals and hobbyists, enabling creative sound mixing, live performances, and studio production with precision.',
(SELECT CategoryId FROM Categories WHERE Name = 'Audio & Home Theater'), 1);

-- =========================
-- Computers & Laptops children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Laptops',
'General laptops designed for productivity, entertainment, and everyday use, offering balanced performance, portability, and affordability for a wide range of users.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming Laptops',
'High‑performance gaming laptops equipped with powerful GPUs, fast processors, and cooling systems to deliver smooth gameplay and immersive graphics experiences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Ultrabooks',
'Slim and lightweight ultrabooks designed for professionals and students, combining portability, long battery life, and stylish design without compromising performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Desktop PCs',
'Traditional desktop computers built for office work, gaming, and creative tasks, offering customizable hardware configurations and reliable long‑term performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('All‑in‑One PCs',
'Compact all‑in‑one PCs that integrate monitor and CPU into a single unit, saving space while delivering efficient performance for home and office environments.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Computer Monitors',
'High‑resolution computer monitors available in various sizes, designed for productivity, gaming, and creative work with features like HDR, curved screens, and fast refresh rates.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Keyboards',
'Computer keyboards ranging from standard office models to mechanical gaming keyboards, offering ergonomic designs, customizable keys, and responsive typing experiences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Mice',
'Computer mice designed for precision and comfort, including wireless, ergonomic, and gaming models that enhance productivity and user experience across applications.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('External Hard Drives',
'Portable external hard drives offering secure data backup and expanded storage capacity, designed for professionals, students, and gamers who need reliable mobility.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('SSDs',
'Solid state drives engineered for speed and durability, providing faster boot times, quick application loading, and improved overall system performance compared to HDDs.',
(SELECT CategoryId FROM Categories WHERE Name = 'Computers & Laptops'), 1);


---------------------------- 3------------------------------------------ 
-- =========================
-- Mobile Phones & Accessories children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smartphones (Android)',
'Android smartphones offering diverse features, powerful processors, and customizable interfaces, designed to meet the needs of users across budgets and lifestyles.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('iPhones',
'Apple iPhones engineered with premium design, advanced cameras, and seamless integration with the iOS ecosystem, delivering performance and reliability for everyday use.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Feature Phones',
'Basic mobile phones built for durability and simplicity, offering essential calling and messaging functions, long battery life, and affordability for all users.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Phone Cases',
'Protective phone cases available in rugged, slim, and stylish designs, engineered to safeguard devices from drops, scratches, and everyday wear while adding personalization.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Screen Protectors',
'Durable tempered glass and film screen protectors designed to prevent scratches, cracks, and smudges, ensuring long‑lasting clarity and protection for mobile devices.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Chargers & Cables',
'Charging adapters, USB cables, and fast‑charging solutions engineered to keep devices powered efficiently, supporting multiple standards including USB‑C, Lightning, and micro‑USB.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Power Banks',
'Portable power banks with high‑capacity batteries designed to provide reliable backup power for smartphones and tablets, ensuring connectivity during travel and emergencies.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Bluetooth Headsets',
'Wireless Bluetooth headsets offering hands‑free communication, clear audio, and long battery life, ideal for professionals, commuters, and users on the go.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Car Phone Holders',
'Car phone holders designed for safe and convenient navigation, providing secure mounting options with adjustable angles for hands‑free driving experiences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Mobile VR Headsets',
'Virtual reality headsets compatible with smartphones, enabling immersive gaming, entertainment, and educational experiences through accessible and portable VR technology.',
(SELECT CategoryId FROM Categories WHERE Name = 'Mobile Phones & Accessories'), 1);

-- =========================
-- Cameras & Photography children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('DSLR Cameras',
'Digital single‑lens reflex cameras designed for professionals and enthusiasts, offering interchangeable lenses, manual controls, and superior image quality.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Mirrorless Cameras',
'Compact mirrorless cameras combining portability with advanced imaging technology, delivering high‑quality photos and videos without the bulk of traditional DSLRs.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Action Cameras',
'Rugged action cameras engineered for sports and adventure, offering waterproof designs, wide‑angle lenses, and stabilization for capturing dynamic footage.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Drones with Cameras',
'Flying drones equipped with high‑resolution cameras, designed for aerial photography, videography, and recreational use, offering stability and advanced flight controls.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Camcorders',
'Video recording camcorders built for events, documentaries, and personal use, offering long recording times, optical zoom, and reliable performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Camera Lenses',
'Interchangeable camera lenses designed for diverse shooting styles, including wide‑angle, telephoto, and macro, enabling photographers to capture creative perspectives.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Tripods & Mounts',
'Tripods and mounting gear engineered for stability and flexibility, supporting cameras and smartphones during photography, videography, and live streaming sessions.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Camera Bags',
'Protective camera bags and backpacks designed to store and transport cameras, lenses, and accessories securely, with padded compartments and weather‑resistant materials.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Memory Cards',
'High‑capacity memory cards including SD and microSD formats, offering fast read/write speeds and reliable storage for photos, videos, and professional workflows.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Lighting Equipment',
'Studio and portable lighting equipment designed to enhance photography and videography, providing consistent illumination, adjustable brightness, and creative effects.',
(SELECT CategoryId FROM Categories WHERE Name = 'Cameras & Photography'), 1);

-- =========================
-- Gaming & Consoles children
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('PlayStation Consoles',
'Sony PlayStation consoles offering immersive gaming experiences, exclusive titles, and advanced graphics capabilities for casual and competitive gamers worldwide.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Xbox Consoles',
'Microsoft Xbox consoles designed for powerful gaming, online multiplayer, and integration with entertainment services, delivering versatility and performance.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Nintendo Consoles',
'Nintendo consoles offering family‑friendly gaming experiences, innovative controls, and exclusive franchises, appealing to gamers of all ages and preferences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming Controllers',
'Gamepads and controllers engineered for precision and comfort, supporting multiple platforms and enhancing gameplay with responsive buttons and ergonomic designs.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming Headsets',
'Immersive gaming headsets offering surround sound, noise cancellation, and clear microphones, designed for competitive play and communication with teammates.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('VR Gaming Devices',
'Virtual reality gaming devices delivering immersive experiences with motion tracking, 3D visuals, and interactive gameplay, transforming how users engage with games.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming Chairs',
'Ergonomic gaming chairs designed for comfort during long sessions, featuring adjustable support, durable materials, and stylish designs tailored for gamers.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Gaming Keyboards',
'Mechanical and RGB gaming keyboards engineered for fast response times, customizable lighting, and durability, enhancing both competitive and casual gaming experiences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Gaming & Consoles'), 1);


--------------------------------- 5 -----------------
-- =========================
-- Smart Home & IoT children (2 items)
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smart Lights',
'Smart lighting solutions that allow users to control brightness, color, and schedules remotely, integrating seamlessly with home automation systems for convenience and energy savings.',
(SELECT CategoryId FROM Categories WHERE Name = 'Smart Home & IoT'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Smart Security Cameras',
'Connected security cameras offering live streaming, motion detection, and cloud storage, designed to enhance home safety and provide peace of mind through remote monitoring.',
(SELECT CategoryId FROM Categories WHERE Name = 'Smart Home & IoT'), 1);

-- =========================
-- Kitchen Appliances children (8 items)
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Microwave Ovens',
'Microwave ovens engineered for fast cooking, reheating, and defrosting, combining efficiency with modern features such as auto‑cook menus and energy‑saving technology.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Refrigerators',
'Refrigerators designed with advanced cooling systems, energy efficiency, and smart storage solutions, ensuring freshness and convenience for households of all sizes.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Dishwashers',
'Dishwashers offering powerful cleaning, multiple wash cycles, and water‑saving technology, designed to simplify kitchen chores and maintain hygiene with minimal effort.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Coffee Makers',
'Coffee makers ranging from drip machines to espresso brewers, engineered to deliver rich flavors and convenience, catering to both casual drinkers and enthusiasts.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Blenders & Mixers',
'Blenders and mixers designed for smoothies, sauces, and baking, offering powerful motors, durable blades, and versatile attachments for creative culinary tasks.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Toasters',
'Compact toasters engineered for quick and even browning, featuring multiple slots, adjustable settings, and modern designs to complement any kitchen.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Air Fryers',
'Air fryers that use rapid air circulation to cook food with minimal oil, delivering crispy textures and healthier alternatives to traditional frying methods.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Juicers',
'Juicers designed to extract fresh juice efficiently, offering options for citrus, centrifugal, and cold‑press methods to suit diverse health and lifestyle needs.',
(SELECT CategoryId FROM Categories WHERE Name = 'Kitchen Appliances'), 1);

-- =========================
-- Home Appliances children (5 items)
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Washing Machines',
'Washing machines engineered for efficiency and convenience, offering multiple wash programs, energy‑saving features, and durable designs for modern households.',
(SELECT CategoryId FROM Categories WHERE Name = 'Home Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Vacuum Cleaners',
'Vacuum cleaners designed for powerful suction and versatile cleaning, available in upright, handheld, and robotic models to suit different home environments.',
(SELECT CategoryId FROM Categories WHERE Name = 'Home Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Air Conditioners',
'Air conditioners offering efficient cooling, smart controls, and energy‑saving technology, designed to maintain comfort in homes and offices across diverse climates.',
(SELECT CategoryId FROM Categories WHERE Name = 'Home Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Air Purifiers',
'Air purifiers engineered to remove dust, allergens, and pollutants, improving indoor air quality and supporting healthier living environments for families and individuals.',
(SELECT CategoryId FROM Categories WHERE Name = 'Home Appliances'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Water Purifiers',
'Water purifiers offering advanced filtration technologies to deliver safe, clean drinking water, designed to protect households from contaminants and improve health.',
(SELECT CategoryId FROM Categories WHERE Name = 'Home Appliances'), 1);

-- =========================
-- Personal Care Electronics children (4 items)
-- =========================
INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Electric Shavers',
'Electric shavers designed for precision grooming, offering ergonomic designs, rechargeable batteries, and advanced blades for smooth and efficient shaving experiences.',
(SELECT CategoryId FROM Categories WHERE Name = 'Personal Care Electronics'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Hair Dryers',
'Hair dryers engineered with multiple heat settings, ionic technology, and lightweight designs, providing fast drying and styling while protecting hair health.',
(SELECT CategoryId FROM Categories WHERE Name = 'Personal Care Electronics'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Trimmers',
'Versatile trimmers designed for beard, hair, and body grooming, offering precision blades, adjustable settings, and rechargeable convenience for personal care routines.',
(SELECT CategoryId FROM Categories WHERE Name = 'Personal Care Electronics'), 1);

INSERT INTO Categories (Name, Description, ParentCategoryId, IsActive)
VALUES ('Massagers',
'Electronic massagers engineered to relieve stress and muscle tension, offering portable designs, adjustable intensities, and targeted therapy for relaxation and recovery.',
(SELECT CategoryId FROM Categories WHERE Name = 'Personal Care Electronics'), 1);
