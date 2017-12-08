# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#   https://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Function Export-EdgeSharedFlow {
    <#
    .SYNOPSIS
        Export a sharedflow from Apigee Edge, into a zip file.

    .DESCRIPTION
        Export a sharedflow from Apigee Edge, into a zip file.

    .PARAMETER Name
        Required. The name of the sharedflow to export.

    .PARAMETER Revision
        Required. The revision of the sharedflow to export.

    .PARAMETER Dest
        Optional. The name of the destination file, which will be a ZIP bundle.
        By default the zip file gets a name derived from the name of the sharedflow, the
        revision, and the time of export.

    .PARAMETER Org
        Optional. The Apigee Edge organization. The default is to use the value from Set-EdgeConnection.

    .EXAMPLE
        Export-EdgeSharedFlow -Name log-to-splunk -Revision 4 -Dest sf-bundle.zip

    .EXAMPLE
        $filename = $( Export-EdgeSharedFlow -Name log-to-splunk -Revision 4 )

    .FUNCTIONALITY
        ApigeeEdge
    #>

    [cmdletbinding()]
    param(
        [Parameter(Mandatory=$True)][string]$Name,
        [Parameter(Mandatory=$True)][string]$Revision,
        [string]$Dest,
        [string]$Org
    )

    if ($PSBoundParameters['Debug']) {
        $DebugPreference = 'Continue'
    }
    if (!$PSBoundParameters['Name']) {
      throw [System.ArgumentNullException] "Name", "You must specify the -Name option."
    }
    if (!$PSBoundParameters['Revision']) {
      throw [System.ArgumentNullException] "Revision", "You must specify the -Revision option."
    }
    if (!$PSBoundParameters['Dest']) {
        $tstmp = [System.DateTime]::Now.ToString('yyyyMMdd-HHmmss')
        $Dest = "sharedflow-${Name}-r${Revision}-${tstmp}.zip"
    }
    if( ! $PSBoundParameters.ContainsKey('Org')) {
      if( ! $MyInvocation.MyCommand.Module.PrivateData.Connection['Org']) {
        throw [System.ArgumentNullException] 'Org', "use the -Org parameter to specify the organization."
      }
      else {
        $Org = $MyInvocation.MyCommand.Module.PrivateData.Connection['Org']
      }
    }

    Export-EdgeAsset -Name $Name -Revision $Revision -Dest $Dest -Org $Org -UriPathElement "apis"
}
