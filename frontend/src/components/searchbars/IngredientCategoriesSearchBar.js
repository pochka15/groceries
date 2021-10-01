import React from 'react';
import {findMatchingCategories} from "../../api/ingredientsApi";
import SelectSearch from "react-select-search";

function IngredientCategoriesSearchBar({ onChange, inputRef, searchbarValue }) {
  function searchCategories(query) {
    return new Promise((resolve, reject) => {
      if (query.length === 0) resolve([]);
      else
        findMatchingCategories(query)
          .then((categories) => {
            resolve(categories.map((it) => ({ name: it.name, value: it.id })));
          })
          .catch(reject);
    });
  }

  return (
    <SelectSearch
      options={[]}
      onChange={onChange}
      getOptions={searchCategories}
      search
      ref={inputRef}
      value={searchbarValue}
      autoComplete="on"
      placeholder={"Category"}
    />
  );
}

export default IngredientCategoriesSearchBar;