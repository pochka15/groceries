import React from "react";
import SelectSearch from "react-select-search";
import { findMatchingIngredients } from "../../api/ingredientsApi";

function IngredientsSearchBar({ onChange, inputRef, searchbarValue }) {
  function searchIngredients(query) {
    return new Promise((resolve, reject) => {
      if (query.length === 0) resolve([]);
      else
        findMatchingIngredients(query)
          .then((ingredients) => {
            resolve(ingredients.map((it) => ({ name: it.name, value: it.id })));
          })
          .catch(reject);
    });
  }

  return (
    <SelectSearch
      options={[]}
      onChange={onChange}
      getOptions={searchIngredients}
      search
      ref={inputRef}
      value={searchbarValue}
      autoComplete="on"
      placeholder={"Ingredient"}
    />
  );
}

export default IngredientsSearchBar;
