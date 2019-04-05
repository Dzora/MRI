<?xml version="1.0" encoding="UTF-8" ?>
<Package name="Assignment_1" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
        <BehaviorDescription name="behavior" src="tasks/age" xar="behavior.xar" />
        <BehaviorDescription name="behavior" src="tasks/displayCategories" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
        <Dialog name="MainDialog" src="MainDialog/MainDialog.dlg" />
    </Dialogs>
    <Resources>
        <File name="soda" src="html/images/soda.jpeg" />
        <File name="candy" src="html/images/candy.jpeg" />
        <File name="cigarettes" src="html/images/cigarettes.jpeg" />
        <File name="index" src="html/index.html" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
        <Topic name="MainDialog_enu" src="MainDialog/MainDialog_enu.top" topicName="MainDialog" language="en_US" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
    </Translations>
</Package>
