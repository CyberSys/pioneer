-- Copyright © 2008-2022 Pioneer Developers. See AUTHORS.txt for details
-- Licensed under the terms of the GPL v3. See licenses/GPL-3.txt

-- From WKFO

local CultureName = require './common'

local Turkish = CultureName.New()

local male = {
	"Ahmet",
	"Akif",
	"Ali",
	"Alp",
	"Altay",
	"Arda",
	"Ata",
	"Atakan",
	"Atilla",
	"Ayaz",
	"Aydin",
	"Barbaros",
	"Baris",
	"Batuhan",
	"Berkay",
	"Burak",
	"Celal",
	"Cem",
	"Cenk",
	"Deniz",
	"Doruk",
	"Duman",
	"Egemen",
	"Ekrem",
	"Emre",
	"Enver",
	"Eren",
	"Evren",
	"Evrim",
	"Eymen",
	"Fahrettin",
	"Fatih",
	"Fevzi",
	"Fikret",
	"Fuat",
	"Gokhan",
	"Goksel",
	"Gunduz",
	"Hacivat",
	"Hakan",
	"Haluk",
	"Hilmi",
	"Ibrahim",
	"Ismet",
	"Izzet",
	"Kaan",
	"Kadir",
	"Kartal",
	"Kazim",
	"Kerem",
	"Koray",
	"Mansur",
	"Mehmet",
	"Melih",
	"Mete",
	"Metin",
	"Metin",
	"Mirac",
	"Murat",
	"Mustafa",
	"Mumtaz",
	"Naci",
	"Necmi",
	"Onur",
	"Orhun",
	"Ozan",
	"Oguzhan",
	"Omer",
	"Pars",
	"Refet",
	"Refik",
	"Remzi",
	"Ridvan",
	"Rifat",
	"Riza",
	"Samet",
	"Sarp",
	"Satuk",
	"Selami",
	"Selim",
	"Sergen",
	"Suleyman",
	"Sahin",
	"Semsi",
	"Senol",
	"Talha",
	"Tayfur",
	"Teoman",
	"Timur",
	"Tosun",
	"Turkan",
	"Ural",
	"Utku",
	"Volkan",
	"Yavuz",
	"Yasar",
	"Yildirim",
	"Zekeriya",
	"Zeki",
	"Ziya"
}


local female = {
	"Ada",
	"Adile",
	"Asli",
	"Asuman",
	"Asya",
	"Ayla",
	"Aysu",
	"Ayca",
	"Azra",
	"Bahar",
	"Basak",
	"Begum",
	"Belgin",
	"Berfin",
	"Beste",
	"Beyza",
	"Burcu",
	"Busra",
	"Cicek",
	"Damla",
	"Defne",
	"Demet",
	"Deniz",
	"Dilara",
	"Dilek",
	"Dilek",
	"Doga",
	"Duygu",
	"Ece",
	"Ekin",
	"Ela",
	"Elif",
	"Elcin",
	"Eylul",
	"Ezel",
	"Fatma",
	"Gamze",
	"Gamze",
	"Gönul",
	"Gulsen",
	"Hande",
	"Hazal",
	"Ilgin",
	"Isil",
	"Idil",
	"Iklim",
	"Ilayda",
	"Inci",
	"Ipek",
	"Irem",
	"Kamuran",
	"Kiraz",
	"Lale",
	"Makbule",
	"Mehtap",
	"Melek",
	"Melike",
	"Melis",
	"Meltem",
	"Merak",
	"Merve",
	"Mina",
	"Miray",
	"Miray",
	"Muge",
	"Naz",
	"Nehir",
	"Nese",
	"Nilufer",
	"Oya",
	"Oyku",
	"Ozlem",
	"Pelin",
	"Pervin",
	"Pinar",
	"Seda",
	"Selma",
	"Sena",
	"Serap",
	"Sevda",
	"Sevil",
	"Sevinc",
	"Sinem",
	"Su",
	"Sude",
	"Suna",
	"Sila",
	"Seyma",
	"Tansu",
	"Tuana",
	"Tuba",
	"Tutku",
	"Yasemin",
	"Yagmur",
	"Yesim",
	"Yonca",
	"Zehra",
	"Zerrin",
	"Zeynep",
	"Zubeyde"
}


local surname = {
	"Acar",
	"Akac",
	"Aksoy",
	"Akin",
	"Anit",
	"Aslan",
	"Ates",
	"Avci",
	"Aydin",
	"Acil",
	"Baymaz",
	"Bayram",
	"Bagci",
	"Belgin",
	"Bereket",
	"Berkant",
	"Bitig",
	"Bozkurt",
	"Bulut",
	"Can",
	"Cengiz",
	"Cakir",
	"Cakirci",
	"Celik",
	"Cetin",
	"Dag",
	"Dede",
	"Demir",
	"Demirag",
	"Donat",
	"Dogan",
	"Duva",
	"Duyar",
	"Efe",
	"Eker",
	"Ekici",
	"Elcin",
	"Erden",
	"Evren",
	"Genc",
	"Goksoy",
	"Gokturk",
	"Gul",
	"Guler",
	"Guner",
	"Gunes",
	"Gungor",
	"Isik",
	"Ince",
	"Kaplan",
	"Kara",
	"Kaya",
	"Keskin",
	"Korkmaz",
	"Koc",
	"Kurt",
	"Kose",
	"Kilic",
	"Mumcu",
	"Okuyan",
	"Oz",
	"Ozturk",
	"Pak",
	"Polat",
	"Sabanci",
	"Selvi",
	"Sert",
	"Sunal",
	"Saban",
	"Sahin",
	"Sen",
	"Simsek",
	"Tahir",
	"Tahtaci",
	"Tanju",
	"Tas",
	"Teker",
	"Tekin",
	"Teoman",
	"Tepe",
	"Teyeng",
	"Teymur",
	"Timur",
	"Toprak",
	"Turan",
	"Turgut",
	"Uygur",
	"Uzun",
	"Umit",
	"Unal",
	"Yakut",
	"Yasa",
	"Yavuz",
	"Yazici",
	"Yas",
	"Yel",
	"Yelis",
	"Yetkin",
	"Yildirim",
	"Yildiz",
	"Yilmaz",
	"Zaman"
}

local Turkish = CultureName.New(
{
	male = male,
	female = female,
	surname = surname,
	name = "Turkish",
	code = "tr",
	replace = {
		['ç'] = 'c', ['Ç'] = 'C',
		["ö"] = "o", ["Ö"] = "O",
		['ü'] = 'u', ['Ü'] = 'U',
		['ğ'] = 'g', ['Ğ'] = 'G',
		['ş'] = 's', ['Ş'] = 'S',
	}
})

return Turkish