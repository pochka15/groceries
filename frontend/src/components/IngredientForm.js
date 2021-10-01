import React from "react";
import { Alert, Form } from "react-bootstrap";
import Button from "react-bootstrap/Button";
import { Controller, useForm } from "react-hook-form";
import IngredientCategoriesSearchBar from "./searchbars/IngredientCategoriesSearchBar";
import { saveIngredient as apiSaveIngredient } from "../api/ingredientsApi";

function IngredientForm() {
  const {
    control,
    register,
    handleSubmit,
    formState: { errors },
  } = useForm();

  function saveIngredient(ingredient) {
    apiSaveIngredient(ingredient).then((data) =>
      console.log(
        `Saved: ${JSON.stringify({
          ...data,
          categoryId: ingredient.categoryId,
        })}`
      )
    );
  }

  return (
    <div>
      <Form
        onSubmit={handleSubmit(saveIngredient)}
      >
        <Form.Group controlId="name">
          <Form.Label>Ingredient name</Form.Label>
          <Form.Control
            as="input"
            {...register("name", { required: true })}
            defaultValue={""}
          />
          <div>
            {errors.name && (
              <Alert variant={"danger"}>Enter the dish name</Alert>
            )}
          </div>
        </Form.Group>
        <Form.Group controlId="categoryId">
          <Form.Label>Category</Form.Label>
          <Controller
            control={control}
            name="categoryId"
            defaultValue={-1}
            render={({ field: { onChange, value, ref } }) => (
              <IngredientCategoriesSearchBar
                inputRef={ref}
                searchbarValue={value}
                onChange={onChange}
              />
            )}
          />
        </Form.Group>
        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    </div>
  );
}

export default IngredientForm;