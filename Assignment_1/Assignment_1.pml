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
        <Dialog name="soda" src="soda/soda.dlg" />
        <Dialog name="Candy" src="Candy/Candy.dlg" />
        <Dialog name="Cig" src="Cig/Cig.dlg" />
    </Dialogs>
    <Resources>
        <File name="soda" src="html/images/soda.jpeg" />
        <File name="candy" src="html/images/candy.jpeg" />
        <File name="cigarettes" src="html/images/cigarettes.jpeg" />
        <File name="index" src="html/categories.html" />
        <File name="candy" src="html/candy.html" />
        <File name="cigarettes" src="html/cigarettes.html" />
        <File name="soda" src="html/soda.html" />
        <File name="main" src="html/js/main.js" />
        <File name="cola" src="html/images/soda/cola.jpeg" />
        <File name="sprite" src="html/images/soda/sprite.jpeg" />
        <File name="troca" src="html/images/soda/troca.jpeg" />
        <File name="marlboro" src="html/images/cig/marlboro.jpeg" />
        <File name="prince" src="html/images/cig/prince.jpeg" />
        <File name="choice_sentences" src="behavior_1/Aldebaran/choice_sentences.xml" />
        <File name="ferrari" src="html/images/candy/ferrari.jpeg" />
        <File name="djungel" src="html/images/candy/djungel.jpeg" />
        <File name="shoppingcart" src="html/shoppingcart.html" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
        <Topic name="MainDialog_enu" src="MainDialog/MainDialog_enu.top" topicName="MainDialog" language="en_US" />
        <Topic name="soda_enu" src="soda/soda_enu.top" topicName="soda" language="en_US" />
        <Topic name="Candy_enu" src="Candy/Candy_enu.top" topicName="Candy" language="en_US" />
        <Topic name="Cig_enu" src="Cig/Cig_enu.top" topicName="Cig" language="en_US" />
    </Topics>
    <IgnoredPaths />
    <Translations auto-fill="en_US">
        <Translation name="translation_en_US" src="translations/translation_en_US.ts" language="en_US" />
    </Translations>
</Package>
