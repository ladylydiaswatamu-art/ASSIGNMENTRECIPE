lang program recipe_llm {
    llm model: "gpt-4"

    start {
        print("Welcome to the Recipe Generator!")
        foodstuff = input("Enter the main foodstuff (e.g., chicken, rice): ")
        ingredients = input("List additional ingredients (comma separated): ")
        recipe = llm.ask(
            "Given the main foodstuff '" + foodstuff + 
            "' and these ingredients: " + ingredients + 
            ", provide a step-by-step recipe."
        )
        print("Here's your recipe:\n" + recipe)
    }
}