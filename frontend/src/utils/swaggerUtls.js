import SwaggerClient from "swagger-client";
import ApiUrls from "../apiUrls";

export async function CustomSwaggerClient() {
  return SwaggerClient({ url: ApiUrls.SWAGGER_PATH });
}
