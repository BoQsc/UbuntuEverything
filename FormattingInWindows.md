
C:\Users\vaida>
C:\Users\vaida>mountvol
Creates, deletes, or lists a volume mount point.

MOUNTVOL [drive:]path VolumeName
MOUNTVOL [drive:]path /D
MOUNTVOL [drive:]path /L
MOUNTVOL [drive:]path /P
MOUNTVOL /R
MOUNTVOL /N
MOUNTVOL /E
MOUNTVOL drive: /S

    path        Specifies the existing NTFS directory where the mount
                point will reside.
    VolumeName  Specifies the volume name that is the target of the mount
                point.
    /D          Removes the volume mount point from the specified directory.
    /L          Lists the mounted volume name for the specified directory.
    /P          Removes the volume mount point from the specified directory,
                dismounts the volume, and makes the volume not mountable.
                You can make the volume mountable again by creating a volume
                mount point.
    /R          Removes volume mount point directories and registry settings
                for volumes that are no longer in the system.
    /N          Disables automatic mounting of new volumes.
    /E          Re-enables automatic mounting of new volumes.
    /S          Mount the EFI System Partition on the given drive.

Possible values for VolumeName along with current mount points are:

    \\?\Volume{17618956-8a36-4686-9f6a-9ab1e3831c2d}\
        *** NO MOUNT POINTS ***

    \\?\Volume{2a32d2f6-68d1-4b7e-81ab-d5bd838649e8}\
        C:\

    \\?\Volume{4137c890-e358-45c4-b6f1-ec162431b272}\
        D:\

    \\?\Volume{89d59bea-d6a1-11e8-85fa-008cfa298998}\
        H:\

    \\?\Volume{89d59be1-d6a1-11e8-85fa-008cfa298998}\
        E:\

    \\?\Volume{89d59be5-d6a1-11e8-85fa-008cfa298998}\
        F:\

    \\?\Volume{97bd7694-b600-487f-a866-7694c80b6ead}\
        *** NO MOUNT POINTS ***

    \\?\Volume{89d59ab8-d6a1-11e8-85fa-008cfa298998}\
        G:\


C:\Users\vaida>mountvol\\?\Volume{89d59bea-d6a1-11e8-85fa-008cfa298998}\
'mountvol\\?\Volume{89d59bea-d6a1-11e8-85fa-008cfa298998}\' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\vaida>format f: /fs=fat32
Invalid parameter - /fs=fat32

C:\Users\vaida>format /
Invalid parameter - /

C:\Users\vaida>?
'?' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\vaida>format /?
Formats a disk for use with Windows.

