export default class ApiUrls {
  static API_URL = process.env.REACT_APP_API_URL || "http://localhost:8080";
  static SWAGGER_PATH = `${ApiUrls.API_URL}/v3/api-docs`;
}
