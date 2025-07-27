## Web Host Requirements

=== "Windows Host"

    | Requirement | Minimum | Recommended |
    | :--- | :--- | :--- |
    | **Operating System** | Microsoft Windows 10 | Microsoft Server 2019 |
    | **Directory** | Active Directory 2008R2 Schema | Active Directory 2012 Schema |
    | **Web Server** | Self-Served Service | IIS |
    | **CPU** | 1.5Ghz Single Core | 2Ghz Dual Core |
    | **RAM (Application Only)** | 250MB | 1GB |
    | **Disk Space** | 600MB | 2GB |
    | **.NET Core** | .NET Core 8 | .NET Core 8+ |

=== "Linux Host"

    | Requirement | Minimum | Recommended |
    | :--- | :--- | :--- |
    | **Operating System** | Ubuntu/Debian/RHEL | Ubuntu Server 2022 |
    | **Directory** | Active Directory 2008R2 Schema | Active Directory 2012 Schema |
    | **Web Server** | Self-Served Service | Apache/nginx Revese-Proxy |
    | **CPU** | 1.0Ghz Single Core | 1.5Ghz Dual Core |
    | **RAM (Application Only)** | 250MB | 1GB |
    | **Disk Space** | 600MB | 2GB |
    | **.NET Core** | .NET Core 8 | .NET Core 8+ |


## Database Options

| Database Type     | Setup Required | Max recommended concurrent users |
| ----------------- | :------------: | -------------------------------: |
| Local SQLite File |       No       | <span title="SQLite is not designed for high concurrency and is best for single-user or testing purposes only.">:material-alert-circle:{ .red }1</span> |
| MSSQL Express     |      Yes       |                               10 |
| MariaDB           |      Yes       |                               20 |
| MSSQL             |      Yes       |                             2000 |
| MySQL             |      Yes       |                            20000 |

## Feature Availability


| Feature | Windows | Linux (Beta) |
| :--- | :---: | :---: |
| **Basic AD Management** | | |
| <span>User, Group, & Computer Management</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Printer Management</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Password Resets & Account Unlocks</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Modify any Active Directory attribute</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-question:{ .yellow } |
| **LAPS** | | |
| <span>Read plaintext LAPS passwords</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Read encrypted LAPS passwords</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-xmark:{ .red } |
| **Remote Computer Adminisration** | | |
| <span>Renaming</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-question:{ .yellow } |
| <span>Rebooting</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-question:{ .yellow } |
| <span>Real-time resource monitoring</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-xmark:{ .red } |
| <span>Real-time service monitoring</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-xmark:{ .red } |
| <span>Real-time session monitoring and administration</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-xmark:{ .red } |
| <span>Shared printer listing and administration</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-question:{ .yellow } |
| **Delegation and Control** | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **Custom Fields** | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **User Creation and Management** | | |
| <span>User Creation Templates</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>User Thumbnail Photos</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **Automation Engine** | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **Auditing and Security** | | |
| <span>Email notifications</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Locked Out User Monitoring and Alerting</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Failed Logon Log Collection</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-xmark:{ .red } | 
| <span>Comprehensive Internal Audit Logs</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Two-Factor Authentication (Cisco DUO)</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Two-Factor Authentication (Google Authenicator)</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **External Integrations** | | |
| <span>REST API</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Webhooks</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| **Additional Features** | | |
| <span>Active Directory Recycle Bin Access</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-check:{ .green } |
| <span>Automatic Updates</span> | :fontawesome-regular-circle-check:{ .green } | :fontawesome-regular-circle-question:{ .yellow } |

<style>
table span{
	margin-left: 2em; display: inline-block;

}
</style>