.class public final Lj$/nio/file/Files;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 0
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lj$/com/android/tools/r8/a;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 608
    sput-object v0, Lj$/nio/file/Files;->a:Ljava/util/Set;

    return-void
.end method

.method public static varargs a(Ljava/io/InputStream;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 6

    .line 3039
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 3044
    sget-object v5, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    if-ne v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    .line 3048
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "options contains \'null\'"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3050
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz v3, :cond_3

    .line 3059
    :try_start_0
    invoke-static {p1}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x0

    :goto_2
    const/4 v0, 0x2

    .line 3071
    :try_start_1
    new-array v0, v0, [Lj$/nio/file/p;

    sget-object v2, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    aput-object v2, v0, v1

    sget-object v1, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    aput-object v1, v0, v4

    .line 99
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p1, v0}, Lj$/nio/file/spi/d;->w(Lj$/nio/file/Path;[Lj$/nio/file/p;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :try_start_2
    instance-of p2, p0, Lj$/io/InputStreamRetargetInterface;

    if-eqz p2, :cond_4

    check-cast p0, Lj$/io/InputStreamRetargetInterface;

    invoke-interface {p0, p1}, Lj$/io/InputStreamRetargetInterface;->transferTo(Ljava/io/OutputStream;)J

    goto :goto_3

    :cond_4
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz p1, :cond_5

    .line 3083
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_6

    .line 3081
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p0

    :catch_1
    move-exception p0

    if-eqz p2, :cond_7

    .line 3075
    throw p2

    .line 3077
    :cond_7
    throw p0
.end method

.method public static b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;
    .locals 0

    .line 99
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object p0

    invoke-virtual {p0}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .line 741
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 688
    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lj$/nio/file/spi/d;->c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 797
    :try_start_1
    new-array v4, v1, [Lj$/nio/file/LinkOption;

    sget-object v5, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v5, v4, v2
    :try_end_1
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2239
    :try_start_2
    invoke-static {p0, v0, v4}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v4

    invoke-interface {v4}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    nop

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    :goto_1
    return-object p0

    .line 798
    :cond_0
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_2
    move-exception p0

    goto :goto_7

    :catch_3
    const/4 v3, 0x0

    .line 751
    :try_start_4
    invoke-interface {p0}, Lj$/nio/file/Path;->toAbsolutePath()Lj$/nio/file/Path;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v4, v3

    goto :goto_2

    :catch_4
    move-exception v4

    .line 757
    :goto_2
    invoke-interface {p0}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_1

    .line 99
    :try_start_5
    invoke-interface {v5}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v6

    invoke-virtual {v6}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v6

    .line 760
    new-array v7, v2, [Lj$/nio/file/a;

    invoke-virtual {v6, v5, v7}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V
    :try_end_5
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 765
    :catch_5
    invoke-interface {v5}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object v5

    goto :goto_3

    :cond_1
    :goto_4
    if-nez v5, :cond_3

    if-nez v4, :cond_2

    .line 770
    new-instance p1, Ljava/nio/file/FileSystemException;

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unable to determine if root directory exists"

    invoke-direct {p1, p0, v3, v0}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 773
    :cond_2
    throw v4

    .line 779
    :cond_3
    invoke-interface {v5, p0}, Lj$/nio/file/Path;->C(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Lj$/nio/file/Path;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj$/nio/file/Path;

    .line 780
    invoke-interface {v5, v4}, Lj$/nio/file/Path;->l(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object v5

    .line 688
    :try_start_6
    invoke-static {v5}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v4

    invoke-virtual {v4, v5, p1}, Lj$/nio/file/spi/d;->c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    :try_end_6
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception v4

    .line 797
    new-array v6, v1, [Lj$/nio/file/LinkOption;

    sget-object v7, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v7, v6, v2

    .line 2239
    :try_start_7
    invoke-static {v5, v0, v6}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object v6

    invoke-interface {v6}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_6

    :catch_7
    nop

    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_4

    goto :goto_5

    .line 798
    :cond_4
    throw v4

    :cond_5
    return-object p0

    .line 745
    :goto_7
    throw p0
.end method

.method public static varargs createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            "[",
            "Lj$/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Lj$/nio/file/Path;"
        }
    .end annotation

    .line 646
    sget-object v0, Lj$/nio/file/Files;->a:Ljava/util/Set;

    .line 369
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Lj$/nio/file/spi/d;->q(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 646
    invoke-interface {p1}, Ljava/nio/channels/ByteChannel;->close()V

    return-object p0
.end method

.method public static deleteIfExists(Lj$/nio/file/Path;)Z
    .locals 1

    .line 1179
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/d;->g(Lj$/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public static varargs exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 6

    .line 2436
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2437
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    :cond_0
    const/4 v0, 0x0

    .line 2395
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 2396
    sget-object v5, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    goto :goto_0

    .line 2401
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2402
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should not get here"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_2
    if-eqz v4, :cond_3

    .line 2444
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object p1

    new-array v1, v0, [Lj$/nio/file/a;

    invoke-virtual {p1, p0, v1}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    goto :goto_1

    .line 2447
    :cond_3
    const-class p1, Lj$/nio/file/attribute/BasicFileAttributes;

    new-array v1, v2, [Lj$/nio/file/LinkOption;

    sget-object v3, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v3, v1, v0

    invoke-static {p0, p1, v1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v2

    :catch_0
    return v0
.end method

.method public static varargs isRegularFile(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z
    .locals 1

    .line 2275
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2276
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    .line 2282
    :cond_0
    :try_start_0
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p1}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Lj$/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isWritable(Lj$/nio/file/Path;)Z
    .locals 4

    const/4 v0, 0x1

    .line 2580
    new-array v1, v0, [Lj$/nio/file/a;

    sget-object v2, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2514
    :try_start_0
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v3
.end method

.method public static list(Lj$/nio/file/Path;)Lj$/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/nio/file/Path;",
            ")",
            "Lj$/util/stream/Stream<",
            "Lj$/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 470
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v0

    sget-object v1, Lj$/nio/file/m;->a:Lj$/nio/file/m;

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/spi/d;->r(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;

    move-result-object p0

    .line 3715
    :try_start_0
    invoke-interface {p0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3718
    new-instance v1, Lj$/nio/file/l;

    invoke-direct {v1, v0}, Lj$/nio/file/l;-><init>(Ljava/util/Iterator;)V

    const/4 v0, 0x1

    .line 3738
    invoke-static {v1, v0}, Lj$/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Lj$/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 3739
    invoke-static {v0, v1}, Lj$/util/stream/StreamSupport;->stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;

    move-result-object v0

    .line 107
    new-instance v1, Lj$/nio/file/k;

    invoke-direct {v1, p0}, Lj$/nio/file/k;-><init>(Ljava/nio/file/DirectoryStream;)V

    .line 3740
    invoke-interface {v0, v1}, Lj$/util/stream/BaseStream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3743
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 3746
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3749
    :catchall_0
    :goto_1
    throw v0
.end method

.method public static varargs move(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)Lj$/nio/file/Path;
    .locals 9

    .line 1419
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v0

    .line 1423
    invoke-static {p1}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/d;->o(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V

    return-object p1

    .line 81
    :cond_0
    array-length v0, p2

    add-int/lit8 v1, v0, 0x2

    .line 82
    new-array v2, v1, [Lj$/nio/file/CopyOption;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 84
    aget-object v5, p2, v4

    .line 85
    sget-object v6, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    if-eq v5, v6, :cond_1

    .line 89
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    :cond_1
    new-instance p0, Ljava/nio/file/AtomicMoveNotSupportedException;

    const-string p1, "Atomic move between providers is not supported"

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p1}, Ljava/nio/file/AtomicMoveNotSupportedException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_2
    sget-object p2, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object p2, v2, v0

    const/4 p2, 0x1

    add-int/2addr v0, p2

    .line 92
    sget-object v4, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    aput-object v4, v2, v0

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v0, v1, :cond_6

    .line 52
    aget-object v7, v2, v0

    .line 53
    sget-object v8, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    if-ne v7, v8, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    .line 57
    :cond_3
    sget-object v8, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    if-ne v7, v8, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 61
    :cond_4
    sget-object v6, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    if-ne v7, v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a recognized copy option"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v4, :cond_7

    .line 105
    new-array p2, v3, [Lj$/nio/file/LinkOption;

    goto :goto_3

    .line 106
    :cond_7
    new-array p2, p2, [Lj$/nio/file/LinkOption;

    sget-object v0, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    aput-object v0, p2, v3

    .line 109
    :goto_3
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v0, p2}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p2

    .line 112
    invoke-interface {p2}, Lj$/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v5, :cond_8

    .line 117
    invoke-static {p1}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    goto :goto_4

    .line 118
    :cond_8
    new-array v0, v3, [Lj$/nio/file/LinkOption;

    invoke-static {p1, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    :goto_4
    invoke-interface {p2}, Lj$/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 123
    new-array v0, v3, [Lj$/nio/file/attribute/FileAttribute;

    .line 688
    invoke-static {p1}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lj$/nio/file/spi/d;->c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V

    goto :goto_5

    .line 125
    :cond_9
    new-array v0, v3, [Lj$/nio/file/p;

    .line 99
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v1

    .line 154
    invoke-virtual {v1, p0, v0}, Lj$/nio/file/spi/d;->v(Lj$/nio/file/Path;[Lj$/nio/file/p;)Ljava/io/InputStream;

    move-result-object v0

    .line 126
    :try_start_0
    new-array v1, v3, [Lj$/nio/file/CopyOption;

    invoke-static {v0, p1, v1}, Lj$/nio/file/Files;->a(Ljava/io/InputStream;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_a

    .line 127
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    .line 132
    new-array v0, v3, [Lj$/nio/file/LinkOption;

    .line 99
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v1

    .line 1705
    const-class v2, Lj$/nio/file/attribute/d;

    invoke-virtual {v1, p1, v2, v0}, Lj$/nio/file/spi/d;->h(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/n;

    move-result-object v0

    .line 133
    check-cast v0, Lj$/nio/file/attribute/d;

    .line 135
    :try_start_1
    invoke-interface {p2}, Lj$/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v1

    .line 136
    invoke-interface {p2}, Lj$/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object v2

    .line 137
    invoke-interface {p2}, Lj$/nio/file/attribute/BasicFileAttributes;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object p2

    .line 135
    invoke-interface {v0, v1, v2, p2}, Lj$/nio/file/attribute/d;->a(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    .line 99
    :try_start_2
    invoke-interface {p1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object p2

    .line 1140
    invoke-virtual {p2, p1}, Lj$/nio/file/spi/d;->f(Lj$/nio/file/Path;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 145
    :goto_6
    throw p0

    .line 99
    :cond_b
    :goto_7
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object p2

    invoke-virtual {p2}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object p2

    .line 1140
    invoke-virtual {p2, p0}, Lj$/nio/file/spi/d;->f(Lj$/nio/file/Path;)V

    return-object p1

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_c

    .line 125
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_8
    throw p0

    .line 119
    :cond_d
    new-instance p0, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Copying of symbolic links not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lj$/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Lj$/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Lj$/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .line 1768
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lj$/nio/file/spi/d;->x(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static readSymbolicLink(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 1

    .line 1461
    invoke-static {p0}, Lj$/nio/file/Files;->b(Lj$/nio/file/Path;)Lj$/nio/file/spi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/d;->z(Lj$/nio/file/Path;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static size(Lj$/nio/file/Path;)J
    .locals 2

    const/4 v0, 0x0

    .line 2385
    new-array v0, v0, [Lj$/nio/file/LinkOption;

    const-class v1, Lj$/nio/file/attribute/BasicFileAttributes;

    invoke-static {p0, v1, v0}, Lj$/nio/file/Files;->readAttributes(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Lj$/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    return-wide v0
.end method
