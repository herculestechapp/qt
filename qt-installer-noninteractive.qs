// Emacs mode hint: -*- mode: JavaScript -*-

function Controller() {
    installer.autoRejectMessageBoxes();
    installer.installationFinished.connect(function() {
        gui.clickButton(buttons.NextButton);
    })
}

Controller.prototype.WelcomePageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.CredentialsPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.IntroductionPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.TargetDirectoryPageCallback = function()
{
    gui.currentPageWidget().TargetDirectoryLineEdit.setText(installer.value("HomeDir") + "/Qt");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ComponentSelectionPageCallback = function() {
    var widget = gui.currentPageWidget();

    widget.selectAll();
    /*
    widget.deselectAll();
    widget.selectComponent("qt.55.gcc_64");
    widget.selectComponent("qt.55.qtquickcontrols");

    widget.selectComponent("qt.tools.qtcreator");
    widget.selectComponent("qt.55.qt3d");
    widget.selectComponent("qt.55.qtcanvas3d");
    widget.selectComponent("qt.55.qtlocation");
    widget.selectComponent("qt.55.qtquick1");
    widget.selectComponent("qt.55.qtscript");
    widget.selectComponent("qt.55.qtwebengine");
    widget.selectComponent("qt.extras");
    */
    // widget.deselectComponent("qt.tools.doc");
    // widget.deselectComponent("qt.tools.examples");

    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function() {
    gui.currentPageWidget().AcceptLicenseRadioButton.setChecked(true);
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback = function() {
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function() {
var checkBoxForm = gui.currentPageWidget().LaunchQtCreatorCheckBoxForm
if (checkBoxForm && checkBoxForm.launchQtCreatorCheckBox) {
    checkBoxForm.launchQtCreatorCheckBox.checked = false;
}
    gui.clickButton(buttons.FinishButton);
}
