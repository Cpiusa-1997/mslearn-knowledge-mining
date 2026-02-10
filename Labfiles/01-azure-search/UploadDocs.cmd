@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=azurestorageacct2026 
set azure_storage_account=azurestorageacct2026
set azure_storage_key=Jbvcr9MJtxGwbyXEsmacxMzDnz+wlgMNmwW/pWJCqMQlnYnbRGanau7U3NRof27x6mB+QalVgo3K+AStMTyn+g==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
