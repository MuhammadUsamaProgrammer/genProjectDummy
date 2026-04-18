part of '../../wird_book.dart';

class Nationality {
  final String name;
  final String flag;
  final String code;

  const Nationality({
    required this.name,
    required this.flag,
    required this.code,
  });
}

const List<Nationality> kNationalities = [
  // Middle East & Gulf (prioritized for UAE app)
  Nationality(name: 'United Arab Emirates', flag: '🇦🇪', code: 'AE'),
  Nationality(name: 'Saudi Arabia', flag: '🇸🇦', code: 'SA'),
  Nationality(name: 'Kuwait', flag: '🇰🇼', code: 'KW'),
  Nationality(name: 'Qatar', flag: '🇶🇦', code: 'QA'),
  Nationality(name: 'Bahrain', flag: '🇧🇭', code: 'BH'),
  Nationality(name: 'Oman', flag: '🇴🇲', code: 'OM'),
  Nationality(name: 'Egypt', flag: '🇪🇬', code: 'EG'),
  Nationality(name: 'Jordan', flag: '🇯🇴', code: 'JO'),
  Nationality(name: 'Lebanon', flag: '🇱🇧', code: 'LB'),
  Nationality(name: 'Syria', flag: '🇸🇾', code: 'SY'),
  Nationality(name: 'Iraq', flag: '🇮🇶', code: 'IQ'),
  Nationality(name: 'Yemen', flag: '🇾🇪', code: 'YE'),
  Nationality(name: 'Palestine', flag: '🇵🇸', code: 'PS'),
  Nationality(name: 'Iran', flag: '🇮🇷', code: 'IR'),
  Nationality(name: 'Israel', flag: '🇮🇱', code: 'IL'),
  Nationality(name: 'Turkey', flag: '🇹🇷', code: 'TR'),

  // South Asia
  Nationality(name: 'India', flag: '🇮🇳', code: 'IN'),
  Nationality(name: 'Pakistan', flag: '🇵🇰', code: 'PK'),
  Nationality(name: 'Bangladesh', flag: '🇧🇩', code: 'BD'),
  Nationality(name: 'Sri Lanka', flag: '🇱🇰', code: 'LK'),
  Nationality(name: 'Nepal', flag: '🇳🇵', code: 'NP'),
  Nationality(name: 'Bhutan', flag: '🇧🇹', code: 'BT'),
  Nationality(name: 'Maldives', flag: '🇲🇻', code: 'MV'),
  Nationality(name: 'Afghanistan', flag: '🇦🇫', code: 'AF'),

  // Southeast Asia
  Nationality(name: 'Philippines', flag: '🇵🇭', code: 'PH'),
  Nationality(name: 'Indonesia', flag: '🇮🇩', code: 'ID'),
  Nationality(name: 'Malaysia', flag: '🇲🇾', code: 'MY'),
  Nationality(name: 'Singapore', flag: '🇸🇬', code: 'SG'),
  Nationality(name: 'Thailand', flag: '🇹🇭', code: 'TH'),
  Nationality(name: 'Vietnam', flag: '🇻🇳', code: 'VN'),
  Nationality(name: 'Myanmar', flag: '🇲🇲', code: 'MM'),
  Nationality(name: 'Cambodia', flag: '🇰🇭', code: 'KH'),
  Nationality(name: 'Laos', flag: '🇱🇦', code: 'LA'),
  Nationality(name: 'Brunei', flag: '🇧🇳', code: 'BN'),
  Nationality(name: 'Timor-Leste', flag: '🇹🇱', code: 'TL'),

  // East Asia
  Nationality(name: 'China', flag: '🇨🇳', code: 'CN'),
  Nationality(name: 'Japan', flag: '🇯🇵', code: 'JP'),
  Nationality(name: 'South Korea', flag: '🇰🇷', code: 'KR'),
  Nationality(name: 'North Korea', flag: '🇰🇵', code: 'KP'),
  Nationality(name: 'Taiwan', flag: '🇹🇼', code: 'TW'),
  Nationality(name: 'Mongolia', flag: '🇲🇳', code: 'MN'),
  Nationality(name: 'Hong Kong', flag: '🇭🇰', code: 'HK'),
  Nationality(name: 'Macau', flag: '🇲🇴', code: 'MO'),

  // Central Asia
  Nationality(name: 'Kazakhstan', flag: '🇰🇿', code: 'KZ'),
  Nationality(name: 'Uzbekistan', flag: '🇺🇿', code: 'UZ'),
  Nationality(name: 'Turkmenistan', flag: '🇹🇲', code: 'TM'),
  Nationality(name: 'Tajikistan', flag: '🇹🇯', code: 'TJ'),
  Nationality(name: 'Kyrgyzstan', flag: '🇰🇬', code: 'KG'),

  // Europe - Western
  Nationality(name: 'United Kingdom', flag: '🇬🇧', code: 'GB'),
  Nationality(name: 'France', flag: '🇫🇷', code: 'FR'),
  Nationality(name: 'Germany', flag: '🇩🇪', code: 'DE'),
  Nationality(name: 'Italy', flag: '🇮🇹', code: 'IT'),
  Nationality(name: 'Spain', flag: '🇪🇸', code: 'ES'),
  Nationality(name: 'Portugal', flag: '🇵🇹', code: 'PT'),
  Nationality(name: 'Netherlands', flag: '🇳🇱', code: 'NL'),
  Nationality(name: 'Belgium', flag: '🇧🇪', code: 'BE'),
  Nationality(name: 'Switzerland', flag: '🇨🇭', code: 'CH'),
  Nationality(name: 'Austria', flag: '🇦🇹', code: 'AT'),
  Nationality(name: 'Ireland', flag: '🇮🇪', code: 'IE'),
  Nationality(name: 'Luxembourg', flag: '🇱🇺', code: 'LU'),
  Nationality(name: 'Monaco', flag: '🇲🇨', code: 'MC'),
  Nationality(name: 'Liechtenstein', flag: '🇱🇮', code: 'LI'),
  Nationality(name: 'Andorra', flag: '🇦🇩', code: 'AD'),
  Nationality(name: 'San Marino', flag: '🇸🇲', code: 'SM'),
  Nationality(name: 'Vatican City', flag: '🇻🇦', code: 'VA'),

  // Europe - Northern
  Nationality(name: 'Sweden', flag: '🇸🇪', code: 'SE'),
  Nationality(name: 'Norway', flag: '🇳🇴', code: 'NO'),
  Nationality(name: 'Denmark', flag: '🇩🇰', code: 'DK'),
  Nationality(name: 'Finland', flag: '🇫🇮', code: 'FI'),
  Nationality(name: 'Iceland', flag: '🇮🇸', code: 'IS'),

  // Europe - Eastern
  Nationality(name: 'Russia', flag: '🇷🇺', code: 'RU'),
  Nationality(name: 'Ukraine', flag: '🇺🇦', code: 'UA'),
  Nationality(name: 'Poland', flag: '🇵🇱', code: 'PL'),
  Nationality(name: 'Czech Republic', flag: '🇨🇿', code: 'CZ'),
  Nationality(name: 'Slovakia', flag: '🇸🇰', code: 'SK'),
  Nationality(name: 'Hungary', flag: '🇭🇺', code: 'HU'),
  Nationality(name: 'Romania', flag: '🇷🇴', code: 'RO'),
  Nationality(name: 'Bulgaria', flag: '🇧🇬', code: 'BG'),
  Nationality(name: 'Belarus', flag: '🇧🇾', code: 'BY'),
  Nationality(name: 'Moldova', flag: '🇲🇩', code: 'MD'),
  Nationality(name: 'Estonia', flag: '🇪🇪', code: 'EE'),
  Nationality(name: 'Latvia', flag: '🇱🇻', code: 'LV'),
  Nationality(name: 'Lithuania', flag: '🇱🇹', code: 'LT'),

  // Europe - Southern/Balkans
  Nationality(name: 'Greece', flag: '🇬🇷', code: 'GR'),
  Nationality(name: 'Croatia', flag: '🇭🇷', code: 'HR'),
  Nationality(name: 'Serbia', flag: '🇷🇸', code: 'RS'),
  Nationality(name: 'Slovenia', flag: '🇸🇮', code: 'SI'),
  Nationality(name: 'Bosnia and Herzegovina', flag: '🇧🇦', code: 'BA'),
  Nationality(name: 'Montenegro', flag: '🇲🇪', code: 'ME'),
  Nationality(name: 'North Macedonia', flag: '🇲🇰', code: 'MK'),
  Nationality(name: 'Albania', flag: '🇦🇱', code: 'AL'),
  Nationality(name: 'Kosovo', flag: '🇽🇰', code: 'XK'),
  Nationality(name: 'Malta', flag: '🇲🇹', code: 'MT'),
  Nationality(name: 'Cyprus', flag: '🇨🇾', code: 'CY'),

  // Europe - Caucasus
  Nationality(name: 'Georgia', flag: '🇬🇪', code: 'GE'),
  Nationality(name: 'Armenia', flag: '🇦🇲', code: 'AM'),
  Nationality(name: 'Azerbaijan', flag: '🇦🇿', code: 'AZ'),

  // North America
  Nationality(name: 'United States', flag: '🇺🇸', code: 'US'),
  Nationality(name: 'Canada', flag: '🇨🇦', code: 'CA'),
  Nationality(name: 'Mexico', flag: '🇲🇽', code: 'MX'),

  // Central America
  Nationality(name: 'Guatemala', flag: '🇬🇹', code: 'GT'),
  Nationality(name: 'Belize', flag: '🇧🇿', code: 'BZ'),
  Nationality(name: 'Honduras', flag: '🇭🇳', code: 'HN'),
  Nationality(name: 'El Salvador', flag: '🇸🇻', code: 'SV'),
  Nationality(name: 'Nicaragua', flag: '🇳🇮', code: 'NI'),
  Nationality(name: 'Costa Rica', flag: '🇨🇷', code: 'CR'),
  Nationality(name: 'Panama', flag: '🇵🇦', code: 'PA'),

  // Caribbean
  Nationality(name: 'Cuba', flag: '🇨🇺', code: 'CU'),
  Nationality(name: 'Jamaica', flag: '🇯🇲', code: 'JM'),
  Nationality(name: 'Haiti', flag: '🇭🇹', code: 'HT'),
  Nationality(name: 'Dominican Republic', flag: '🇩🇴', code: 'DO'),
  Nationality(name: 'Puerto Rico', flag: '🇵🇷', code: 'PR'),
  Nationality(name: 'Trinidad and Tobago', flag: '🇹🇹', code: 'TT'),
  Nationality(name: 'Bahamas', flag: '🇧🇸', code: 'BS'),
  Nationality(name: 'Barbados', flag: '🇧🇧', code: 'BB'),
  Nationality(name: 'Saint Lucia', flag: '🇱🇨', code: 'LC'),
  Nationality(name: 'Grenada', flag: '🇬🇩', code: 'GD'),
  Nationality(
    name: 'Saint Vincent and the Grenadines',
    flag: '🇻🇨',
    code: 'VC',
  ),
  Nationality(name: 'Antigua and Barbuda', flag: '🇦🇬', code: 'AG'),
  Nationality(name: 'Dominica', flag: '🇩🇲', code: 'DM'),
  Nationality(name: 'Saint Kitts and Nevis', flag: '🇰🇳', code: 'KN'),

  // South America
  Nationality(name: 'Brazil', flag: '🇧🇷', code: 'BR'),
  Nationality(name: 'Argentina', flag: '🇦🇷', code: 'AR'),
  Nationality(name: 'Colombia', flag: '🇨🇴', code: 'CO'),
  Nationality(name: 'Peru', flag: '🇵🇪', code: 'PE'),
  Nationality(name: 'Venezuela', flag: '🇻🇪', code: 'VE'),
  Nationality(name: 'Chile', flag: '🇨🇱', code: 'CL'),
  Nationality(name: 'Ecuador', flag: '🇪🇨', code: 'EC'),
  Nationality(name: 'Bolivia', flag: '🇧🇴', code: 'BO'),
  Nationality(name: 'Paraguay', flag: '🇵🇾', code: 'PY'),
  Nationality(name: 'Uruguay', flag: '🇺🇾', code: 'UY'),
  Nationality(name: 'Guyana', flag: '🇬🇾', code: 'GY'),
  Nationality(name: 'Suriname', flag: '🇸🇷', code: 'SR'),

  // Africa - North
  Nationality(name: 'Morocco', flag: '🇲🇦', code: 'MA'),
  Nationality(name: 'Algeria', flag: '🇩🇿', code: 'DZ'),
  Nationality(name: 'Tunisia', flag: '🇹🇳', code: 'TN'),
  Nationality(name: 'Libya', flag: '🇱🇾', code: 'LY'),
  Nationality(name: 'Sudan', flag: '🇸🇩', code: 'SD'),
  Nationality(name: 'South Sudan', flag: '🇸🇸', code: 'SS'),

  // Africa - West
  Nationality(name: 'Nigeria', flag: '🇳🇬', code: 'NG'),
  Nationality(name: 'Ghana', flag: '🇬🇭', code: 'GH'),
  Nationality(name: 'Senegal', flag: '🇸🇳', code: 'SN'),
  Nationality(name: 'Ivory Coast', flag: '🇨🇮', code: 'CI'),
  Nationality(name: 'Mali', flag: '🇲🇱', code: 'ML'),
  Nationality(name: 'Burkina Faso', flag: '🇧🇫', code: 'BF'),
  Nationality(name: 'Niger', flag: '🇳🇪', code: 'NE'),
  Nationality(name: 'Guinea', flag: '🇬🇳', code: 'GN'),
  Nationality(name: 'Benin', flag: '🇧🇯', code: 'BJ'),
  Nationality(name: 'Togo', flag: '🇹🇬', code: 'TG'),
  Nationality(name: 'Sierra Leone', flag: '🇸🇱', code: 'SL'),
  Nationality(name: 'Liberia', flag: '🇱🇷', code: 'LR'),
  Nationality(name: 'Mauritania', flag: '🇲🇷', code: 'MR'),
  Nationality(name: 'Gambia', flag: '🇬🇲', code: 'GM'),
  Nationality(name: 'Guinea-Bissau', flag: '🇬🇼', code: 'GW'),
  Nationality(name: 'Cape Verde', flag: '🇨🇻', code: 'CV'),

  // Africa - East
  Nationality(name: 'Ethiopia', flag: '🇪🇹', code: 'ET'),
  Nationality(name: 'Kenya', flag: '🇰🇪', code: 'KE'),
  Nationality(name: 'Tanzania', flag: '🇹🇿', code: 'TZ'),
  Nationality(name: 'Uganda', flag: '🇺🇬', code: 'UG'),
  Nationality(name: 'Rwanda', flag: '🇷🇼', code: 'RW'),
  Nationality(name: 'Burundi', flag: '🇧🇮', code: 'BI'),
  Nationality(name: 'Somalia', flag: '🇸🇴', code: 'SO'),
  Nationality(name: 'Eritrea', flag: '🇪🇷', code: 'ER'),
  Nationality(name: 'Djibouti', flag: '🇩🇯', code: 'DJ'),
  Nationality(name: 'Madagascar', flag: '🇲🇬', code: 'MG'),
  Nationality(name: 'Mauritius', flag: '🇲🇺', code: 'MU'),
  Nationality(name: 'Seychelles', flag: '🇸🇨', code: 'SC'),
  Nationality(name: 'Comoros', flag: '🇰🇲', code: 'KM'),

  // Africa - Central
  Nationality(
    name: 'Democratic Republic of the Congo',
    flag: '🇨🇩',
    code: 'CD',
  ),
  Nationality(name: 'Republic of the Congo', flag: '🇨🇬', code: 'CG'),
  Nationality(name: 'Cameroon', flag: '🇨🇲', code: 'CM'),
  Nationality(name: 'Central African Republic', flag: '🇨🇫', code: 'CF'),
  Nationality(name: 'Chad', flag: '🇹🇩', code: 'TD'),
  Nationality(name: 'Gabon', flag: '🇬🇦', code: 'GA'),
  Nationality(name: 'Equatorial Guinea', flag: '🇬🇶', code: 'GQ'),
  Nationality(name: 'São Tomé and Príncipe', flag: '🇸🇹', code: 'ST'),

  // Africa - Southern
  Nationality(name: 'South Africa', flag: '🇿🇦', code: 'ZA'),
  Nationality(name: 'Namibia', flag: '🇳🇦', code: 'NA'),
  Nationality(name: 'Botswana', flag: '🇧🇼', code: 'BW'),
  Nationality(name: 'Zimbabwe', flag: '🇿🇼', code: 'ZW'),
  Nationality(name: 'Zambia', flag: '🇿🇲', code: 'ZM'),
  Nationality(name: 'Malawi', flag: '🇲🇼', code: 'MW'),
  Nationality(name: 'Mozambique', flag: '🇲🇿', code: 'MZ'),
  Nationality(name: 'Angola', flag: '🇦🇴', code: 'AO'),
  Nationality(name: 'Eswatini', flag: '🇸🇿', code: 'SZ'),
  Nationality(name: 'Lesotho', flag: '🇱🇸', code: 'LS'),

  // Oceania
  Nationality(name: 'Australia', flag: '🇦🇺', code: 'AU'),
  Nationality(name: 'New Zealand', flag: '🇳🇿', code: 'NZ'),
  Nationality(name: 'Fiji', flag: '🇫🇯', code: 'FJ'),
  Nationality(name: 'Papua New Guinea', flag: '🇵🇬', code: 'PG'),
  Nationality(name: 'Solomon Islands', flag: '🇸🇧', code: 'SB'),
  Nationality(name: 'Vanuatu', flag: '🇻🇺', code: 'VU'),
  Nationality(name: 'Samoa', flag: '🇼🇸', code: 'WS'),
  Nationality(name: 'Tonga', flag: '🇹🇴', code: 'TO'),
  Nationality(name: 'Kiribati', flag: '🇰🇮', code: 'KI'),
  Nationality(name: 'Micronesia', flag: '🇫🇲', code: 'FM'),
  Nationality(name: 'Marshall Islands', flag: '🇲🇭', code: 'MH'),
  Nationality(name: 'Palau', flag: '🇵🇼', code: 'PW'),
  Nationality(name: 'Nauru', flag: '🇳🇷', code: 'NR'),
  Nationality(name: 'Tuvalu', flag: '🇹🇻', code: 'TV'),
];

/// Get list of nationality names only
List<String> get nationalityNames => kNationalities.map((n) => n.name).toList();

/// Find a nationality by name
Nationality? findNationalityByName(String name) {
  try {
    return kNationalities.firstWhere(
      (n) => n.name.toLowerCase() == name.toLowerCase(),
    );
  } catch (_) {
    return null;
  }
}

/// Find a nationality by code
Nationality? findNationalityByCode(String code) {
  try {
    return kNationalities.firstWhere(
      (n) => n.code.toLowerCase() == code.toLowerCase(),
    );
  } catch (_) {
    return null;
  }
}
