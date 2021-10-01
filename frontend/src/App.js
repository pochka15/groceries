import "./App.css";
import RecipeForm from "./components/RecipeForm";
import "bootstrap/dist/css/bootstrap.min.css";
import { Tab, Tabs } from "react-bootstrap";
import IngredientForm from "./components/IngredientForm";
import Groceries from "./components/Groceries";

function App() {
  return (
    <div className="App">
      <Tabs defaultActiveKey="profile" id="uncontrolled-tab-example">
        <Tab eventKey="recipes" title="Recipes">
          <RecipeForm />
        </Tab>
        <Tab eventKey="ingredients" title="Ingredients">
          <IngredientForm />
        </Tab>
        <Tab eventKey="groceries" title="Groceries list">
          <Groceries />
        </Tab>
      </Tabs>
    </div>
  );
}

export default App;