FORMAT volume [/FS:file-system] [/V:label] [/Q] [/L[:state]] [/A:size] [/C] [/I:state] [/X] [/P:passes] [/S:state]
FORMAT volume [/V:label] [/Q] [/F:size] [/P:passes]
FORMAT volume [/V:label] [/Q] [/T:tracks /N:sectors] [/P:passes]
FORMAT volume [/V:label] [/Q] [/P:passes]
FORMAT volume [/Q]

  volume          Specifies the drive letter (followed by a colon),
                  mount point, or volume name.
  /FS:filesystem  Specifies the type of the file system (FAT, FAT32, exFAT,
                  NTFS, UDF, ReFS).
  /V:label        Specifies the volume label.
  /Q              Performs a quick format. Note that this switch overrides /P.
  /C              NTFS only: Files created on the new volume will be compressed
                  by default.
  /X              Forces the volume to dismount first if necessary.  All opened
                  handles to the volume would no longer be valid.
  /R:revision     UDF only: Forces the format to a specific UDF version
                  (1.02, 1.50, 2.00, 2.01, 2.50).  The default
                  revision is 2.01.
  /D              UDF 2.50 only: Metadata will be duplicated.
  /L[:state]      NTFS Only: Overrides the default size of file record.
                  By default, a non-tiered volume will be formatted with small
                  size file records and a tiered volume will be formatted with
                  large size file records.  /L and /L:enable forces format to
                  use large size file records and /L:disable forces format to
                  use small size file records.
  /A:size         Overrides the default allocation unit size. Default settings
                  are strongly recommended for general use.
                  ReFS supports 4096, 64K.
                  NTFS supports 512, 1024, 2048, 4096, 8192, 16K, 32K, 64K,
                  128K, 256K, 512K, 1M, 2M.
                  FAT supports 512, 1024, 2048, 4096, 8192, 16K, 32K, 64K,
                  (128K, 256K for sector size > 512 bytes).
                  FAT32 supports 512, 1024, 2048, 4096, 8192, 16K, 32K, 64K,
                  (128K, 256K for sector size > 512 bytes).
                  exFAT supports 512, 1024, 2048, 4096, 8192, 16K, 32K, 64K,
                  128K, 256K, 512K, 1M, 2M, 4M, 8M, 16M, 32M.

                  Note that the FAT and FAT32 files systems impose the
                  following restrictions on the number of clusters on a volume:

                  FAT: Number of clusters <= 65526
                  FAT32: 65526 < Number of clusters < 4177918

                  Format will immediately stop processing if it decides that
                  the above requirements cannot be met using the specified
                  cluster size.

                  NTFS compression is not supported for allocation unit sizes
                  above 4096.

  /F:size         Specifies the size of the floppy disk to format (1.44)
  /T:tracks       Specifies the number of tracks per disk side.
  /N:sectors      Specifies the number of sectors per track.
  /P:count        Zero every sector on the volume.  After that, the volume
                  will be overwritten "count" times using a different
                  random number each time.  If "count" is zero, no additional
                  overwrites are made after zeroing every sector.  This switch
                  is ignored when /Q is specified.
  /S:state        Specifies support for short filenames (enable, disable)
                  Short names are disabled by default
  /TXF:state      Specifies txf is enabled/disabled (enabled, disabled)
                  TxF is enabled by default
  /I:state        ReFS only: Specifies whether integrity should be enabled on
                  the new volume. "state" is either "enable" or "disable"
                  Integrity is enabled on storage that supports data redundancy
                  by default.
  /DAX[:state]    NTFS Only: Enable direct access storage (DAX) mode for this
                  volume.  In DAX mode, the volume is accessed via the memory
                  bus, boosting IO performance.  A volume can be formatted
                  with DAX mode only if the hardware is DAX capable.
                  State can specify "enable" or "disable".  /DAX is considered
                  as /DAX:enable.
  /LogSize[:size] NTFS Only: Specifies the size for NTFS log file in kilobytes.
                  The minimum supported size is 2MB, so specifying size smaller
                  than 2MB will result in a 2MB log file.  Zero indicates the
                  default value which generally depend on the volume size.
  /NoRepairLogs   NTFS Only: Disables NTFS repair logs.  If the flag is set
                  spotfix (i.e. chkdsk /spotfix) will not work.

C:\Users\vaida>format f: /fs=fAT32
Invalid parameter - /fs=fAT32

C:\Users\vaida>format f: /fs:fAT32
Insert new disk for drive F:
and press ENTER when ready...
The type of the file system is RAW.
The new file system is FAT32.
Verifying 50,0 MB
Initializing the File Allocation Table (FAT)...
Volume label (11 characters, ENTER for none)?
Format complete.
      46,0 MB total disk space.
      46,0 MB are available.

          512 bytes in each allocation unit.
       94 207 allocation units available on disk.

           32 bits in each FAT entry.

Volume Serial Number is BE53-683C

C:\Users\vaida>format h: /fs:fAT32
Insert new disk for drive H:
and press ENTER when ready...
The type of the file system is RAW.
The new file system is FAT32.
Verifying 7,2 GB
^Cpercent completed.
C:\Users\vaida>

C:\Users\vaida>format h: /Q /fs:fAT32
Insert new disk for drive H:
and press ENTER when ready...
The type of the file system is RAW.
The new file system is FAT32.
QuickFormatting 7,2 GB
Initializing the File Allocation Table (FAT)...
Volume label (11 characters, ENTER for none)?
Format complete.
       7,2 GB total disk space.
       7,2 GB are available.

        4 096 bytes in each allocation unit.
    1 876 986 allocation units available on disk.

           32 bits in each FAT entry.

Volume Serial Number is AEDA-1DF5

C:\Users\vaida>
