import React from 'react';
import '../scss/_recipeContainer.scss';

import RecipeEntry from '../../client/components/RecipeEntry.js';

const RecipeContainer = (props) => {
  let childRecipes;
  if (props.recipes) {
    childRecipes = <p>No history available for this recipe.</p>;
  } else {
    childRecipes = props.recipes.map((recipe) => <RecipeEntry recipe={recipe} />);
  }
  return (
    <div className="recipe-container">
      <h2>{props.type}</h2>
      {childRecipes}
    </div>
  );
};

export default RecipeContainer;
