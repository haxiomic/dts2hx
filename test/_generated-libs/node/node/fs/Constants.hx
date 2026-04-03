package node.fs;

@:jsRequire("fs", "constants") @valueModuleOnly extern class Constants {
	/**
		Constant for fs.access(). File is visible to the calling process.
	**/
	static final F_OK : Float;
	/**
		Constant for fs.access(). File can be read by the calling process.
	**/
	static final R_OK : Float;
	/**
		Constant for fs.access(). File can be written by the calling process.
	**/
	static final W_OK : Float;
	/**
		Constant for fs.access(). File can be executed by the calling process.
	**/
	static final X_OK : Float;
	/**
		Constant for fs.copyFile. Flag indicating the destination file should not be overwritten if it already exists.
	**/
	static final COPYFILE_EXCL : Float;
	/**
		Constant for fs.copyFile. copy operation will attempt to create a copy-on-write reflink.
		If the underlying platform does not support copy-on-write, then a fallback copy mechanism is used.
	**/
	static final COPYFILE_FICLONE : Float;
	/**
		Constant for fs.copyFile. Copy operation will attempt to create a copy-on-write reflink.
		If the underlying platform does not support copy-on-write, then the operation will fail with an error.
	**/
	static final COPYFILE_FICLONE_FORCE : Float;
	/**
		Constant for fs.open(). Flag indicating to open a file for read-only access.
	**/
	static final O_RDONLY : Float;
	/**
		Constant for fs.open(). Flag indicating to open a file for write-only access.
	**/
	static final O_WRONLY : Float;
	/**
		Constant for fs.open(). Flag indicating to open a file for read-write access.
	**/
	static final O_RDWR : Float;
	/**
		Constant for fs.open(). Flag indicating to create the file if it does not already exist.
	**/
	static final O_CREAT : Float;
	/**
		Constant for fs.open(). Flag indicating that opening a file should fail if the O_CREAT flag is set and the file already exists.
	**/
	static final O_EXCL : Float;
	/**
		Constant for fs.open(). Flag indicating that if path identifies a terminal device,
		opening the path shall not cause that terminal to become the controlling terminal for the process
		(if the process does not already have one).
	**/
	static final O_NOCTTY : Float;
	/**
		Constant for fs.open(). Flag indicating that if the file exists and is a regular file, and the file is opened successfully for write access, its length shall be truncated to zero.
	**/
	static final O_TRUNC : Float;
	/**
		Constant for fs.open(). Flag indicating that data will be appended to the end of the file.
	**/
	static final O_APPEND : Float;
	/**
		Constant for fs.open(). Flag indicating that the open should fail if the path is not a directory.
	**/
	static final O_DIRECTORY : Float;
	/**
		constant for fs.open().
		Flag indicating reading accesses to the file system will no longer result in
		an update to the atime information associated with the file.
		This flag is available on Linux operating systems only.
	**/
	static final O_NOATIME : Float;
	/**
		Constant for fs.open(). Flag indicating that the open should fail if the path is a symbolic link.
	**/
	static final O_NOFOLLOW : Float;
	/**
		Constant for fs.open(). Flag indicating that the file is opened for synchronous I/O.
	**/
	static final O_SYNC : Float;
	/**
		Constant for fs.open(). Flag indicating that the file is opened for synchronous I/O with write operations waiting for data integrity.
	**/
	static final O_DSYNC : Float;
	/**
		Constant for fs.open(). Flag indicating to open the symbolic link itself rather than the resource it is pointing to.
	**/
	static final O_SYMLINK : Float;
	/**
		Constant for fs.open(). When set, an attempt will be made to minimize caching effects of file I/O.
	**/
	static final O_DIRECT : Float;
	/**
		Constant for fs.open(). Flag indicating to open the file in nonblocking mode when possible.
	**/
	static final O_NONBLOCK : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. Bit mask used to extract the file type code.
	**/
	static final S_IFMT : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a regular file.
	**/
	static final S_IFREG : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a directory.
	**/
	static final S_IFDIR : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a character-oriented device file.
	**/
	static final S_IFCHR : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a block-oriented device file.
	**/
	static final S_IFBLK : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a FIFO/pipe.
	**/
	static final S_IFIFO : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a symbolic link.
	**/
	static final S_IFLNK : Float;
	/**
		Constant for fs.Stats mode property for determining a file's type. File type constant for a socket.
	**/
	static final S_IFSOCK : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by owner.
	**/
	static final S_IRWXU : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by owner.
	**/
	static final S_IRUSR : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by owner.
	**/
	static final S_IWUSR : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by owner.
	**/
	static final S_IXUSR : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by group.
	**/
	static final S_IRWXG : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by group.
	**/
	static final S_IRGRP : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by group.
	**/
	static final S_IWGRP : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by group.
	**/
	static final S_IXGRP : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable, writable and executable by others.
	**/
	static final S_IRWXO : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating readable by others.
	**/
	static final S_IROTH : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating writable by others.
	**/
	static final S_IWOTH : Float;
	/**
		Constant for fs.Stats mode property for determining access permissions for a file. File mode indicating executable by others.
	**/
	static final S_IXOTH : Float;
	/**
		When set, a memory file mapping is used to access the file. This flag
		is available on Windows operating systems only. On other operating systems,
		this flag is ignored.
	**/
	static final UV_FS_O_FILEMAP : Float;
}