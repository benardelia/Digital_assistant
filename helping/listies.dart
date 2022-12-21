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
    'Milimeter',
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
    'Square Micrometer',
    'Hector',
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
    'Cubic Micrometer',
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
    'Imperial Cup',
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
    'Carrat',
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
  
  'Time':[
    ['Second', 'Minute',(1/ 60)],
    ['Second','Millisecond',(1000)],
    ['Second','Microsecond',(1000000)],
    ['Second','Nanosecond',(1000000000)],
    ['Second','Picosecond',(1000000000000)],
    ['Second','Hour',(1/3600)],
    ['Second','Day',(1 / 86400)],
    ['Second','Week',(0.0000016534)],
    ['Second','Month',(3.802570537E-7)],
    ['Second','Year',(3.168808781E-8)],
    //  minutes in other unities 
    ['Minute','Millisecond',60000],
    ['Minute','Microsecond',60000000],
    ['Minute','Nanosecond', 60000000000],
    ['Minute','Picosecond',60000000000000],
    ['Minute','Hour', 0.0166666667],
    ['Minute','Day', 0.0006944444],
    ['Minute','Week', 0.0000992063],
    ['Minute','Month', 0.0000228311],
    ['Minute','Year', 0.0000019013],
    // hour in other unities 
    ['Hour','Millisecond',3600000],
    ['Hour','Microsecond', 3600000000],
    ['Hour','Nanosecond', 3600000000000],
    ['Hour','Picosecond', 3600000000000000],
    ['Hour','Day', 0.0416666667],
    ['Hour','Week', 0.005952381],
    ['Hour','Month', 0.001369863],
    ['Hour','Year', 0.0001140771],
// day into other unities 
    ['Day','Millisecond',86400000],
    ['Day','Microsecond',86400000000],
    ['Day','Nanosecond',86400000000000],
    ['Day','Picosecond', 86400000000000000],
    ['Day','Week', 0.1428571429],
    ['Day','Month', 0.0328767123],
    ['Day','Year', 0.0027378508],
//  week into other units
    ['Week','Millisecond',604800000],
    ['Week','Microsecond',604800000000],
    ['Week','Nanosecond',604800000000002],
    ['Week','Picosecond',604800000000001700],
    ['Week','Month',0.2301369863],
    ['Week','Year',0.0191649555],
// month into other units
    ['Month','Millisecond',2628000000],
    ['Month','Microsecond',2628000000000],
    ['Month','Nanosecond',2628000000000000],
    ['Month','Picosecond',2628000000000000000],
    ['Month','Year',0.0832762948],
// milliseconds to other units
    ['Millisecond','Microsecond',1000],
    ['Millisecond','Nanosecond',1000000],
    ['Millisecond','Picosecond',1000000000],
    ['Millisecond','Year'],

//  micro second to other units
    ['Microsecond','Nanosecond',1000],
    ['Microsecond','Picosecond',1000000],
    ['Microsecond','Year',3.168808781E-14],

// pico second into other units
    ['Nanosecond','Picosecond',1000],
     ['Nanosecond','Year',3.168808781E-17]
    ]
    
  
  };
}