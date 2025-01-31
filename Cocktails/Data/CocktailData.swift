//
//  CocktailData.swift
//  Cocktails
//
//  Created by Bence Tóth on 2021. 01. 08..
//

import SwiftUI

// MARK: - Cocktail Data

let cocktailData: [Cocktail] = [
    Cocktail(
        title: "Gin Tonic",
        headline: "Gin and tonic is traditionally garnished with a slice or wedge of lime and cucumber.",
        image: "gintonic",
        gradientColors: [Color("ColorGintonicLight"), Color("ColorGintonicDark")],
        description: "This cocktail dates back to 1750, when British naval officers added quinine to gin to treat fever. So popular was this «medicine» that it caused a rise in alcoholism in England. However, it was not until establishments dedicated purely to gin consumption opened the mid 1800s that the Gin Tonic became a respectable beverage.",
        serving: """
Pour dry gin into a highball glass containing a few ice cubes.

Top up with tonic water.

Garnish with slices of lime.
""",

        ingredients: ["60 ml dry gin", "150 ml tonic water", "Ice cubes", "Slices of lime"]),
    
    Cocktail(
        title: "Screwdriver",
        headline: "A screwdriver is a popular alcoholic highball drink made with orange juice and vodka.",
        image: "screwdriver",
        gradientColors: [Color("ColorScrewdriverLight"), Color("ColorScrewdriverDark")],
        description: "Like many other cocktails, the Screwdriver dates back to the American prohibition. Construction workers snuck vodka into their orange juice and used their screwdrivers to mix the beverage.",
        serving: """
Mix vodka and orange juice in a shaker filled with ice cubes.

Shake vigorously 8 to 10 seconds.

Strain into a highball glass using an ice strainer.

Garnish with an orange wedge.
""",
        ingredients: ["45 ml vodka", "120 ml orange juice", "1 orange wedge", "5 or 6 ice cubes"]),
    
    Cocktail(
        title: "Pina Colada",
        headline: "Piña colada means strained pineapple, a reference to the freshly pressed and strained pineapple juice.",
        image: "pinacolada",
        gradientColors: [Color("ColorPinacoladaLight"), Color("ColorPinacoladaDark")],
        description: "The Piña Colada was invented on August 15, 1954, by Don Ramon Monchito Marrero, a bartender at the Hilton hotel in San Juan, Puerto Rico. His goal was to combine all the flavours of Puerto Rico in a single glass, with a particular emphasis on the fresh pineapple juice from local farms. The Piña Colada was declared that county's national beverage in 1978, and has since gained fans around the world.",
        serving: """
Combine ice cubes, white rum, dark rum, coconut cream or sweetened coconut milk, and pineapple juice in an electric mixer.

Mix ingredients until smooth (maximum 10 seconds).

Pour into a tulip glass.

Garnish with pineapple piece and maraschino cherry.
""",
        ingredients: ["20 ml white rum", "20 ml dark rum", "120 ml pineapple juice", "45 cocomut cream or milk", "5 or 6 ice cubes crushed ice"]),
   
    Cocktail(
        title: "Jack & Coke",
        headline: "Several products were created as part of the marketing campaign, including bar signs and taps.",
        image: "whiskycoke",
        gradientColors: [Color("ColorWhiskycokeLight"), Color("ColorWhiskycokeDark")],
        description: "The first known mention of a drink made by mixing whiskey with Coke was in a 1907 report of an employee of the United States Bureau of Chemistry and Soils, who encountered the drink when visiting the South, and said the proprietor called it a Coca-Cola high-ball.",
        serving: """
Fill the glass with ice.

Pour Jack Daniel's brand Tennessee whiskey into the glass.

Fill to desired level with Coca-Cola.

Stir lightly.
""",
        ingredients: ["40 ml Jack Daniel's", "160 ml Coca-Cola", "Ice cubes"]),
    
    Cocktail(
        title: "Mojito",
        headline: "Its combination of sweetness, citrus, and mint has made the mojito a popular summer drink.",
        image: "mojito",
        gradientColors: [Color("ColorMojitoLight"), Color("ColorMojitoDark")],
        description: "Havana, Cuba, is the birthplace of the mojito, although its exact origin is the subject of debate. A survey by an international market research company found that in 2016 the mojito was the most popular cocktail in Britain and France.",
        serving: """
Place the mint leaves and 3 or 4 lime slices in a highball glass and crush using a muddler.

Add the sugar, white rum and ice cubes.

Top up with club soda.

Stir using a mixing spoon.

Garnish with a sprig of mint.
""",
        ingredients: ["45 ml white rum", "60 ml club soda", "Fresh mint leaves", "1 lime", "2 tsp. sugar", "Ice cubes", "1 sprig fresh mint"]),
    
    Cocktail(
        title: "Blue Lagoon",
        headline: "It is typically garnished with an orange slice or a lemon slice, and served in a highball glass.",
        image: "bluelagoon",
        gradientColors: [Color("ColorBluelagoonLight"), Color("ColorBluelagoonDark")],
        description: "Everything you need to know about the Blue Lagoon is right in the name. Tall, refreshing and bluer than the bluest Caribbean sky, the cocktail turns vodka, blue curaçao and lemonade into a drink you’ll want to dive into.",
        serving: """
Combine all ingredients in a highball glass containing a few ice cubes, except for the starfruit slices.

Stir using a mixing spoon.

Garnish with starfruit slices.

Add lemon-lime soda to this recipe to obtain a Blue Lagoon Highball, which has a sweeter taste.
""",
        ingredients: ["45 ml vodka", "15 ml Blue Curaçao", "15 ml lemon juice", "Ice cubes", "Starfruit slices"])


]
