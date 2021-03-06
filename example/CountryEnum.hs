{-# LANGUAGE OverloadedStrings #-}

module CountryEnum where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Prelude hiding (GT, LT)
import Reflex.Dom.Core

flag :: MonadWidget t m => Text -> m ()
flag flagType = elClass "i" (flagType <> " flag") blank

renderCountry :: MonadWidget t m => CountryEnum -> m ()
renderCountry country = do
  flag $ T.toLower $ T.pack $ show country
  text $ showCountry country

data CountryEnum
  = AF | AX | AL | DZ | AS | AD | AO | AI | AG | AR | AM | AW | AU | AT | AZ
  | BS | BH | BD | BB | BY | BE | BZ | BJ | BM | BT | BO | BA | BW | BV | BR
  | VG | BN | BG | BF | MM | BI | TC | KH | CM | CA | CV | KY | CF | TD | CL
  | CN | CX | CC | CO | KM | CG | CD | CK | CR | CI | HR | CU | CY | CZ | DK
  | DJ | DM | DO | EC | EG | SV | GB | GQ | ER | EE | ET | EU | FK | FO | FJ
  | FI | FR | GF | PF | TF | GA | GM | GE | DE | GH | GI | GR | GL | GD | GP
  | GU | GT | GW | GN | GY | HT | HM | HN | HK | HU | IS | IN | IO | ID | IR
  | IQ | IE | IL | IT | JM | JP | JO | KZ | KE | KI | KW | KG | LA | LV | LB
  | LS | LR | LY | LI | LT | LU | MO | MK | MG | MW | MY | MV | ML | MT | MH
  | MQ | MR | MU | YT | MX | FM | MD | MC | MN | ME | MS | MA | MZ | NA | NR
  | NP | AN | NL | NC | PG | NZ | NI | NE | NG | NU | NF | KP | MP | NO | OM
  | PK | PW | PS | PA | PY | PE | PH | PN | PL | PT | PR | QA | RE | RO | RU
  | RW | SH | KN | LC | PM | VC | WS | SM | GS | ST | SA | SN | CS | RS | SC
  | SL | SG | SK | SI | SB | SO | ZA | KR | ES | LK | SD | SR | SJ | SZ | SE
  | CH | SY | TW | TJ | TZ | TH | TL | TG | TK | TO | TT | TN | TR | TM | TV
  | UG | UA | AE | US | UY | UM | VI | UZ | VU | VA | VE | VN | WF | EH | YE
  | ZM | ZW
  deriving (Bounded, Enum, Eq, Ord, Read, Show)

showCountry :: CountryEnum -> Text
showCountry AF = "Afghanistan"
showCountry AX = "Aland Islands"
showCountry AL = "Albania"
showCountry DZ = "Algeria"
showCountry AS = "American Samoa"
showCountry AD = "Andorra"
showCountry AO = "Angola"
showCountry AI = "Anguilla"
showCountry AG = "Antigua"
showCountry AR = "Argentina"
showCountry AM = "Armenia"
showCountry AW = "Aruba"
showCountry AU = "Australia"
showCountry AT = "Austria"
showCountry AZ = "Azerbaijan"
showCountry BS = "Bahamas"
showCountry BH = "Bahrain"
showCountry BD = "Bangladesh"
showCountry BB = "Barbados"
showCountry BY = "Belarus"
showCountry BE = "Belgium"
showCountry BZ = "Belize"
showCountry BJ = "Benin"
showCountry BM = "Bermuda"
showCountry BT = "Bhutan"
showCountry BO = "Bolivia"
showCountry BA = "Bosnia"
showCountry BW = "Botswana"
showCountry BV = "Bouvet Island"
showCountry BR = "Brazil"
showCountry VG = "British Virgin Islands"
showCountry BN = "Brunei"
showCountry BG = "Bulgaria"
showCountry BF = "Burkina Faso"
showCountry MM = "Burma"
showCountry BI = "Burundi"
showCountry TC = "Caicos Islands"
showCountry KH = "Cambodia"
showCountry CM = "Cameroon"
showCountry CA = "Canada"
showCountry CV = "Cape Verde"
showCountry KY = "Cayman Islands"
showCountry CF = "Central African Republic"
showCountry TD = "Chad"
showCountry CL = "Chile"
showCountry CN = "China"
showCountry CX = "Christmas Island"
showCountry CC = "Cocos Islands"
showCountry CO = "Colombia"
showCountry KM = "Comoros"
showCountry CG = "Congo Brazzaville"
showCountry CD = "Congo"
showCountry CK = "Cook Islands"
showCountry CR = "Costa Rica"
showCountry CI = "Cote Divoire"
showCountry HR = "Croatia"
showCountry CU = "Cuba"
showCountry CY = "Cyprus"
showCountry CZ = "Czech Republic"
showCountry DK = "Denmark"
showCountry DJ = "Djibouti"
showCountry DM = "Dominica"
showCountry DO = "Dominican Republic"
showCountry EC = "Ecuador"
showCountry EG = "Egypt"
showCountry SV = "El Salvador"
showCountry GB = "England"
showCountry GQ = "Equatorial Guinea"
showCountry ER = "Eritrea"
showCountry EE = "Estonia"
showCountry ET = "Ethiopia"
showCountry EU = "European Union"
showCountry FK = "Falkland Islands"
showCountry FO = "Faroe Islands"
showCountry FJ = "Fiji"
showCountry FI = "Finland"
showCountry FR = "France"
showCountry GF = "French Guiana"
showCountry PF = "French Polynesia"
showCountry TF = "French Territories"
showCountry GA = "Gabon"
showCountry GM = "Gambia"
showCountry GE = "Georgia"
showCountry DE = "Germany"
showCountry GH = "Ghana"
showCountry GI = "Gibraltar"
showCountry GR = "Greece"
showCountry GL = "Greenland"
showCountry GD = "Grenada"
showCountry GP = "Guadeloupe"
showCountry GU = "Guam"
showCountry GT = "Guatemala"
showCountry GW = "Guinea-Bissau"
showCountry GN = "Guinea"
showCountry GY = "Guyana"
showCountry HT = "Haiti"
showCountry HM = "Heard Island"
showCountry HN = "Honduras"
showCountry HK = "Hong Kong"
showCountry HU = "Hungary"
showCountry IS = "Iceland"
showCountry IN = "India"
showCountry IO = "Indian Ocean Territory"
showCountry ID = "Indonesia"
showCountry IR = "Iran"
showCountry IQ = "Iraq"
showCountry IE = "Ireland"
showCountry IL = "Israel"
showCountry IT = "Italy"
showCountry JM = "Jamaica"
showCountry JP = "Japan"
showCountry JO = "Jordan"
showCountry KZ = "Kazakhstan"
showCountry KE = "Kenya"
showCountry KI = "Kiribati"
showCountry KW = "Kuwait"
showCountry KG = "Kyrgyzstan"
showCountry LA = "Laos"
showCountry LV = "Latvia"
showCountry LB = "Lebanon"
showCountry LS = "Lesotho"
showCountry LR = "Liberia"
showCountry LY = "Libya"
showCountry LI = "Liechtenstein"
showCountry LT = "Lithuania"
showCountry LU = "Luxembourg"
showCountry MO = "Macau"
showCountry MK = "Macedonia"
showCountry MG = "Madagascar"
showCountry MW = "Malawi"
showCountry MY = "Malaysia"
showCountry MV = "Maldives"
showCountry ML = "Mali"
showCountry MT = "Malta"
showCountry MH = "Marshall Islands"
showCountry MQ = "Martinique"
showCountry MR = "Mauritania"
showCountry MU = "Mauritius"
showCountry YT = "Mayotte"
showCountry MX = "Mexico"
showCountry FM = "Micronesia"
showCountry MD = "Moldova"
showCountry MC = "Monaco"
showCountry MN = "Mongolia"
showCountry ME = "Montenegro"
showCountry MS = "Montserrat"
showCountry MA = "Morocco"
showCountry MZ = "Mozambique"
showCountry NA = "Namibia"
showCountry NR = "Nauru"
showCountry NP = "Nepal"
showCountry AN = "Netherlands Antilles"
showCountry NL = "Netherlands"
showCountry NC = "New Caledonia"
showCountry PG = "New Guinea"
showCountry NZ = "New Zealand"
showCountry NI = "Nicaragua"
showCountry NE = "Niger"
showCountry NG = "Nigeria"
showCountry NU = "Niue"
showCountry NF = "Norfolk Island"
showCountry KP = "North Korea"
showCountry MP = "Northern Mariana Islands"
showCountry NO = "Norway"
showCountry OM = "Oman"
showCountry PK = "Pakistan"
showCountry PW = "Palau"
showCountry PS = "Palestine"
showCountry PA = "Panama"
showCountry PY = "Paraguay"
showCountry PE = "Peru"
showCountry PH = "Philippines"
showCountry PN = "Pitcairn Islands"
showCountry PL = "Poland"
showCountry PT = "Portugal"
showCountry PR = "Puerto Rico"
showCountry QA = "Qatar"
showCountry RE = "Reunion"
showCountry RO = "Romania"
showCountry RU = "Russia"
showCountry RW = "Rwanda"
showCountry SH = "Saint Helena"
showCountry KN = "Saint Kitts and Nevis"
showCountry LC = "Saint Lucia"
showCountry PM = "Saint Pierre"
showCountry VC = "Saint Vincent"
showCountry WS = "Samoa"
showCountry SM = "San Marino"
showCountry GS = "Sandwich Islands"
showCountry ST = "Sao Tome"
showCountry SA = "Saudi Arabia"
showCountry SN = "Senegal"
showCountry CS = "Serbia"
showCountry RS = "Serbia"
showCountry SC = "Seychelles"
showCountry SL = "Sierra Leone"
showCountry SG = "Singapore"
showCountry SK = "Slovakia"
showCountry SI = "Slovenia"
showCountry SB = "Solomon Islands"
showCountry SO = "Somalia"
showCountry ZA = "South Africa"
showCountry KR = "South Korea"
showCountry ES = "Spain"
showCountry LK = "Sri Lanka"
showCountry SD = "Sudan"
showCountry SR = "Suriname"
showCountry SJ = "Svalbard"
showCountry SZ = "Swaziland"
showCountry SE = "Sweden"
showCountry CH = "Switzerland"
showCountry SY = "Syria"
showCountry TW = "Taiwan"
showCountry TJ = "Tajikistan"
showCountry TZ = "Tanzania"
showCountry TH = "Thailand"
showCountry TL = "Timorleste"
showCountry TG = "Togo"
showCountry TK = "Tokelau"
showCountry TO = "Tonga"
showCountry TT = "Trinidad"
showCountry TN = "Tunisia"
showCountry TR = "Turkey"
showCountry TM = "Turkmenistan"
showCountry TV = "Tuvalu"
showCountry UG = "Uganda"
showCountry UA = "Ukraine"
showCountry AE = "United Arab Emirates"
showCountry US = "United States"
showCountry UY = "Uruguay"
showCountry UM = "Us Minor Islands"
showCountry VI = "Us Virgin Islands"
showCountry UZ = "Uzbekistan"
showCountry VU = "Vanuatu"
showCountry VA = "Vatican City"
showCountry VE = "Venezuela"
showCountry VN = "Vietnam"
showCountry WF = "Wallis and Futuna"
showCountry EH = "Western Sahara"
showCountry YE = "Yemen"
showCountry ZM = "Zambia"
showCountry ZW = "Zimbabwe"
