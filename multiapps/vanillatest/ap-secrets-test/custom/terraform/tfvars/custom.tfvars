enable_http=true
### Windows Encryption ###
encryption_at_host_enabled = true

vm_lock_enabled = false

performance_counter = {
  streams                       = ["Microsoft-Perf"]
  sampling_frequency_in_seconds = 60
  counter_specifiers = [
    "\\Processor Information(_Total)\\% Processor Time",
    "\\Processor Information(_Total)\\% Privileged Time",
    "\\Processor Information(_Total)\\% User Time",
    "\\Processor Information(_Total)\\Processor Frequency",
    "\\System\\Processes",
    "\\Process(_Total)\\Thread Count",
    "\\Process(_Total)\\Handle Count",
    "\\System\\System Up Time",
    "\\System\\Context Switches/sec",
    "\\System\\Processor Queue Length",
    "\\Memory\\% Committed Bytes In Use",
    "\\Memory\\Available Bytes",
    "\\Memory\\Committed Bytes",
    "\\Memory\\Cache Byts/sec",
    "\\Process(_Total)\\Working Set",
    "\\Process(_Total)\\Working Set - Private",
    "\\LogicalDisk(_Total)es",
    "\\Memory\\Pool Paged Bytes",
    "\\Memory\\Pool Nonpaged Bytes",
    "\\Memory\\Pages/sec",
    "\\Memory\\Page Fault\\% Disk Time",
    "\\LogicalDisk(_Total)\\% Disk Read Time",
    "\\LogicalDisk(_Total)\\% Disk Write Time",
    "\\LogicalDisk(_Total)\\% Idle Time",
    "\\LogicalDisk(_Total)\\Disk Bytes/sec",
    "\\LogicalDisk(_Total)\\Disk Read Bytes/sec",
    "\\LogicalDisk(_Total)\\Disk Write Bytes/sec",
    "\\LogicalDisk(_Total)\\Disk Transfers/sec",
    "\\LogicalDisk(_Total)\\Disk Reads/sec",
    "\\LogicalDisk(_Total)\\Disk Writes/sec",
    "\\LogicalDisk(_Total)\\Avg. Disk sec/Transfer",
    "\\LogicalDisk(_Total)\\Avg. Disk sec/Read",
    "\\LogicalDisk(_Total)\\Avg. Disk sec/Write",
    "\\LogicalDisk(_Total)\\Avg. Disk Queue Length",
    "\\LogicalDisk(_Total)\\Avg. Disk Read Queue Length",
    "\\LogicalDisk(_Total)\\Avg. Disk Write Queue Length",
    "\\LogicalDisk(_Total)\\% Free Space",
    "\\LogicalDisk(_Total)\\Free Megabytes",
    "\\Network Interface(*)\\Bytes Total/sec",
    "\\Network Interface(*)\\Bytes Sent/sec",
    "\\Network Interface(*)\\Bytes Received/sec",
    "\\Network Interface(*)\\Packets/sec",
    "\\Network Interface(*)\\Packets Sent/sec",
    "\\Network Interface(*)\\Packets Received/sec",
    "\\Network Interface(*)\\Packets Outbound Errors",
    "\\Network Interface(*)\\Packets Received Errors"
  ]
  name = "perfCounterDataSource"
}

windows_event_log = {
  streams = ["Microsoft-Event"]
  x_path_queries = [
    "Application!*[System[(Level=1 or Level=2 or Level=3 or Level=4 or Level=0 or Level=5)]]",
    "Security!*[System[(band(Keywords,13510798882111488))]]",
    "System!*[System[(Level=1 or Level=2 or Level=3 or Level=4 or Level=0 or Level=5)]]"
  ]
  name = "eventLogsDataSource"
}

public_network_access_enabled = true
app_names = ["aguacate", "guacamol", "guacd", "pepinillos", "alfredo"]
