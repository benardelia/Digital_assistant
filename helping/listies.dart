class Listies {
  List<String> units = [
    'Length',
    'Weight',
    'Area',
    'Volume',
    'Temperature',
    'Time'
  ];

  List length = [
    'Meter',
    'Kilometer',
    'Centimeter',
    'Millimeter',
    'Micrometer',
    'Nanometer',
    'Mile',
    'Yard',
    'Foot',
    'Inch'
  ];

  List temperature = ['Celcius', 'Kelvin', 'Fahrenheit'];
  List area = [
    'Square Meter',
    'Square Kilometer',
    'Square Centimeter',
    'Square Millimeter',
    'Are',
    'Hectore',
    'Square Mile',
    'Square Yard',
    'Square Foot',
    'Square Inch',
    'Acre'
  ];

  List volume = [
    'Cubic Meter',
    'Cubic Kilometer',
    'Cubic Centimeter',
    'Cubic Millimeter',
    'Kiloliter',
    'Liter',
    'Milliliter',
    'US Gallon',
    'US Quart',
    'US Pint',
    'US Cup',
    'US Fluid Ounce',
    'Imperial Gallon',
    'Imperial Quart',
    'Imperial Pint',
    'Imperial peck',
    'Imperial Fluid Ounce',
    'Cubic Yard',
    'Cubic Mile',
    'Cubic Foot',
    'Cubic Inch'
  ];

  List weight = [
    'Kilogram',
    'Gram',
    'Milligram',
    'Metric Ton',
    'Pound',
    'Ounce',
    'Carat',
    'Atomic Mass Unit'
  ];

  List time = [
    'Second',
    'Millisecond',
    'Microsecond',
    'Nanosecond',
    'Picosecond',
    'Minute',
    'Hour',
    'Day',
    'Week',
    'Month',
    'Year'
  ];
}

