var config = {
	address: "0.0.0.0", 
	port: 8080,
	ipWhitelist: [], 
	language: "en",
	timeFormat: 24,
	units: "metric",

	modules: [
		/* 
		{
			module: "alert",
		}, 
		{
			module: "updatenotification",
			position: "top_bar"
		}, 
		*/
        /*
		{
			module: "clock",
			position: "top_left"
		},
        */
		{
			module: "MMM-FlipClock",
			position: "top_left"
		},
        {
            module: 'MMM-Worldclock',
            position: 'top_left', // This can be any of the regions, best in top_left or top_right regions
        	config: {
		        timeFormat: 'hh:mm', //Global time format, as defined in moment.js format()
        		style: 'left', // Which way do you want the flag and description from the clock? choices are 'top', 'left','right','bottom'
		        clocks: [
        			{
		        		title: "HOLLYWOOD", // Too long of a title could cause bad text align.
				        timezone: "America/Los_Angeles", //When omitted, Local time will be displayed. 
        				flag: "us", // If you'd like a flag from the standard library 
		        	},
			        {
        				timezone: "Asia/Tokyo",
                        flag: "jp",
		        	},
        		]
        	},
        },
        {
			module: "calendar",
			// header: "US Holidays",
			header: "My Soccer",
			position: "top_center",
			config: {
				calendars: [
					{
						symbol: "calendar-check",
						// url: "webcal://www.calendarlabs.com/templates/ical/US-Holidays.ics"
						url: "https://calendar.google.com/calendar/ical/njc9lv07nfr2e3gab8not8joto%40group.calendar.google.com/private-6cdb49aa74d5ff5250fc8146e3326739/basic.ics",
						maximumEntries: 5,
					},					
				]
			}
		},
		{
			module: "calendar",
			header: "My Dear",
			position: "top_left",
			config: {
				calendars: [
					{
						symbol: "calendar-check",
						url: "https://calendar.google.com/calendar/ical/sarahngmoon%40gmail.com/private-df9a1b634cd7350fb5deaf32d998dac5/basic.ics",
						maximumEntries: 5,
					},
				]
			}
		},
		/* 
		{
			module: "compliments",
			position: "lower_third"
		}, 
		*/
		{
			module: "weather",
			position: "top_right",
			header: "Weather Current",
			config: {
                type: "current",
                weatherProvider: "openweathermap",
				location: "Kowloon",
				locationID: "1819609",  //ID from http://bulk.openweathermap.org/sample/; unzip the gz file and find your city
				apiKey: "19415b5697a8e72604290c5180878660"
			}
		},
		{
			module: "weather",
			position: "top_right",
			header: "Weather Forecast",
			config: {
                type: "forecast",
                weatherProvider: "openweathermap",
				location: "Kowloon",
				locationID: "1819609",  //ID from https://openweathermap.org/city
				apiKey: "19415b5697a8e72604290c5180878660"
			}
		},
		{
			module: "newsfeed",
            // position: "lower_third",
			position: "bottom_center",
			config: {
				feeds: [
					{
						title: "RTHK News",
						url: "http://rthk9.rthk.hk/rthk/news/rss/c_expressnews_clocal.xml"
					}
				],
				updateInterval: 15000,
				showSourceTitle: true,
				showPublishDate: true,
				showDescription: true
			}
		},
		/*
		{
			module: "MMM-GooglePhotos",
			position: "fullscreen_below",
			config: {
				albumId: ["ALY0UoGYUooJSs5pz05taWGqWv3rFRmLTyliRjfxg2gjlRGQ4Anhb_EXex5zZ7ZNbrgbxv6aeKks","ALY0UoFjB4yuM8ZcLFg_XGxfBresmNSpxO5Bj3LJm-xPynkV1Xdgg4_FlJI9EWcbd5h6HJOg8xOH"], 
				// your album id(s) from result of `auth_and_test.js`
				refreshInterval: 1000*60*3,  
				scanInterval: 1000*60*10, // too many scans might cause API quota limit also.
				//note(2018-07-29). It is some weird. API documents said temporal image url would live for 1 hour, but it might be broken shorter. 
				//So, per 10 min scanning could prevent dead url.	
				sort: "random", //'time', 'reverse', 'random'
				showWidth: "100%", // how large the photo will be shown as. (e.g;'100%' for fullscreen)
				showHeight: "100%",
				originalWidthPx: 3968, // original size of loaded image. (related with image quality)
				originalHeightPx: 2240, // Bigger size gives you better quality, but can give you network burden.
				mode: "hybrid", // "cover" or "contain" (https://www.w3schools.com/cssref/css3_pr_background-size.asp)
				//ADDED. "hybrid" : if you set as "hybrid" it will change "cover" and "contain" automatically by aspect ratio.
			}
		},
		*/
		{
			module: 'MMM-BackgroundSlideshow',
			position: 'fullscreen_below',
			config: {
				// imagePaths: ["modules/MMM-BackgroundSlideshow/exampleImages"],
				// imagePaths: ["modules/MMM-BackgroundSlideshow/2019-05_touyako"],
				// imagePaths: ["modules/MMM-BackgroundSlideshow/2019-11_nagoya"],
				imagePaths: ["modules/MMM-BackgroundSlideshow/paintings"],
                showImageInfo: true,
                imageInfoLocation: 'bottomRight',
                imageInfo: 'name',
                imageInfoNoFileExt: true,
                showProgressBar: true,
				transitionImages: true,
				randomizeImageOrder: true,
                slideshowSpeed: 3600000
			}
		},
		{
			module: 'MMM-MQTT',
			position: 'bottom_left',
			config: {
				logging: false,
				useWildcards: false,
				mqttServers: [
					{
						address: '192.168.0.210',  // Server address or IP address
						port: '1883',          // Port number if other than default
						user: 'pi',          // Leave out for no user
						password: 'i0522mqtt',  // Leave out for no password
						subscriptions: [
							{
								topic: 'myhome/sensor3',
								label: 'AQI'
							},
							{
								topic: 'myhome/sensor4',
								label: 'nCoV'
							},
							{
								topic: 'myhome/sensor5',
								label: 'JPY',
								decimals: 4
							},
						]
					}
				],
			}
		},
        /*
		{
			module: 'MMM-AVStock',
			position: 'bottom_bar',
			config:{
				apiKey :'M0ZO9J94FUYH0MH0',
				symbols : ["^HSI", "^DJI", "0005.hk", "0003.hk", "2800.hk", "0002.hk", "0388.hk"],
				alias: ["HSI", "DJI", "HSBC", "TownGas", "TrackFund", "CLPP", "HKEx"],
				mode : 'ticker',
			}
		},
        */
        {
            module: "MMM-Jast",
            position: "bottom_bar",
            config: {
                currencyStyle: "symbol", // One of ["code", "symbol", "name"]
                fadeSpeedInSeconds: 3.5,
                lastUpdateFormat: "HH:mm",
                maxChangeAge: 1 * 24 * 60 * 60 * 1000,
                maxWidth: "100%",
                numberDecimalsPercentages: 1,
                numberDecimalsValues: 0,
                scroll: "vertical", // One of ["none", "vertical", "horizontal"]
                showColors: true,
                showCurrency: true,
                showChangePercent: true,
                showChangeValue: true,
                showChangeValueCurrency: false,
                showHiddenStocks: false,
                showLastUpdate: false,
                showPortfolioValue: false,
                showPortfolioGrowthPercent: false,
                showPortfolioGrowth: false,
                updateIntervalInSeconds: 300,
                useGrouping: false,
                virtualHorizontalMultiplier: 4,
                stocks: [
                    { name: "Hangseng", symbol: "^HSI" },
                    { name: "Dowjones", symbol: "^DJI" },
                    { name: "HSBC", symbol: "0005.hk" },
                    { name: "TownGas", symbol: "0003.hk" },
                    { name: "TrackFund", symbol: "2800.hk" },
                    { name: "CLPP", symbol: "0002.hk" },
                    { name: "HKEx", symbol: "0388.hk" },
                ]
            }
        },
		/*
		{
			module: 'MMM-json-feed',
			position: 'bottom_right',
			config: {
				urls: ['http://192.168.0.210:1880/hello-json',],
				arrayName: "now",
				singleLine: true,
				updateInterval: 300000,		
				values: [ " AQI", " Pollutant" ]
			}
		},
		*/
	]

};

/*************** DO NOT EDIT THE LINE BELOW ***************/
if (typeof module !== "undefined") {module.exports = config;}
