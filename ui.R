shinyUI(pageWithSidebar(
    headerPanel("Interest Computation"),
    sidebarPanel(
       h3('Enter the following Information'),
       textInput('iName', "Your name : ", "Kim" ),
       numericInput('iPrincipal', 'Deposit Amount : ', 1000, min=100, max=1000000, step=10),
       radioButtons("iIntType","Interest Type : ", c("Simple"="simple", "Compound"="compound"), "compound"),
       numericInput('iTerm', 'Term in years : ', 1, min=1, max=10, step=1),
       sliderInput('iRate', "Interest Rate : ", 3, min=1, max=20, step=0.5),
       #submitButton('Compute Interest')
       actionButton("btnCompInt", 'Compute Interest')
    ),
  
    mainPanel(
       p('Hi :'),
       verbatimTextOutput("oName"),
       p('Deposit Amount :'),
       verbatimTextOutput("oPrincipal"),
       p('Term in years :'),
       verbatimTextOutput("oTerm"),
       p('Interest Rate :'),
       verbatimTextOutput("oRate"),
       p('Interest Type :'),
       verbatimTextOutput("oIntType"),
       p('Interest Computed :'),
       verbatimTextOutput("interest")
    )
  )
)