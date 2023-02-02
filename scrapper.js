const dotenv = require("dotenv");
dotenv.config();

require("geckodriver");
const swd = require("selenium-webdriver");
const driver = new swd.Builder().forBrowser(swd.Browser.FIREFOX).build();
const Opentab = driver.get("https://workflow.iitm.ac.in/");

Opentab.then(() => driver.manage().setTimeouts({ implicit: 10000 }))
  .then(() =>
    driver.findElement(
      swd.By.xpath(
        "/html/body/div[2]/div/div/div[3]/div/div[1]/div[1]/div[3]/div[2]/div[1]/a"
      )
    )
  )
  .then((element) => element.click())
  .then(() =>
    driver
      .getAllWindowHandles()
      .then((array) => array[1])
      .then((res) => driver.switchTo().window(res))
  )
  .then(() => driver.findElement(swd.By.xpath('//*[@id="txtUserName"]')))
  .then((user) => user.sendKeys(process.env.NAME))
  .then(() => {
    for (var i = 0; i < 100000000; i++);
  })
  .then(() => driver.findElement(swd.By.xpath('//*[@id="txtPassword"]')))
  .then((pwd) => pwd.sendKeys(process.env.PWD))
  .then(() => driver.findElement(swd.By.xpath('//*[@id="Login"]')))
  .then((login) => login.click())
  .then(() => {
    for (var i = 0; i < 100000000; i++);
  })
  .then(() =>
    driver.findElement(
      swd.By.xpath(
        "/html/body/form/div[6]/div[2]/div[3]/div[1]/div/div[2]/div/div/table/tbody/tr/td/div/table/tbody"
      )
    )
  )
  .then((table) => table.findElements(swd.By.css("nobr")))
  .then(async (rows) => {
    const promises = rows.map(async (row) => {
      const data = await row.getText();
      return data.trim();
    });
    const det = await Promise.all(promises);
    return det;
  })
  .then((data) => {
    for (let i = 0; i < data.length; i++) {
      console.log(data[i]);
      if ((i + 1) % 5 === 0) {
        console.log("\n\n");
      }
    }
    return data;
  })
  .then(() => driver.close())
  .then(() =>
    driver
      .getAllWindowHandles()
      .then((array) => array[0])
      .then((res) => driver.switchTo().window(res))
  )
  .then(() => driver.close())
  .then(() => {
    console.log("scrapped");
    setTimeout(() => process.exit(0), 2000);
  })
  .catch((err) => {
    driver.close();
    console.log(err);
    console.log("the automation was unsuccessful");
    setTimeout(() => process.exit(1), 2000);
  });