class UnitValue {
  // NB one unit to other units reduced as go down, since the conversion done back and forth
  Map unitsAndValues = {
    // start with time

    'Time': [
      ['Second', 'Minute', (1 / 60)],
      ['Second', 'Millisecond', (1000)],
      ['Second', 'Microsecond', (1000000)],
      ['Second', 'Nanosecond', (1000000000)],
      ['Second', 'Picosecond', (1000000000000)],
      ['Second', 'Hour', (1 / 3600)],
      ['Second', 'Day', (1 / 86400)],
      ['Second', 'Week', (0.0000016534)],
      ['Second', 'Month', (3.802570537E-7)],
      ['Second', 'Year', (3.168808781E-8)],
      //  minutes in other unities
      ['Minute', 'Millisecond', 60000],
      ['Minute', 'Microsecond', 60000000],
      ['Minute', 'Nanosecond', 60000000000],
      ['Minute', 'Picosecond', 60000000000000],
      ['Minute', 'Hour', 0.0166666667],
      ['Minute', 'Day', 0.0006944444],
      ['Minute', 'Week', 0.0000992063],
      ['Minute', 'Month', 0.0000228311],
      ['Minute', 'Year', 0.0000019013],
      // hour in other unities
      ['Hour', 'Millisecond', 3600000],
      ['Hour', 'Microsecond', 3600000000],
      ['Hour', 'Nanosecond', 3600000000000],
      ['Hour', 'Picosecond', 3600000000000000],
      ['Hour', 'Day', 0.0416666667],
      ['Hour', 'Week', 0.005952381],
      ['Hour', 'Month', 0.001369863],
      ['Hour', 'Year', 0.0001140771],
// day into other unities
      ['Day', 'Millisecond', 86400000],
      ['Day', 'Microsecond', 86400000000],
      ['Day', 'Nanosecond', 86400000000000],
      ['Day', 'Picosecond', 86400000000000000],
      ['Day', 'Week', 0.1428571429],
      ['Day', 'Month', 0.0328767123],
      ['Day', 'Year', 0.0027378508],
//  week into other units
      ['Week', 'Millisecond', 604800000],
      ['Week', 'Microsecond', 604800000000],
      ['Week', 'Nanosecond', 604800000000002],
      ['Week', 'Picosecond', 604800000000001700],
      ['Week', 'Month', 0.2301369863],
      ['Week', 'Year', 0.0191649555],
// month into other units
      ['Month', 'Millisecond', 2628000000],
      ['Month', 'Microsecond', 2628000000000],
      ['Month', 'Nanosecond', 2628000000000000],
      ['Month', 'Picosecond', 2628000000000000000],
      ['Month', 'Year', 0.0832762948],
// milliseconds to other units
      ['Millisecond', 'Microsecond', 1000],
      ['Millisecond', 'Nanosecond', 1000000],
      ['Millisecond', 'Picosecond', 1000000000],
      ['Millisecond', 'Year'],

//  micro second to other units
      ['Microsecond', 'Nanosecond', 1000],
      ['Microsecond', 'Picosecond', 1000000],
      ['Microsecond', 'Year', 3.168808781E-14],

// pico second into other units
      ['Nanosecond', 'Picosecond', 1000],
      ['Nanosecond', 'Year', 3.168808781E-17]
    ],

    'Weight': [
      //  kilo gram to other units
      ['Kilogram', 'Gram', 1000],
      ['Kilogram', 'Milligram', 1000000],
      ['Kilogram', 'Metric Ton', 0.001],
      ['Kilogram', 'Pound', 2.20462262],
      ['Kilogram', 'Ounce', 35.273962],
      ['Kilogram', 'Carat', 5000],
      ['Kilogram', 'Atomic Mass Unit', 6.0221E+26],
      // gram into other units
      ['Gram', 'Milligram', 1000],
      ['Gram', 'Metric Ton', 0.000001],
      ['Gram', 'Pound', 0.00220462],
      ['Gram', 'Ounce', 0.03527396],
      ['Gram', 'Carat', 5],
      ['Gram', 'Atomic Mass Unit', 6.0221E+23],
      // milligram to other units
      ['Milligram', 'Metric Ton', 1.0000E-9],
      ['Milligram', 'Pound', 0.0000022],
      ['Milligram', 'Ounce', 0.00003527],
      ['Milligram', 'Carat', 0.005],
      ['Milligram', 'Atomic Mass Unit', 6.0221E+20],
      // metric ton to other units...
      ['Metric Ton', 'Pound', 2204.62262],
      ['Metric Ton', 'Ounce', 35273.962],
      ['Metric Ton', 'Carat', 5000000],
      ['Metric Ton', 'Atomic Mass Unit', 6.0221E+29],
      // pound to other unit
      ['Pound', 'Ounce', 16],
      ['Pound', 'Carat', 2267.96185],
      ['Pound', 'Atomic Mass Unit', 2.7316E+26],

      // once to other units
      ['Ounce', 'Carat', 141.747615],
      ['Ounce', 'Atomic Mass Unit', 1.7072E+25],

      ['Carat', 'Atomic Mass Unit', 1.2044E+23]
    ],

    'Length': [
      //  meter to other units..
      ['Meter', 'Kilometer', 0.001],
      ['Meter', 'Centimeter', 100],
      ['Meter', 'Millimeter', 1000],
      ['Meter', 'Micrometer', 1000000],
      ['Meter', 'Nanometer', 1.0000E+9],
      ['Meter', 'Mile', 0.00062137],
      ['Meter', 'Yard', 1.0936133],
      ['Meter', 'Foot', 3.2808399],
      ['Meter', 'Inch', 39.3700787],

// kilometer to other units...
      ['Kilometer', 'Centimeter', 100000],
      ['Kilometer', 'Millimeter', 1000000],
      ['Kilometer', 'Micrometer', 1.0000E+9],
      ['Kilometer', 'Nanometer', 1.0000E+12],
      ['Kilometer', 'Mile', 0.62137119],
      ['Kilometer', 'Yard', 1093.6133],
      ['Kilometer', 'Foot', 3280.8399],
      ['Kilometer', 'Inch', 39370.0787],

      // centimeter to other units
      ['Centimeter', 'Millimeter', 10],
      ['Centimeter', 'Micrometer', 10000],
      ['Centimeter', 'Nanometer', 10000000],
      ['Centimeter', 'Mile', 0.00000621],
      ['Centimeter', 'Yard', 0.01093613],
      ['Centimeter', 'Foot', 0.0328084],
      ['Centimeter', 'Inch', 0.39370079],

// Millimeter to other units
      ['Millimeter', 'Micrometer', 1000],
      ['Millimeter', 'Nanometer', 1000000],
      ['Millimeter', 'Mile', 6.2137E-7],
      ['Millimeter', 'Yard', 0.00109361],
      ['Millimeter', 'Foot', 0.00328084],
      ['Millimeter', 'Inch', 0.03937008],

// Micrometer to other units
      ['Micrometer', 'Nanometer', 1000],
      ['Micrometer', 'Mile', 6.2137E-10],
      ['Micrometer', 'Yard', 0.00000109],
      ['Micrometer', 'Foot', 0.00000328],
      ['Micrometer', 'Inch', 0.00003937],

// Nanometer to other units
      ['Nanometer', 'Mile', 6.2137E-13],
      ['Nanometer', 'Yard', 1.0936E-9],
      ['Nanometer', 'Foot', 3.2808E-9],
      ['Nanometer', 'Inch', 3.9370E-8],

      //  mile to other units
      ['Mile', 'Yard', 1760],
      ['Mile', 'Foot', 5280],
      ['Mile', 'Inch', 63360],

      //  yard to othe units
      ['Yard', 'Foot', 3],
      ['Yard', 'Inch', 36],

      // Foot to other units
      ['Foot', 'Inch', 12],
    ],

    'Volume': [
//  cubic meter to other units
      ['Cubic Meter', 'Cubic Kilometer', 1.0000E-9],
      ['Cubic Meter', 'Cubic Centimeter', 1000000],
      ['Cubic Meter', 'Cubic Millimeter', 1.0000E+9],
      ['Cubic Meter', 'Kiloliter', 1],
      ['Cubic Meter', 'Liter', 1000],
      ['Cubic Meter', 'Milliliter', 1000000],
      ['Cubic Meter', 'US Gallon', 264.172053],
      ['Cubic Meter', 'US Quart', 1056.68821],
      ['Cubic Meter', 'US Pint', 2113.37642],
      ['Cubic Meter', 'US Cup', 4226.75284],
      ['Cubic Meter', 'US Fluid Ounce', 33814.0227],
      ['Cubic Meter', 'Imperial Gallon', 219.969152],
      ['Cubic Meter', 'Imperial Quart', 879.876606],
      ['Cubic Meter', 'Imperial Pint', 1759.75321],
      ['Cubic Meter', 'Imperial peck', 109.984576],
      ['Cubic Meter', 'Imperial Fluid Ounce', 35195.0642],
      ['Cubic Meter', 'Cubic Yard', 1.30795062],
      ['Cubic Meter', 'Cubic Mile', 2.3991E-10],
      ['Cubic Meter', 'Cubic Foot', 35.3146667],
      ['Cubic Meter', 'Cubic Inch', 61023.7441],

//  cubic kilometer to other units
      ['Cubic Kilometer', 'Cubic Centimeter', 3.2000E+17],
      ['Cubic Kilometer', 'Cubic Millimeter', 3.2000E+20],
      ['Cubic Kilometer', 'Kiloliter', 1.0000E+9],
      ['Cubic Kilometer', 'Liter', 3.2000E+14],
      ['Cubic Kilometer', 'Milliliter', 3.2000E+17],
      ['Cubic Kilometer', 'US Gallon', 8.4535E+13],
      ['Cubic Kilometer', 'US Quart', 3.3814E+14],
      ['Cubic Kilometer', 'US Pint', 6.7628E+14],
      ['Cubic Kilometer', 'US Cup', 1.3526E+15],
      ['Cubic Kilometer', 'US Fluid Ounce', 1.0820E+16],
      ['Cubic Kilometer', 'Imperial Gallon', 7.0390E+13],
      ['Cubic Kilometer', 'Imperial Quart', 2.8156E+14],
      ['Cubic Kilometer', 'Imperial Pint', 5.6312E+14],
      ['Cubic Kilometer', 'Imperial peck', 3.5195E+13],
      ['Cubic Kilometer', 'Imperial Fluid Ounce', 3.5195E+13],
      ['Cubic Kilometer', 'Cubic Yard', 1.3080E+9],
      ['Cubic Kilometer', 'Cubic Mile', 0.23991276],
      ['Cubic Kilometer', 'Cubic Foot', 3.5315E+10],
      ['Cubic Kilometer', 'Cubic Inch', 6.1024E+13],

//  cubic centimeter to other units
      ['Cubic Centimeter', 'Cubic Millimeter', 1000],
      ['Cubic Centimeter', 'Kiloliter', 0.000001],
      ['Cubic Centimeter', 'Liter', 0.001],
      ['Cubic Centimeter', 'Milliliter', 1],
      ['Cubic Centimeter', 'US Gallon', 0.00026417],
      ['Cubic Centimeter', 'US Quart', 0.00105669],
      ['Cubic Centimeter', 'US Pint', 0.00211338],
      ['Cubic Centimeter', 'US Cup', 0.00422675],
      ['Cubic Centimeter', 'US Fluid Ounce', 0.03381402],
      ['Cubic Centimeter', 'Imperial Gallon', 0.00021997],
      ['Cubic Centimeter', 'Imperial Quart', 0.00105669],
      ['Cubic Centimeter', 'Imperial Pint', 0.00175975],
      ['Cubic Centimeter', 'Imperial peck', 0.00010998],
      ['Cubic Centimeter', 'Imperial Fluid Ounce', 0.03519506],
      ['Cubic Centimeter', 'Cubic Yard', 0.00000131],
      ['Cubic Centimeter', 'Cubic Mile', 2.3991E-16],
      ['Cubic Centimeter', 'Cubic Foot', 0.00003531],
      ['Cubic Centimeter', 'Cubic Inch', 0.06102374],

// Cubic millimeter to other units

      ['Cubic Millimeter', 'Kiloliter', 1.0000E-9],
      ['Cubic Millimeter', 'Liter', 0.000001],
      ['Cubic Millimeter', 'Milliliter', 0.001],
      ['Cubic Millimeter', 'US Gallon', 2.6417E-7],
      ['Cubic Millimeter', 'US Quart', 0.00000106],
      ['Cubic Millimeter', 'US Pint', 0.00000211],
      ['Cubic Millimeter', 'US Cup', 0.00000423],
      ['Cubic Millimeter', 'US Fluid Ounce', 0.00003381],
      ['Cubic Millimeter', 'Imperial Gallon', 2.1997E-7],
      ['Cubic Millimeter', 'Imperial Quart', 8.7988E-7],
      ['Cubic Millimeter', 'Imperial Pint', 0.00000176],
      ['Cubic Millimeter', 'Imperial peck', 1.0998E-7],
      ['Cubic Millimeter', 'Imperial Fluid Ounce', 0.0000352],
      ['Cubic Millimeter', 'Cubic Yard', 1.3080E-9],
      ['Cubic Millimeter', 'Cubic Mile', 2.3991E-19],
      ['Cubic Millimeter', 'Cubic Foot', 3.5315E-8],
      ['Cubic Millimeter', 'Cubic Inch', 0.00006102],

      // Kiloliter to other units
      ['Kiloliter', 'Liter', 1000],
      ['Kiloliter', 'Milliliter', 1000000],
      ['Kiloliter', 'US Gallon', 264.172053],
      ['Kiloliter', 'US Quart', 1056.68821],
      ['Kiloliter', 'US Pint', 2113.37642],
      ['Kiloliter', 'US Cup', 4226.75284],
      ['Kiloliter', 'US Fluid Ounce', 33814.0227],
      ['Kiloliter', 'Imperial Gallon', 219.969152],
      ['Kiloliter', 'Imperial Quart', 879.876606],
      ['Kiloliter', 'Imperial Pint', 1759.75321],
      ['Kiloliter', 'Imperial peck', 109.984576],
      ['Kiloliter', 'Imperial Fluid Ounce', 35195.0642],
      ['Kiloliter', 'Cubic Yard', 1.30795062],
      ['Kiloliter', 'Cubic Mile', 2.3991E-10],
      ['Kiloliter', 'Cubic Foot', 35.3146667],
      ['Kiloliter', 'Cubic Inch', 61023.7441],

// liter to other units...
      ['Liter', 'Milliliter', 1000],
      ['Liter', 'US Gallon', 0.26417205],
      ['Liter', 'US Quart', 1.05668821],
      ['Liter', 'US Pint', 2.11337642],
      ['Liter', 'US Cup', 4.22675284],
      ['Liter', 'US Fluid Ounce', 33.8140227],
      ['Liter', 'Imperial Gallon', 0.21996915],
      ['Liter', 'Imperial Quart', 0.87987661],
      ['Liter', 'Imperial Pint', 1.75975321],
      ['Liter', 'Imperial peck', 0.10998458],
      ['Liter', 'Imperial Fluid Ounce', 35.1950642],
      ['Liter', 'Cubic Yard', 0.00130795],
      ['Liter', 'Cubic Mile', 2.3991E-13],
      ['Liter', 'Cubic Foot', 0.03531467],
      ['Liter', 'Cubic Inch', 61.0237441],
// milliliter to other units...
      ['Milliliter', 'US Gallon', 0.00026417],
      ['Milliliter', 'US Quart', 0.00105669],
      ['Milliliter', 'US Pint', 0.00211338],
      ['Milliliter', 'US Cup', 0.00422675],
      ['Milliliter', 'US Fluid Ounce', 0.03381402],
      ['Milliliter', 'Imperial Gallon', 0.00021997],
      ['Milliliter', 'Imperial Quart', 0.00087988],
      ['Milliliter', 'Imperial Pint', 0.00175975],
      ['Milliliter', 'Imperial peck', 0.00010998],
      ['Milliliter', 'Imperial Fluid Ounce', 0.03519506],
      ['Milliliter', 'Cubic Yard', 0.00000131],
      ['Milliliter', 'Cubic Mile', 2.3991E-16],
      ['Milliliter', 'Cubic Foot', 0.00003531],
      ['Milliliter', 'Cubic Inch', 0.06102374],
      //  Us gallon to other units
      ['US Gallon', 'US Quart', 4],
      ['US Gallon', 'US Pint', 8],
      ['US Gallon', 'US Cup', 16],
      ['US Gallon', 'US Fluid Ounce', 128],
      ['US Gallon', 'Imperial Gallon', 0.83267382],
      ['US Gallon', 'Imperial Quart', 3.33069527],
      ['US Gallon', 'Imperial Pint', 6.66139054],
      ['US Gallon', 'Imperial peck', 0.41633691],
      ['US Gallon', 'Imperial Fluid Ounce', 133.227811],
      ['US Gallon', 'Cubic Yard', 0.00495113],
      ['US Gallon', 'Cubic Mile', 9.0817E-13],
      ['US Gallon', 'Cubic Foot', 0.13368056],
      ['US Gallon', 'Cubic Inch', 231],

      // Us Quart to other units
      ['US Quart', 'US Pint', 2],
      ['US Quart', 'US Cup', 4],
      ['US Quart', 'US Fluid Ounce', 32],
      ['US Quart', 'Imperial Gallon', 0.20816845],
      ['US Quart', 'Imperial Quart', 0.83267382],
      ['US Quart', 'Imperial Pint', 1.66534763],
      ['US Quart', 'Imperial peck', 0.10408423],
      ['US Quart', 'Imperial Fluid Ounce', 33.3069527],
      ['US Quart', 'Cubic Yard', 0.00123778],
      ['US Quart', 'Cubic Mile', 2.2704E-13],
      ['US Quart', 'Cubic Foot', 0.03342014],
      ['US Quart', 'Cubic Inch', 57.7499999],

      // Uspint to other units
      ['US Pint', 'US Cup', 2],
      ['US Pint', 'US Fluid Ounce', 16],
      ['US Pint', 'Imperial Gallon', 0.10408423],
      ['US Pint', 'Imperial Quart', 0.41633691],
      ['US Pint', 'Imperial Pint', 0.83267382],
      ['US Pint', 'Imperial peck', 0.05204211],
      ['US Pint', 'Imperial Fluid Ounce', 16.6534763],
      ['US Pint', 'Cubic Yard', 0.00061889],
      ['US Pint', 'Cubic Mile', 1.1352E-13],
      ['US Pint', 'Cubic Foot', 0.01671007],
      ['US Pint', 'Cubic Inch', 28.875],

      // Us cup to other units
      ['US Cup', 'US Fluid Ounce', 8],
      ['US Cup', 'Imperial Gallon', 0.05204211],
      ['US Cup', 'Imperial Quart', 0.20816845],
      ['US Cup', 'Imperial Pint', 0.41633691],
      ['US Cup', 'Imperial peck', 0.02602106],
      ['US Cup', 'Imperial Fluid Ounce', 8.32673817],
      ['US Cup', 'Cubic Yard', 0.00030945],
      ['US Cup', 'Cubic Mile', 5.6761E-14],
      ['US Cup', 'Cubic Foot', 0.00835503],
      ['US Cup', 'Cubic Inch', 14.4375],

      //  Us fluid ounce to other units...
      ['US Fluid Ounce', 'Imperial Gallon', 0.00650526],
      ['US Fluid Ounce', 'Imperial Quart', 0.02602106],
      ['US Fluid Ounce', 'Imperial Pint', 0.05204211],
      ['US Fluid Ounce', 'Imperial peck', 0.00325263],
      ['US Fluid Ounce', 'Imperial Fluid Ounce', 1.04084227],
      ['US Fluid Ounce', 'Cubic Yard', 0.00003868],
      ['US Fluid Ounce', 'Cubic Mile', 7.0951E-15],
      ['US Fluid Ounce', 'Cubic Foot', 0.00104438],
      ['US Fluid Ounce', 'Cubic Inch', 1.8046875],

// Imperial gallon to other units
      ['Imperial Gallon', 'Imperial Quart', 4],
      ['Imperial Gallon', 'Imperial Pint', 8],
      ['Imperial Gallon', 'Imperial peck', 0.5],
      ['Imperial Gallon', 'Imperial Fluid Ounce', 160],
      ['Imperial Gallon', 'Cubic Yard', 0.00594606],
      ['Imperial Gallon', 'Cubic Mile', 1.0907E-12],
      ['Imperial Gallon', 'Cubic Foot', 0.16054372],
      ['Imperial Gallon', 'Cubic Inch', 277.419555],
// imperial quart to other units
      ['Imperial Quart', 'Imperial Pint', 2],
      ['Imperial Quart', 'Imperial peck', 0.125],
      ['Imperial Quart', 'Imperial Fluid Ounce', 40],
      ['Imperial Quart', 'Cubic Yard', 0.00148652],
      ['Imperial Quart', 'Cubic Mile', 2.7267E-13],
      ['Imperial Quart', 'Cubic Foot', 0.04013593],
      ['Imperial Quart', 'Cubic Inch', 69.3548887],

// Imperial pint to other units
      ['Imperial Pint', 'Imperial peck', 0.0625],
      ['Imperial Pint', 'Imperial Fluid Ounce', 20],
      ['Imperial Pint', 'Cubic Yard', 0.00074326],
      ['Imperial Pint', 'Cubic Mile', 1.3633E-13],
      ['Imperial Pint', 'Cubic Foot', 0.02006797],
      ['Imperial Pint', 'Cubic Inch', 34.6774443],

// cubic cup to other units
      ['Imperial peck', 'Imperial Fluid Ounce', 320],
      ['Imperial peck', 'Cubic Yard', 0.01189213],
      ['Imperial peck', 'Cubic Mile', 2.1813E-12],
      ['Imperial peck', 'Cubic Foot', 0.32108745],
      ['Imperial peck', 'Cubic Inch', 554.83911],
//  Imperial fluid ounce to other units
      ['Imperial Fluid Ounce', 'Cubic Yard', 0.00003716],
      ['Imperial Fluid Ounce', 'Cubic Mile', 6.8167E-15],
      ['Imperial Fluid Ounce', 'Cubic Foot', 0.0010034],
      ['Imperial Fluid Ounce', 'Cubic Inch', 1.73387222],

// cubic yard to other units
      ['Cubic Yard', 'Cubic Mile', 1.8343E-10],
      ['Cubic Yard', 'Cubic Foot', 27],
      ['Cubic Yard', 'Cubic Inch', 46656],
// cubic mile to other units
      ['Cubic Mile', 'Cubic Foot', 1.4720E+11],
      ['Cubic Mile', 'Cubic Inch', 2.5436E+14],

// cubic foot to cubic inch
      ['Cubic Foot', 'Cubic Inch', 1728],
    ],

    'Area': [
      // square meter to other units
      ['Square Meter', 'Square Kilometer', 0.000001],
      ['Square Meter', 'Square Centimeter', 10000],
      ['Square Meter', 'Square Millimeter', 1000000],
      ['Square Meter', 'Are', 0.01],
      ['Square Meter', 'Hectore', 0.0001],
      ['Square Meter', 'Square Mile', 3.8610E-7],
      ['Square Meter', 'Square Yard', 1.19599005],
      ['Square Meter', 'Square Foot', 10.7639104],
      ['Square Meter', 'Square Inch', 1550.0031],
      ['Square Meter', 'Acre', 0.00024711],
// square kilometer to other units
      ['Square Kilometer', 'Square Centimeter', 1.0000E+10],
      ['Square Kilometer', 'Square Millimeter', 1.0000E+12],
      ['Square Kilometer', 'Are', 10000],
      ['Square Kilometer', 'Hectore', 100],
      ['Square Kilometer', 'Square Mile', 0.38610216],
      ['Square Kilometer', 'Square Yard', 1.1960E+6],
      ['Square Kilometer', 'Square Foot', 1.0764E+7],
      ['Square Kilometer', 'Square Inch', 1.5500E+9],
      ['Square Kilometer', 'Acre', 247.105381],

// square centimeter to other units
      ['Square Centimeter', 'Square Millimeter', 100],
      ['Square Centimeter', 'Are', 0.000001],
      ['Square Centimeter', 'Hectore', 1.0000E-8],
      ['Square Centimeter', 'Square Mile', 3.8610E-11],
      ['Square Centimeter', 'Square Yard', 0.0001196],
      ['Square Centimeter', 'Square Foot', 0.00107639],
      ['Square Centimeter', 'Square Inch', 0.15500031],
      ['Square Centimeter', 'Acre', 2.4711E-8],

// square millimeter to other units
      ['Square Millimeter', 'Are', 2.4711E-10],
      ['Square Millimeter', 'Hectore', 1.0000E-10],
      ['Square Millimeter', 'Square Mile', 3.8610E-13],
      ['Square Millimeter', 'Square Yard', 0.0000012],
      ['Square Millimeter', 'Square Foot', 0.00001076],
      ['Square Millimeter', 'Square Inch', 0.00155],
      ['Square Millimeter', 'Acre', 2.4711E-10],

// Are to other units
      ['Are', 'Hectore', 0.01],
      ['Are', 'Square Mile', 0.00003861],
      ['Are', 'Square Yard', 119.599005],
      ['Are', 'Square Foot', 1076.39104],
      ['Are', 'Square Inch', 155000.31],
      ['Are', 'Acre', 0.02471054],

// hectore to other units
      ['Hectore', 'Square Mile', 0.00386102],
      ['Hectore', 'Square Yard', 11959.9005],
      ['Hectore', 'Square Foot', 107639.104],
      ['Hectore', 'Square Inch', 1.5500E+7],
      ['Hectore', 'Acre', 2.47105381],
// square miled to other units
      ['Square Mile', 'Square Yard', 3097600],
      ['Square Mile', 'Square Foot', 2.7878E+7],
      ['Square Mile', 'Square Inch', 4.0145E+9],
      ['Square Mile', 'Acre', 640],
// square yard to other units
      ['Square Yard', 'Square Foot', 9],
      ['Square Yard', 'Square Inch', 1296],
      ['Square Yard', 'Acre', 0.00020661],
// square foot to other units
      ['Square Foot', 'Square Inch', 144],
      ['Square Foot', 'Acre', 0.00002296],
// square inch to acre
      ['Square Inch', 'Acre', 1.5942E-7],
    ]
  };
}
