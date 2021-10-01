import React, { useState } from "react";
import RecipesSearchBar from "./searchbars/RecipesSearchBar";
import { Controller, useForm } from "react-hook-form";
import { Container, Form, Row, Table } from "react-bootstrap";
import Button from "react-bootstrap/Button";
import { generateGroceries as apiGenerateGroceries } from "../api/groceriesApi";
import { groupBy } from "../utils/mapUtils";

function Groceries() {
  const [recipes, setRecipes] = useState([]);
  const [groupedGroceries, setGroupedGroceries] = useState(new Map());
  const { control, handleSubmit } = useForm();

  function addRecipe(recipe) {
    setRecipes([...recipes, recipe]);
  }

  function removeRecipe(recipe) {
    return setRecipes(recipes.filter((it) => it.id !== recipe.id));
  }

  function generateGroceries() {
    if (recipes.length) {
      apiGenerateGroceries(recipes.map((it) => it.id)).then((groceries) => {
        setGroupedGroceries(
          groupBy(groceries, (entry) => entry.ingredient.category)
        );
      });
    }
  }

  function parseIdNadRecipeName(idAndRecipeName) {
    const spaceOccurrence = idAndRecipeName.indexOf(" ");
    const id = idAndRecipeName.substr(0, spaceOccurrence);
    const name = idAndRecipeName.substr(spaceOccurrence + 1);
    return { id: parseInt(id), name };
  }

  //TODO(@pochka15): refactor
  return (
    <div>
      <Form
        onSubmit={handleSubmit((data) =>
          addRecipe(parseIdNadRecipeName(data.idAndRecipeName))
        )}
      >
        <Form.Group controlId="recipe">
          <Form.Label>Category</Form.Label>
          <Controller
            control={control}
            name="idAndRecipeName"
            defaultValue={"0 RecipeName"}
            render={({ field: { onChange, value, ref } }) => (
              <RecipesSearchBar
                inputRef={ref}
                searchbarValue={value}
                onChange={onChange}
              />
            )}
          />
        </Form.Group>
        <Button variant="primary" type="submit">
          Add recipe
        </Button>
      </Form>

      <div style={{ paddingTop: "25px" }}>
        <Table striped bordered hover>
          <thead>
            <tr>
              <th>Recipe</th>
              <th>Remove</th>
            </tr>
          </thead>
          <tbody>
            {recipes.map((it) => (
              <tr key={it.id}>
                <td>{it.name}</td>
                <td>
                  <Button variant="danger" onClick={() => removeRecipe(it)}>
                    X
                  </Button>
                </td>
              </tr>
            ))}
          </tbody>
        </Table>
      </div>

      <Button variant="primary" onClick={generateGroceries}>
        Generate groceries
      </Button>

      {groupedGroceries.size > 0 && (
        <Container>
          {Array.from(groupedGroceries).map(([category, entries]) => (
            <div key={category} style={{ paddingTop: "25px" }}>
              <Row>
                <h1>{category}</h1>
              </Row>
              <Row>
                <Table striped bordered hover>
                  <thead>
                    <tr>
                      <th>Ingredient</th>
                      <th>Amount</th>
                      <th>Unit</th>
                      <th>Note</th>
                      <th>Original recipes</th>
                    </tr>
                  </thead>
                  <tbody>
                    {entries
                      .sort((entry) => entry.ingredient.name)
                      .map((entry) => (
                        <tr key={entry.ingredient.name + entry.unit}>
                          <td>{entry.ingredient.name}</td>
                          <td>{entry.amount}</td>
                          <td>{entry.unit}</td>
                          <td>{entry.note}</td>
                          <td>{entry.originalRecipes.join(", ")}</td>
                        </tr>
                      ))}
                  </tbody>
                </Table>
              </Row>
            </div>
          ))}
        </Container>
      )}
    </div>
  );
}

export default Groceries;
