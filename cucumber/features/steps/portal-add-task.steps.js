const {expect} = require('chai');
const {Given, When, Then} = require('cucumber');
const puppeteer = require('puppeteer');
const pathScreenShots = './screenshots/add-task';

global.testContext = global.testContext || {};

Given('I am authenticated on the site {string} with my credentials,  login : {string}  and password: {string}',
    {timeout: 20 * 1000}, async (portalUrl, userLogin, userPassword) => {
        const width = 1280;
        const height = 1200;
        global.testContext.screenshotPath = `${pathScreenShots}-${new Date().getTime()}`;
        global.testContext.browser = await puppeteer.launch({
            headless: false,
            launch: {},
            browserContext: 'default',
            exitOnPageError: true,
            args: [
                '--no-sandbox',
                '--disable-setuid-sandbox',
                '--disable-background-timer-throttling',
                '--disable-backgrounding-occluded-windows',
                '--disable-renderer-backgrounding',
                `--window-size=${width},${height}`
            ]
        });
        global.testContext.page = await global.global.testContext.browser.newPage();
        await global.testContext.page.goto(portalUrl);
        await global.testContext.page.setViewport({width: width, height: height});
        await global.testContext.page.waitForSelector("body");
        await expect(await global.testContext.page.waitForSelector(".login_singup_form"));
        await global.testContext.page.type('.login_singup_form .input_email', userLogin);
        await global.testContext.page.type('.login_singup_form .input_password', userPassword);
        await global.testContext.page.click('.login_singup_form .submit_btn');
        await global.testContext.page.waitForSelector("body");
        await global.testContext.page.screenshot({path: `${global.testContext.screenshotPath}-step0.png`});
    });

When('I click in add task button',
    {timeout: 20 * 1000}, async () => {
        await expect(await global.testContext.page.waitForSelector("#quick_add_task_holder"));
        await global.testContext.page.click('.agenda_view .agenda_add_task');
        await global.testContext.page.click('#quick_add_task_holder');
        await global.testContext.page.screenshot({path: `${global.testContext.screenshotPath}-step1.png`});
        await global.testContext.browser.close();
    });