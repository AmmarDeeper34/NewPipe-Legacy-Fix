.class public final synthetic Lj$/nio/file/spi/c;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Lj$/nio/file/spi/d;


# direct methods
.method public synthetic constructor <init>(Lj$/nio/file/spi/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    iput-object p1, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    return-void
.end method


# virtual methods
.method public final synthetic checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 7

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    goto :goto_2

    .line 0
    :cond_0
    array-length v2, p2

    new-array v3, v2, [Lj$/nio/file/a;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p2, v4

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    .line 0
    :cond_1
    sget-object v6, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    if-ne v5, v6, :cond_2

    sget-object v5, Lj$/nio/file/a;->READ:Lj$/nio/file/a;

    goto :goto_1

    :cond_2
    sget-object v6, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    if-ne v5, v6, :cond_3

    sget-object v5, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    goto :goto_1

    :cond_3
    sget-object v5, Lj$/nio/file/a;->EXECUTE:Lj$/nio/file/a;

    .line 0
    :goto_1
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 0
    :goto_2
    invoke-virtual {v0, p1, v1}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    return-void
.end method

.method public final synthetic copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 5

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 0
    :cond_0
    array-length v1, p3

    new-array v2, v1, [Lj$/nio/file/CopyOption;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    invoke-static {v4}, Lj$/nio/file/b;->a(Ljava/nio/file/CopyOption;)Lj$/nio/file/CopyOption;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v2

    .line 0
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->b(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    return-void
.end method

.method public final synthetic createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->M([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public final synthetic createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->d(Lj$/nio/file/Path;Lj$/nio/file/Path;)V

    return-void
.end method

.method public final synthetic createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->M([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->e(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    return-void
.end method

.method public final synthetic delete(Ljava/nio/file/Path;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->f(Lj$/nio/file/Path;)V

    return-void
.end method

.method public final synthetic deleteIfExists(Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->g(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    instance-of v1, p1, Lj$/nio/file/spi/c;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/file/spi/c;

    iget-object p1, p1, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->v(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->K([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->h(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/n;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 0
    :cond_0
    instance-of p2, p1, Lj$/nio/file/attribute/l;

    if-eqz p2, :cond_1

    check-cast p1, Lj$/nio/file/attribute/l;

    iget-object p1, p1, Lj$/nio/file/attribute/l;->a:Ljava/nio/file/attribute/FileAttributeView;

    return-object p1

    :cond_1
    instance-of p2, p1, Lj$/nio/file/attribute/d;

    if-eqz p2, :cond_5

    check-cast p1, Lj$/nio/file/attribute/d;

    .line 0
    instance-of p2, p1, Lj$/nio/file/attribute/b;

    if-eqz p2, :cond_2

    check-cast p1, Lj$/nio/file/attribute/b;

    iget-object p1, p1, Lj$/nio/file/attribute/b;->a:Ljava/nio/file/attribute/BasicFileAttributeView;

    return-object p1

    :cond_2
    instance-of p2, p1, Lj$/nio/file/attribute/g;

    if-eqz p2, :cond_3

    check-cast p1, Lj$/nio/file/attribute/g;

    .line 0
    iget-object p1, p1, Lj$/nio/file/attribute/g;->a:Ljava/nio/file/attribute/DosFileAttributeView;

    return-object p1

    .line 0
    :cond_3
    instance-of p2, p1, Lj$/nio/file/attribute/t;

    if-eqz p2, :cond_4

    check-cast p1, Lj$/nio/file/attribute/t;

    .line 0
    iget-object p1, p1, Lj$/nio/file/attribute/t;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p1

    .line 0
    :cond_4
    new-instance p2, Lj$/nio/file/attribute/c;

    invoke-direct {p2, p1}, Lj$/nio/file/attribute/c;-><init>(Lj$/nio/file/attribute/d;)V

    return-object p2

    .line 0
    :cond_5
    instance-of p2, p1, Lj$/nio/file/attribute/q;

    if-eqz p2, :cond_9

    check-cast p1, Lj$/nio/file/attribute/q;

    .line 0
    instance-of p2, p1, Lj$/nio/file/attribute/o;

    if-eqz p2, :cond_6

    check-cast p1, Lj$/nio/file/attribute/o;

    iget-object p1, p1, Lj$/nio/file/attribute/o;->a:Ljava/nio/file/attribute/FileOwnerAttributeView;

    return-object p1

    :cond_6
    instance-of p2, p1, Lj$/nio/file/attribute/a;

    if-eqz p2, :cond_7

    check-cast p1, Lj$/nio/file/attribute/a;

    .line 0
    iget-object p1, p1, Lj$/nio/file/attribute/a;->a:Ljava/nio/file/attribute/AclFileAttributeView;

    return-object p1

    .line 0
    :cond_7
    instance-of p2, p1, Lj$/nio/file/attribute/t;

    if-eqz p2, :cond_8

    check-cast p1, Lj$/nio/file/attribute/t;

    .line 0
    iget-object p1, p1, Lj$/nio/file/attribute/t;->a:Ljava/nio/file/attribute/PosixFileAttributeView;

    return-object p1

    .line 0
    :cond_8
    new-instance p2, Lj$/nio/file/attribute/p;

    invoke-direct {p2, p1}, Lj$/nio/file/attribute/p;-><init>(Lj$/nio/file/attribute/q;)V

    return-object p2

    .line 0
    :cond_9
    instance-of p2, p1, Lj$/nio/file/attribute/w;

    if-eqz p2, :cond_a

    check-cast p1, Lj$/nio/file/attribute/w;

    .line 0
    iget-object p1, p1, Lj$/nio/file/attribute/w;->a:Ljava/nio/file/attribute/UserDefinedFileAttributeView;

    return-object p1

    .line 0
    :cond_a
    new-instance p2, Lj$/nio/file/attribute/m;

    invoke-direct {p2, p1}, Lj$/nio/file/attribute/m;-><init>(Lj$/nio/file/attribute/n;)V

    return-object p2
.end method

.method public final synthetic getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->i(Lj$/nio/file/Path;)Lj$/nio/file/d;

    move-result-object p1

    sget v0, Lj$/nio/file/e;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 0
    :cond_0
    iget-object p1, p1, Lj$/nio/file/d;->a:Ljava/nio/file/FileStore;

    return-object p1
.end method

.method public final synthetic getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->j(Ljava/net/URI;)Lj$/nio/file/h;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/g;->f(Lj$/nio/file/h;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->k(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/s;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-virtual {v0}, Lj$/nio/file/spi/d;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic isHidden(Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->m(Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public final synthetic isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->n(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public final synthetic move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 5

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 0
    :cond_0
    array-length v1, p3

    new-array v2, v1, [Lj$/nio/file/CopyOption;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    invoke-static {v4}, Lj$/nio/file/b;->a(Ljava/nio/file/CopyOption;)Lj$/nio/file/CopyOption;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p3, v2

    .line 0
    :goto_1
    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->o(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    return-void
.end method

.method public final synthetic newAsynchronousFileChannel(Ljava/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/AsynchronousFileChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->z(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p4}, Lj$/com/android/tools/r8/a;->M([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lj$/nio/file/spi/d;->p(Lj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/channels/a;

    move-result-object p1

    sget p2, Lj$/nio/channels/b;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 0
    :cond_0
    iget-object p1, p1, Lj$/nio/channels/a;->a:Ljava/nio/channels/AsynchronousFileChannel;

    return-object p1
.end method

.method public final synthetic newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->z(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->M([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->q(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1
.end method

.method public final newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 3

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    .line 29
    new-instance v1, Lj$/desugar/sun/nio/fs/g;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lj$/desugar/sun/nio/fs/g;-><init>(ILjava/lang/Object;)V

    .line 0
    invoke-virtual {v0, p1, v1}, Lj$/nio/file/spi/d;->r(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    .line 24
    new-instance p2, Lj$/nio/file/u;

    invoke-direct {p2, p1}, Lj$/nio/file/u;-><init>(Ljava/nio/file/DirectoryStream;)V

    return-object p2
.end method

.method public final synthetic newFileChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->z(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->M([Ljava/nio/file/attribute/FileAttribute;)[Lj$/nio/file/attribute/FileAttribute;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->s(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->u(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/h;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/g;->f(Lj$/nio/file/h;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newFileSystem(Ljava/nio/file/Path;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->t(Lj$/nio/file/Path;Ljava/util/Map;)Lj$/nio/file/h;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/g;->f(Lj$/nio/file/h;)Ljava/nio/file/FileSystem;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 5

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 0
    :cond_0
    array-length v1, p2

    new-array v2, v1, [Lj$/nio/file/p;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    invoke-static {v4}, Lj$/nio/file/n;->a(Ljava/nio/file/OpenOption;)Lj$/nio/file/p;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v2

    .line 0
    :goto_1
    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->v(Lj$/nio/file/Path;[Lj$/nio/file/p;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 5

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    .line 0
    :cond_0
    array-length v1, p2

    new-array v2, v1, [Lj$/nio/file/p;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    invoke-static {v4}, Lj$/nio/file/n;->a(Ljava/nio/file/OpenOption;)Lj$/nio/file/p;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object p2, v2

    .line 0
    :goto_1
    invoke-virtual {v0, p1, p2}, Lj$/nio/file/spi/d;->w(Lj$/nio/file/Path;[Lj$/nio/file/p;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p2}, Lj$/com/android/tools/r8/a;->w(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->K([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->x(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/attribute/f;->a(Lj$/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->K([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lj$/nio/file/spi/d;->y(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lj$/com/android/tools/r8/a;->x(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/nio/file/spi/d;->z(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/s;->k(Lj$/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    invoke-static {p1}, Lj$/nio/file/r;->k(Ljava/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p1

    invoke-static {p3}, Lj$/com/android/tools/r8/a;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p4}, Lj$/com/android/tools/r8/a;->K([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lj$/nio/file/spi/d;->A(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V

    return-void
.end method
