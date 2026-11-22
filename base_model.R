

td_recipe = recipe(drive_td ~ down + ydstogo,
                   data = train)

td_model = logistic_reg() |>
  set_engine("glm") |>
  set_mode("classification")

td_workflow = workflow() |>
  add_recipe(td_recipe) |>
  add_model(td_model)

td_fit = fit(td_workflow,train)

td_prob = predict(td_fit,
                  test,
                  type="prob")

predicted_class = predict(td_fit,
                          test,
                          type = "class")

td_results = bind_cols(
  test,
  td_prob,
  predicted_class)
