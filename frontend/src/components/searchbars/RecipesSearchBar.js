import React from "react";
import { findMatchingRecipes } from "../../api/recipesApi";
import SelectSearch from "react-select-search";

function RecipesSearchBar({ onChange, inputRef, searchBarValue }) {
  function findRecipes(query) {
    return new Promise((resolve, reject) => {
      if (query.length === 0) resolve([]);
      else
        findMatchingRecipes(query)
          .then((recipes) => {
            resolve(
              recipes.map((it) => ({
                name: it.name,
                value: [it.id, it.name].join(" "),
              }))
            );
          })
          .catch(reject);
    });
  }

  return (
    <SelectSearch
      options={[]}
      onChange={onChange}
      getOptions={findRecipes}
      search
      ref={inputRef}
      value={searchBarValue}
      autoComplete="on"
      placeholder={"Recipe"}
    />
  );
}

export default RecipesSearchBar;