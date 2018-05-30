fhir_ig_publishing
==================

Framework for publishing FHIR Implementation Guides

This is a [FHIR](http://hl7.org/fhir) implementation guide based on the SDC
templates, and updated to support the latest version of the IG publisher.

Requirements (see IG publisher requirements):

-   JDK (Oracle Java)

-   Jekyll

How to use:

Clone or download and unzip.

-   Windows: run \_genonce.bat

-   MacOS / Linux: run the following command: java -jar
    framework\\ant\\ant-launcher.jar -buildfile framework/build.xml

If the build runs well, it will display “BUILD SUCCESSFUL” and the result will
be in the output folder. To see it, just open index.html in the output folder.

How it works / How to change:

To use with other profiles:

-   Put the conformance resources you want to use in the src/resources folder.
    Use the naming convention capabilitystatement-xxxxx.xml (or .json), where
    xxxxx can be a name under any other naming convention. For example
    capabilitystatement-ihe-mma-performer.xml.

-   Edit the file ihe_ig.xml – the ImplementationGuide resource. Simply list the
    conformance resources in the definition/resources.

    -   Currently the resources are grouped in packages, by referring to one of
        the two packages that are defined in the definition/package sections.
        Feel free to change the packages. But make sure that any packages you
        refer to in the resources are defined.
