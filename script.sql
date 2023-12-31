GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/12/2023 20:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 27/12/2023 20:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[isoCode] [nvarchar](max) NULL,
	[Population] [int] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 27/12/2023 20:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Starts] [nvarchar](max) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 27/12/2023 20:47:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_Restaurants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_Countries_CountryId]
GO
ALTER TABLE [dbo].[Restaurants]  WITH CHECK ADD  CONSTRAINT [FK_Restaurants_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Restaurants] CHECK CONSTRAINT [FK_Restaurants_Countries_CountryId]
GO

SET IDENTITY_INSERT dbo.Countries ON;
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (1, 'Christmas Island', 'CX', '2072');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (2, 'Eritrea', 'ER', '5352000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (3, 'Samoa', 'WS', '198410');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (4, 'North Macedonia', 'MK', '2077132');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (5, 'Djibouti', 'DJ', '988002');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (6, 'Jordan', 'JO', '10203140');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (7, 'Pakistan', 'PK', '220892331');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (8, 'French Polynesia', 'PF', '280904');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (9, 'Ireland', 'IE', '4994724');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (10, 'Mauritania', 'MR', '4649660');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (11, 'Denmark', 'DK', '5831404');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (12, 'Namibia', 'NA', '2540916');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (13, 'Ghana', 'GH', '31072945');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (14, 'South Sudan', 'SS', '11193729');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (15, 'Slovakia', 'SK', '5458827');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (16, 'American Samoa', 'AS', '55197');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (17, 'Moldova', 'MD', '2617820');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (18, 'North Korea', 'KP', '25778815');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (19, 'Macau', 'MO', '649342');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (20, 'Turks and Caicos Islands', 'TC', '38718');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (21, 'Seychelles', 'SC', '98462');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (22, 'Armenia', 'AM', '2963234');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (23, 'Curaçao', 'CW', '155014');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (24, 'Guadeloupe', 'GP', '400132');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (25, 'British Indian Ocean Territory', 'IO', '3000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (26, 'Equatorial Guinea', 'GQ', '1402985');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (27, 'Syria', 'SY', '17500657');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (28, 'Angola', 'AO', '32866268');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (29, 'Tajikistan', 'TJ', '9537642');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (30, 'Venezuela', 'VE', '28435943');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (31, 'United States Minor Outlying Islands', 'UM', '300');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (32, 'Åland Islands', 'AX', '29458');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (33, 'Poland', 'PL', '37950802');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (34, 'Saudi Arabia', 'SA', '34813867');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (35, 'Republic of the Congo', 'CG', '5657000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (36, 'Bosnia and Herzegovina', 'BA', '3280815');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (37, 'United States Virgin Islands', 'VI', '106290');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (38, 'New Caledonia', 'NC', '271960');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (39, 'San Marino', 'SM', '33938');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (40, 'Czechia', 'CZ', '10698896');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (41, 'Guatemala', 'GT', '16858333');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (42, 'South Korea', 'KR', '51780579');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (43, 'Estonia', 'EE', '1331057');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (44, 'Nepal', 'NP', '29136808');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (45, 'Kosovo', 'XK', '1775378');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (46, 'Botswana', 'BW', '2351625');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (47, 'Philippines', 'PH', '109581085');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (48, 'Saint Pierre and Miquelon', 'PM', '6069');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (49, 'Iraq', 'IQ', '40222503');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (50, 'Lebanon', 'LB', '6825442');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (51, 'Burundi', 'BI', '11890781');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (52, 'Mongolia', 'MN', '3278292');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (53, 'Faroe Islands', 'FO', '48865');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (54, 'Paraguay', 'PY', '7132530');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (55, 'Svalbard and Jan Mayen', 'SJ', '2562');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (56, 'Tokelau', 'TK', '1411');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (57, 'Guernsey', 'GG', '62999');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (58, 'Caribbean Netherlands', 'BQ', '25987');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (59, 'Algeria', 'DZ', '44700000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (60, 'France', 'FR', '67391582');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (61, 'Netherlands', 'NL', '16655799');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (62, 'Greenland', 'GL', '56367');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (63, 'Sint Maarten', 'SX', '40812');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (64, 'Chad', 'TD', '16425859');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (65, 'Finland', 'FI', '5530719');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (66, 'Panama', 'PA', '4314768');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (67, 'Palestine', 'PS', '4803269');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (68, 'Yemen', 'YE', '29825968');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (69, 'Brazil', 'BR', '212559409');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (70, 'Nigeria', 'NG', '206139587');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (71, 'Palau', 'PW', '18092');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (72, 'Japan', 'JP', '125836021');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (73, 'Tanzania', 'TZ', '59734213');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (74, 'Kazakhstan', 'KZ', '18754440');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (75, 'Portugal', 'PT', '10305564');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (76, 'South Georgia', 'GS', '30');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (77, 'Sri Lanka', 'LK', '21919000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (78, 'Germany', 'DE', '83240525');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (79, 'Western Sahara', 'EH', '510713');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (80, 'Myanmar', 'MM', '54409794');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (81, 'Colombia', 'CO', '50882884');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (82, 'Peru', 'PE', '32971846');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (83, 'Senegal', 'SN', '16743930');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (84, 'Kyrgyzstan', 'KG', '6591600');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (85, 'China', 'CN', '1402112000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (86, 'Afghanistan', 'AF', '40218234');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (87, 'Turkey', 'TR', '84339067');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (88, 'Liberia', 'LR', '5057677');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (89, 'South Africa', 'ZA', '59308690');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (90, 'Chile', 'CL', '19116209');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (91, 'Malta', 'MT', '525285');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (92, 'Kiribati', 'KI', '119446');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (93, 'Cape Verde', 'CV', '555988');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (94, 'Jersey', 'JE', '100800');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (95, 'Iceland', 'IS', '366425');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (96, 'Gambia', 'GM', '2416664');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (97, 'Vanuatu', 'VU', '307150');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (98, 'Uruguay', 'UY', '3473727');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (99, 'Oman', 'OM', '5106622');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (100, 'Sudan', 'SD', '43849269');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (101, 'India', 'IN', '1380004385');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (102, 'Laos', 'LA', '7275556');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (103, 'Aruba', 'AW', '106766');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (104, 'Martinique', 'MQ', '378243');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (105, 'Comoros', 'KM', '869595');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (106, 'Spain', 'ES', '47351567');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (107, 'Antigua and Barbuda', 'AG', '97928');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (108, 'Uzbekistan', 'UZ', '34232050');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (109, 'Maldives', 'MV', '540542');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (110, 'Gibraltar', 'GI', '33691');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (111, 'Indonesia', 'Id', '273523621');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (112, 'Pitcairn Islands', 'PN', '56');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (113, 'Vietnam', 'VN', '97338583');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (114, 'Malaysia', 'MY', '32365998');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (115, 'Cook Islands', 'CK', '18100');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (116, 'Eswatini', 'SZ', '1160164');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (117, 'Uganda', 'UG', '45741000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (118, 'Madagascar', 'MG', '27691019');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (119, 'Fiji', 'FJ', '896444');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (120, 'Norway', 'NO', '5379475');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (121, 'Antarctica', 'AQ', '1000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (122, 'Bouvet Island', 'BV', '');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (123, 'Cyprus', 'CY', '1207361');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (124, 'Taiwan', 'TW', '23503349');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (125, 'Papua New Guinea', 'PG', '8947027');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (126, 'Rwanda', 'RW', '12952209');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (127, 'DR Congo', 'CD', '108407721');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (128, 'Cameroon', 'CM', '26545864');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (129, 'Serbia', 'RS', '6908224');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (130, 'Lithuania', 'LT', '2794700');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (131, 'French Southern and Antarctic Lands', 'TF', '400');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (132, 'Cambodia', 'KH', '16718971');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (133, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '53192');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (134, 'United Arab Emirates', 'AE', '9890400');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (135, 'Bermuda', 'BM', '63903');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (136, 'Monaco', 'MC', '39244');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (137, 'Cuba', 'CU', '11326616');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (138, 'Hong Kong', 'HK', '7500700');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (139, 'Northern Mariana Islands', 'MP', '57557');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (140, 'Togo', 'TG', '8278737');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (141, 'Luxembourg', 'LU', '632275');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (142, 'Mauritius', 'MU', '1265740');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (143, 'Argentina', 'AR', '45376763');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (144, 'Grenada', 'GD', '112519');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (145, 'Nicaragua', 'NI', '6624554');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (146, 'Niue', 'NU', '1470');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (147, 'Ukraine', 'UA', '44134693');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (148, 'Guyana', 'GY', '786559');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (149, 'Niger', 'NE', '24206636');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (150, 'Benin', 'BJ', '12123198');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (151, 'Saint Lucia', 'LC', '183629');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (152, 'Tuvalu', 'TV', '11792');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (153, 'Norfolk Island', 'NF', '2302');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (154, 'Egypt', 'EG', '102334403');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (155, 'Saint Kitts and Nevis', 'KN', '53192');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (156, 'Lesotho', 'LS', '2142252');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (157, 'Tonga', 'TO', '105697');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (158, 'Georgia', 'GE', '3714000');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (159, 'Ethiopia', 'ET', '114963583');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (160, 'Dominican Republic', 'DO', '10847904');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (161, 'Saint Vincent and the Grenadines', 'VC', '110947');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (162, 'Belize', 'BZ', '397621');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (163, 'Isle of Man', 'IM', '85032');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (164, 'Morocco', 'MA', '36910558');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (165, 'Haiti', 'HT', '11402533');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (166, 'Mayotte', 'YT', '226915');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (167, 'Burkina Faso', 'BF', '20903278');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (168, 'Bangladesh', 'BD', '164689383');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (169, 'Kuwait', 'KW', '4270563');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (170, 'Réunion', 'RE', '840974');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (171, 'Jamaica', 'JM', '2961161');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (172, 'Romania', 'RO', '19286123');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (173, 'São Tomé and Príncipe', 'ST', '219161');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (174, 'Bahamas', 'BS', '393248');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (175, 'Mexico', 'MX', '128932753');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (176, 'Saint Martin', 'MF', '38659');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (177, 'El Salvador', 'SV', '6486201');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (178, 'Saint Barthélemy', 'BL', '4255');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (179, 'Micronesia', 'FM', '115021');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (180, 'Turkmenistan', 'TM', '6031187');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (181, 'Anguilla', 'AI', '13452');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (182, 'Central African Republic', 'CF', '4829764');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (183, 'Suriname', 'SR', '586634');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (184, 'Belgium', 'BE', '11555997');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (185, 'Sweden', 'SE', '10353442');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (186, 'Bolivia', 'BO', '11673029');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (187, 'Montenegro', 'ME', '621718');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (188, 'Mozambique', 'MZ', '31255435');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (189, 'Latvia', 'LV', '1901548');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (190, 'Malawi', 'MW', '19129955');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (191, 'Mali', 'ML', '20250834');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (192, 'Vatican City', 'VA', '451');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (193, 'Montserrat', 'MS', '4922');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (194, 'Austria', 'AT', '8917205');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (195, 'Albania', 'AL', '2837743');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (196, 'British Virgin Islands', 'VG', '30237');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (197, 'Zambia', 'ZM', '18383956');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (198, 'French Guiana', 'GF', '254541');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (199, 'Liechtenstein', 'LI', '38137');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (200, 'Qatar', 'QA', '2881060');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (201, 'Solomon Islands', 'SB', '686878');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (202, 'Nauru', 'NR', '10834');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (203, 'Greece', 'GR', '10715549');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (204, 'Libya', 'LY', '6871287');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (205, 'Guinea-Bissau', 'GW', '1967998');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (206, 'Barbados', 'BB', '287371');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (207, 'Honduras', 'HN', '9904608');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (208, 'Somalia', 'SO', '15893219');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (209, 'Cayman Islands', 'KY', '65720');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (210, 'Italy', 'IT', '59554023');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (211, 'Wallis and Futuna', 'WF', '11750');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (212, 'Andorra', 'AD', '77265');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (213, 'Ecuador', 'EC', '17643060');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (214, 'Kenya', 'KE', '53771300');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (215, 'Bahrain', 'BH', '1701583');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (216, 'United Kingdom', 'GB', '67215293');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (217, 'Guinea', 'GN', '13132792');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (218, 'Heard Island and McDonald Islands', 'HM', '11818618');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (219, 'Russia', 'RU', '144104080');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (220, 'Brunei', 'BN', '437483');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (221, 'Zimbabwe', 'ZW', '14862927');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (222, 'Guam', 'GU', '168783');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (223, 'Australia', 'AU', '25687041');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (224, 'Slovenia', 'SI', '2100126');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (225, 'Belarus', 'BY', '9398861');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (226, 'Thailand', 'TH', '69799978');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (227, 'New Zealand', 'NZ', '5084300');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (228, 'Tunisia', 'TN', '11818618');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (229, 'Marshall Islands', 'MH', '59194');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (230, 'Sierra Leone', 'SL', '7976985');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (231, 'Bhutan', 'BT', '771612');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (232, 'United States', 'US', '329484123');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (233, 'Switzerland', 'CH', '8654622');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (234, 'Falkland Islands', 'FK', '2563');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (235, 'Cocos (Keeling) Islands', 'CC', '544');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (236, 'Gabon', 'GA', '2225728');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (237, 'Dominica', 'DM', '71991');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (238, 'Canada', 'CA', '38005238');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (239, 'TrinIdad and Tobago', 'TT', '1399491');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (240, 'Puerto Rico', 'PR', '3194034');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (241, 'Singapore', 'SG', '5685807');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (242, 'Hungary', 'HU', '9749763');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (243, 'Costa Rica', 'CR', '5094114');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (244, 'Israel', 'IL', '9216900');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (245, 'Bulgaria', 'BG', '6927288');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (246, 'Azerbaijan', 'AZ', '10110116');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (247, 'Timor-Leste', 'TL', '1318442');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (248, 'Iran', 'IR', '83992953');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (249, 'Croatia', 'HR', '4047200');
INSERT INTO Countries (Id, Name, isoCode, Population) VALUES (250, 'Ivory Coast', 'CI', '26378275');
