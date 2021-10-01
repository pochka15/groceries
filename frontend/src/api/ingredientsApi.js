import { CustomSwaggerClient } from "../utils/swaggerUtls";

/**
 * @param {String} query
 * @returns {Promise<*>}
 */
export async function findMatchingCategories(query) {
  const client = await CustomSwaggerClient();
  const response = await client.apis[
    "ingredients-co"
    ].findMatchingCategoriesUsingPOST({}, { requestBody: query });
  return response.body;
}


/**
 * @param {String} query
 * @returns {Promise<*>}
 */
export async function findMatchingIngredients(query) {
  const client = await CustomSwaggerClient();
  const response = await client.apis[
    "ingredients-co"
  ].findMatchingIngredientsUsingPOST({}, { requestBody: query });
  return response.body;
}

/**
 * @param {Object} ingredient
 * @returns {Promise<*>}
 */
export async function saveIngredient(ingredient) {
  const client = await CustomSwaggerClient();
  const response = await client.apis[
    "ingredients-co"
    ].saveIngredientUsingPOST({}, { requestBody: ingredient });
  return response.body;
}