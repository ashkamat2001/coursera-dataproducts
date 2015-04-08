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
       p("This application computes the simple or compound interest as asked for by the end user, for the deposit amount, interest rate and term selected by the end user."),
       p("Default input values are populated in the side bar and the following values in the main panel change reactively as the input values change in the side bar"),
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
       p("However, the following interest value changes only when you click the Compute Interest button in the sidebar. It will not change reactively as input values change"),
       p('Interest Computed :'),
       verbatimTextOutput("interest")
    )
  )
)