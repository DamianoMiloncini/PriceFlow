<!-- Display a single recipe -->
<h1><?php echo $data['recipe']->title; ?></h1>
<p><?php echo $data['recipe']->content; ?></p>
<p>Duration: <?php echo $data['recipe']->duration; ?></p>
<p>Created on: <?php echo $data['recipe']->date_created; ?></p>
<p>Privacy Status: <?php echo $data['recipe']->privacy_status; ?></p>

<!-- Links for updating and deleting the recipe -->
<a href="/recipe/update/<?php echo $data['recipe']->recipe_id; ?>">Update Recipe</a>
<a href="/recipe/delete/<?php echo $data['recipe']->recipe_id; ?>">Delete Recipe</a>
