import { CustomSwaggerClient } from "../utils/swaggerUtls";

/**
 * @param {Array<Number>} recipeIds
 * @returns {Promise<*>}
 */
export async function generateGroceries(recipeIds) {
  const client = await CustomSwaggerClient();
  const response = await client.apis[
    "groceries-co"
  ].generateGroceriesUsingPOST({}, { requestBody: recipeIds });
  return response.body;
}
