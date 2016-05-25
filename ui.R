shinyUI(pageWithSidebar(
  headerPanel("Let Us Perform Some Arithmetic Calculations"),
  sidebarPanel(
    helpText("Use the selector to pick your first number.", "What you select is automatically displayed in the Main panel"),
    numericInput('id1', 'First Number', 0, min = 0, max = 1000, step = 10),
    
    helpText("Use the selector to pick your second number.", "What you select is automatically displayed in the Main panel"),
    numericInput('id2', 'Second Number', 0, min = 1000, max = 3000, step = 20),

    helpText("Pick what sort of arithmetic function you will perform."
          , "What you select is automatically displayed in the Main panel"),
    radioButtons("radio1", label = h3("Arithmetic Functions"),
      choices = list("Do Nothing (Default)" = 1, "Add" = 2, "Subtract" = 3,
                     "Multiple" = 4),selected = 1),
                       
    helpText("Select the Go! Button to set the last value in the Main panel."),
    actionButton("goButton", "Go!")
  ),
  mainPanel(
    h4('Dynamically Show : Number 1 Being Selected'),
    textOutput('id1'),
    h4('Dynamically Show : Number 2 Being Selected'),
    textOutput('id2'),
    h4('Dynamically Show : Action Being Performed'),
    textOutput('text4'),
    h4('Dynamically Show : Output of Action'),
    textOutput('text5'),
    h4('Show Numbers Selected Only After Clicking Go! Button'),
    textOutput('text3')
  )
))