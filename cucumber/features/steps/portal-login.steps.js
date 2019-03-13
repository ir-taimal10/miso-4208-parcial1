const {expect} = require('chai');
const {Given, When, Then} = require('cucumber');
const puppeteer = require('puppeteer');

global.testContext = {};

Given('I write the url of portal {string} in  the browser', {timeout: 20 * 1000}, async (portalUrl) => {
    const width = 1280;
    const height = 1200;
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
});

When('I click in login button and i write my credentials login: {string}  and password: {string}', {timeout: 20 * 1000}, async (userLogin, userPassword) => {
    await expect(await global.testContext.page.waitForSelector(".sel_login"));
    await global.testContext.page.click(".sel_login");
    await expect(await global.testContext.page.waitForSelector(".GB_window"));


    /*const frames = await global.testContext.page.frames();
    const tryItFrame = frames.find(f => f.name() === 'GB_frame');
    console.log("ssdasdasdasd",tryItFrame );

    const button = await tryItFrame.$('.submit_btn');
    button.click();*/



    const frameNested = await global.testContext.page.frames();

console.log("nested", frameNested.length);
    const button = await frameNested.$('.submit_btn');
    await button.click();
    await global.testContext.page.screenshot({ path: 'after.png'});

    /*await global.testContext.page.type('.bz-ms-login-form input[name="username"]', userLogin);
    await global.testContext.page.type('.bz-ms-login-form input[name="password"]', userPassword);
    await global.testContext.page.click("#btnLogin");*/
});

