library(gspreadr)
context("Open spreadsheet by key or url")

email <- "gspreadr@gmail.com"
passwd <- "gspreadrtester"

test_that("Login with correct/incorrect credentials", {

  expect_equal(class(login(email, passwd)), "client")
  expect_error(login(email, "wrongpasswd"), "Incorrect username or password.")
  expect_error(login("wrongemail", passwd), "Incorrect username or password.")
  
})

test_that("Return number of spreadsheets", {

  client <- login(email, passwd)
  
  expect_equal(length(list_sheets(client)), 2)
  
})

test_that("Open spreadsheet by title", {
  
  client <- login(email, passwd)
  
  ss1 <- open_sheet(client, "Gapminder")
  
  ss2 <- open_sheet(client, "Gapminder by Continent")
  
  expect_equal(class(ss1), "spreadsheet")
  expect_equal(ss1$nsheets, 1)
  expect_equal(ss1$sheet_title, "Gapminder")
  
  expect_equal(class(ss2), "spreadsheet")
  expect_equal(ss1$nsheets, 5)
  expect_equal(ss1$sheet_title, "Gapminder by Continent")
  
  expect_error(class(open_sheet(client, "Gap")), "Spreadsheet not found.")
  
})





test_that("Open spreadsheet by key returns spreadsheet object", {
  good_key <- "1WNUDoBbGsPccRkXlLqeUK9JUQNnqq2yvc9r7-cmEaZU"
  bad_key <- "1WNUDoBbGsPccRkXlLqeUK9JUQNnqq2yvc9r7-XXXXXX"
  
  expect_equal(class(open_by_key(good_key)), "spreadsheet")
  expect_error(open_by_key(bad_key), "The spreadsheet at this URL could not be found. Make sure that you have the right key.")
  
})



