<?php foreach ($data['recipes'] as $recipe) : ?>
                    <script>
                        num++;
                    </script>
                    <a style="text-decoration:none; color:black;" href='Recipe/recipeDetails/<?php echo $recipe['recipe_id'] ?>'>
                        <div class="recipe">
                            <img id="recipeImage" src="/uploads/<?php echo basename($recipe['imagePath']); ?>">
                            <div id="recipeInformation">
                                <div class="recipeHeading">
                                    <h5><?php echo $recipe['title']; ?></h5>
                                    <h6>By <?php echo $recipe['username']; ?></h6>
                                </div>
                                <h7><?php echo $recipe['date_created'] ?></h7>
                            </div>
                        </div>
                    </a>
                <?php endforeach ?>