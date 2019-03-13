
describe('Monkey testing with gremlins ', function () {

    it('it should not raise any error', function () {
        browser.url('/');

        browser.switchTo().frame(element(by.tagName('iframe')).getWebElement());

        browser.timeoutsAsyncScript(60000);
        browser.executeAsync(loadScript);

        browser.timeoutsAsyncScript(60000);
        browser.executeAsync(unleashGremlins, 50000);
    });

    afterAll(function () {
        browser.log('browser').value.forEach(function (log) {
            browser.logger.info(log.message.split(' ')[2]);
        });
    });

});
