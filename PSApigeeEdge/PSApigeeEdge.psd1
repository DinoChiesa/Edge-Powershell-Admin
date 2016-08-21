#
# Module manifest for module 'PSApigeeEdge'
#
# Generated on: 20160805-1154
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PSApigeeEdge.psm1'

# Version number of this module.
ModuleVersion = '0.2.8'

# ID used to uniquely identify this module
GUID = '73EDCAEA-0965-419D-9E47-F7DACC5C9011'

# Author of this module
Author = 'Dino Chiesa'

# Company or vendor of this module
CompanyName = 'Apigee'

# Copyright statement for this module
Copyright = '(c) 2016 Apigee Corp. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PowerShell module to use the Apigee Edge Admin API'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'PSApigeeEdge.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
FunctionsToExport = '*'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    Connection = @{
       User = ''
       MgmtUri = ''
       Org = ''
       AuthToken = ''
    }
    
    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
         Tags = @('Apigee', 'ApigeeEdge')

        # A URL to the license for this module.
         LicenseUri = 'https://github.com/DinoChiesa/Edge-Powershell-Admin/blob/master/LICENSE'

        # A URL to the main website for this project.
         ProjectUri = 'https://github.com/DinoChiesa/Edge-Powershell-Admin/'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

