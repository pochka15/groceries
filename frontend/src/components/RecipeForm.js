import React, { useEffect } from "react";
import { Controller, useFieldArray, useForm } from "react-hook-form";
import Button from "react-bootstrap/Button";
import { Alert, Form, Table } from "react-bootstrap";
import { nanoid } from "nanoid";
import IngredientsSearchBar from "./searchbars/IngredientsSearchBar";
import { saveRecipe } from "../api/recipesApi";

function Entry(ingredientId = -1, amount = 0, unit = "гр", note = "") {
  return {
    ingredientId,
    amount,
    unit,
    note,
    id: nanoid(),
  };
}

function RecipeForm() {
  const {
    control,
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();
  const { fields, append, remove } = useFieldArray({
    control,
    name: "entries",
  });

  const onSubmit = async (data) => {
    const recipe = {
      name: data.name,
      entries: data.entries.map((entry) => {
        return {
          amount: entry.amount,
          ingredientId: entry.ingredientId,
          note: entry.note,
          unit: entry.unit,
        };
      }),
    };
    console.log(await saveRecipe(recipe));
  };

  useEffect(() => {
    append([Entry(-1, 200, "гр", "")]);
  }, [append]);

  return (
    <div>
      <Form onSubmit={handleSubmit(onSubmit)}>
        <Form.Group controlId={"name"}>
          <Form.Label>Recipe name: </Form.Label>
          <Form.Control
            as="input"
            {...register("name", { required: true })}
            defaultValue={""}
          />
          <div>
            {errors.name && (
              <Alert variant={"danger"}>Enter the recipe name</Alert>
            )}
          </div>
        </Form.Group>
        <Form.Group>
          <Button variant="primary" type="submit">
            Submit
          </Button>
        </Form.Group>
        <Form.Group>
          <Table striped bordered hover>
            <thead>
              <tr>
                <th>Name</th>
                <th>Amount</th>
                <th>Unit</th>
                <th>Note</th>
                <th>Remove ingredient</th>
              </tr>
            </thead>
            <tbody>
              {fields.map((entry, index) => (
                <tr key={entry.id}>
                  <td>
                    <Controller
                      control={control}
                      name={`entries.${index}.ingredientId`}
                      defaultValue={-1}
                      render={({ field: { onChange, value, ref } }) => (
                        <IngredientsSearchBar
                          inputRef={ref}
                          searchbarValue={value}
                          onChange={onChange}
                        />
                      )}
                    />
                  </td>
                  <td>
                    <Form.Control
                      placeholder={"amount"}
                      type={"input"}
                      {...register(`entries.${index}.amount`)}
                      defaultValue={entry.amount}
                    />
                  </td>
                  <td>
                    <Form.Control
                      placeholder={"unit"}
                      type={"input"}
                      {...register(`entries.${index}.unit`)}
                      defaultValue={entry.unit}
                    />
                  </td>
                  <td>
                    <Form.Control
                      placeholder={"note"}
                      type={"input"}
                      {...register(`entries.${index}.note`)}
                      defaultValue={entry.note}
                    />
                  </td>
                  <td>
                    <Button onClick={() => remove(index)} variant="danger">
                      X
                    </Button>
                  </td>
                </tr>
              ))}
            </tbody>
          </Table>
        </Form.Group>
        <Form.Group>
          <Button onClick={() => append(Entry())} variant="primary">
            Add ingredient entry
          </Button>
        </Form.Group>
      </Form>
    </div>
  );
}

export default RecipeForm;