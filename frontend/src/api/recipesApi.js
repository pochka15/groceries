import { CustomSwaggerClient } from "../utils/swaggerUtls";

/**
 * @param {Object} recipe
 * @returns {Promise<*>}
 */
export async function saveRecipe(recipe) {
  const client = await CustomSwaggerClient();
  const response = await client.apis["recipes-co"].saveRecipeUsingPOST(
    {},
    { requestBody: recipe }
  );
  return response.body;
}

/**
 * @param {String} query
 * @returns {Promise<*>}
 */
export async function findMatchingRecipes(query) {
  const client = await CustomSwaggerClient();
  const response = await client.apis[
    "recipes-co"
    ].findMatchingRecipesUsingPOST({}, { requestBody: query });
  return response.body;
}
