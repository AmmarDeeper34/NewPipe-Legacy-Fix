.class public final Lj$/desugar/sun/nio/fs/l;
.super Lj$/nio/file/spi/d;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public volatile g:Lj$/desugar/sun/nio/fs/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lj$/nio/file/spi/d;-><init>()V

    .line 75
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/l;->e:Ljava/lang/String;

    .line 76
    const-string p1, "/"

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/l;->f:Ljava/lang/String;

    return-void
.end method

.method public static B(Ljava/net/URI;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p0}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 392
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Fragment component present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Query component present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 397
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path component should be \'/\'"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 394
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path component is undefined"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Authority component present"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI does not match this provider"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static C([Lj$/nio/file/CopyOption;Lj$/nio/file/StandardCopyOption;)Z
    .locals 4

    .line 229
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final varargs A(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Lj$/nio/file/LinkOption;)V
    .locals 2

    .line 343
    const-string p4, ":"

    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p2, v0, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 351
    const-string v1, "basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 p4, p4, 0x1

    .line 357
    invoke-virtual {p2, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 360
    :goto_0
    new-instance p4, Lj$/desugar/sun/nio/fs/b;

    invoke-direct {p4, p1}, Lj$/desugar/sun/nio/fs/b;-><init>(Lj$/nio/file/Path;)V

    .line 78
    const-string p1, "lastModifiedTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 79
    check-cast p3, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p4, p3, v0, v0}, Lj$/desugar/sun/nio/fs/b;->a(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    return-void

    .line 82
    :cond_1
    const-string p1, "lastAccessTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    check-cast p3, Lj$/nio/file/attribute/FileTime;

    invoke-virtual {p4, v0, p3, v0}, Lj$/desugar/sun/nio/fs/b;->a(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V

    return-void

    .line 86
    :cond_2
    const-string p1, "creationTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 87
    check-cast p3, Lj$/nio/file/attribute/FileTime;

    return-void

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\'basic:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not recognized"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Requested attribute type for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string p3, " is not available."

    .line 355
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V
    .locals 8

    .line 279
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 284
    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v6, p2, v4

    .line 285
    sget-object v7, Lj$/desugar/sun/nio/fs/i;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    if-eq v6, v3, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v6

    :goto_1
    and-int/2addr v5, v6

    goto :goto_2

    .line 290
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v6

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v6

    goto :goto_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    return-void

    .line 298
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Unable to access file %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 281
    :cond_5
    new-instance p2, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final varargs b(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 3

    .line 199
    sget-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    invoke-static {p3, v0}, Lj$/desugar/sun/nio/fs/l;->C([Lj$/nio/file/CopyOption;Lj$/nio/file/StandardCopyOption;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_1
    :goto_0
    sget-object v0, Lj$/nio/file/StandardCopyOption;->ATOMIC_MOVE:Lj$/nio/file/StandardCopyOption;

    invoke-static {p3, v0}, Lj$/desugar/sun/nio/fs/l;->C([Lj$/nio/file/CopyOption;Lj$/nio/file/StandardCopyOption;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 205
    new-instance p3, Ljava/io/FileInputStream;

    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 206
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x2000

    .line 207
    :try_start_1
    new-array v0, p2, [B

    .line 209
    :goto_1
    invoke-virtual {p3, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_2

    .line 210
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    .line 212
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 205
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    .line 203
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported copy option"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs c(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 1

    .line 121
    invoke-interface {p1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lj$/nio/file/Path;->getParent()Lj$/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance p2, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    .line 125
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 127
    :cond_2
    new-instance p2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final d(Lj$/nio/file/Path;Lj$/nio/file/Path;)V
    .locals 0

    .line 183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final varargs e(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)V
    .locals 0

    .line 189
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final f(Lj$/nio/file/Path;)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    :try_start_0
    new-array v0, v0, [Lj$/nio/file/a;

    invoke-virtual {p0, p1, v0}, Lj$/desugar/sun/nio/fs/l;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {p0, p1}, Lj$/desugar/sun/nio/fs/l;->g(Lj$/nio/file/Path;)Z

    return-void

    .line 146
    :catch_0
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lj$/nio/file/Path;)Z
    .locals 0

    .line 151
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public final varargs h(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/n;
    .locals 0

    .line 269
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    const-class p3, Lj$/nio/file/attribute/d;

    if-ne p2, p3, :cond_0

    .line 272
    new-instance p3, Lj$/desugar/sun/nio/fs/b;

    invoke-direct {p3, p1}, Lj$/desugar/sun/nio/fs/b;-><init>(Lj$/nio/file/Path;)V

    invoke-virtual {p2, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/nio/file/attribute/n;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Lj$/nio/file/Path;)Lj$/nio/file/d;
    .locals 1

    .line 262
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "getFileStore"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Ljava/net/URI;)Lj$/nio/file/h;
    .locals 2

    .line 92
    invoke-static {p1}, Lj$/desugar/sun/nio/fs/l;->B(Ljava/net/URI;)V

    .line 93
    iget-object p1, p0, Lj$/desugar/sun/nio/fs/l;->g:Lj$/desugar/sun/nio/fs/h;

    if-nez p1, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object p1, p0, Lj$/desugar/sun/nio/fs/l;->g:Lj$/desugar/sun/nio/fs/h;

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lj$/desugar/sun/nio/fs/h;

    iget-object v0, p0, Lj$/desugar/sun/nio/fs/l;->e:Ljava/lang/String;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/l;->f:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lj$/desugar/sun/nio/fs/h;-><init>(Lj$/desugar/sun/nio/fs/l;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lj$/desugar/sun/nio/fs/l;->g:Lj$/desugar/sun/nio/fs/h;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 100
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1
.end method

.method public final k(Ljava/net/URI;)Lj$/nio/file/Path;
    .locals 11

    .line 107
    iget-object v0, p0, Lj$/desugar/sun/nio/fs/l;->g:Lj$/desugar/sun/nio/fs/h;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/l;->e:Ljava/lang/String;

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/l;->f:Ljava/lang/String;

    sget-object v3, Lj$/desugar/sun/nio/fs/o;->c:[C

    .line 40
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 42
    invoke-virtual {p1}, Ljava/net/URI;->isOpaque()Z

    move-result v3

    if-nez v3, :cond_b

    .line 44
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 45
    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    .line 49
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 51
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 61
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 67
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 69
    :cond_0
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_4

    add-int/lit8 v7, v5, 0x1

    .line 73
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_2

    add-int/lit8 v8, v5, 0x2

    .line 77
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v5, v5, 0x3

    .line 78
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 79
    invoke-static {v7}, Lj$/desugar/sun/nio/fs/o;->a(C)I

    move-result v7

    shl-int/lit8 v7, v7, 0x4

    invoke-static {v8}, Lj$/desugar/sun/nio/fs/o;->a(C)I

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nul character not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v8, :cond_3

    const/16 v5, 0x80

    if-ge v8, v5, :cond_3

    int-to-byte v5, v8

    move v10, v7

    move v7, v5

    move v5, v10

    :goto_1
    add-int/lit8 v8, v6, 0x1

    .line 87
    aput-byte v7, v4, v6

    move v6, v8

    goto :goto_0

    .line 84
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad escape"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eq v6, v3, :cond_5

    .line 90
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 92
    :cond_5
    new-instance p1, Lj$/desugar/sun/nio/fs/n;

    new-instance v3, Ljava/lang/String;

    .line 51
    sget-object v5, Lj$/desugar/sun/nio/fs/p;->a:Ljava/nio/charset/Charset;

    .line 94
    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p1, v0, v3, v1, v2}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 64
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI path component is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI has a query component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI has a fragment component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI has an authority component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI scheme is not \"file\""

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI is not hierarchical"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI is not absolute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "file"

    return-object v0
.end method

.method public final m(Lj$/nio/file/Path;)Z
    .locals 0

    .line 252
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    return p1
.end method

.method public final n(Lj$/nio/file/Path;Lj$/nio/file/Path;)Z
    .locals 2

    .line 240
    invoke-interface {p1, p2}, Lj$/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 245
    new-array v1, v0, [Lj$/nio/file/a;

    invoke-virtual {p0, p1, v1}, Lj$/desugar/sun/nio/fs/l;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 246
    new-array v0, v0, [Lj$/nio/file/a;

    invoke-virtual {p0, p2, v0}, Lj$/desugar/sun/nio/fs/l;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 247
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final varargs o(Lj$/nio/file/Path;Lj$/nio/file/Path;[Lj$/nio/file/CopyOption;)V
    .locals 1

    .line 217
    sget-object v0, Lj$/nio/file/StandardCopyOption;->REPLACE_EXISTING:Lj$/nio/file/StandardCopyOption;

    invoke-static {p3, v0}, Lj$/desugar/sun/nio/fs/l;->C([Lj$/nio/file/CopyOption;Lj$/nio/file/StandardCopyOption;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/LinkOption;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance p1, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_1
    :goto_0
    sget-object v0, Lj$/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Lj$/nio/file/StandardCopyOption;

    invoke-static {p3, v0}, Lj$/desugar/sun/nio/fs/l;->C([Lj$/nio/file/CopyOption;Lj$/nio/file/StandardCopyOption;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 223
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    .line 224
    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    return-void

    .line 221
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unsupported copy option"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs p(Lj$/nio/file/Path;Ljava/util/Set;Ljava/util/concurrent/ExecutorService;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/channels/a;
    .locals 0

    .line 178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final varargs q(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 158
    invoke-virtual {p0, p1, p2, p3}, Lj$/desugar/sun/nio/fs/l;->s(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public final r(Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 2

    .line 116
    new-instance v0, Lj$/desugar/sun/nio/fs/j;

    .line 456
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v1, Lj$/desugar/sun/nio/fs/k;

    invoke-direct {v1, p0, p1, p2}, Lj$/desugar/sun/nio/fs/k;-><init>(Lj$/desugar/sun/nio/fs/l;Lj$/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)V

    iput-object v1, v0, Lj$/desugar/sun/nio/fs/j;->a:Lj$/desugar/sun/nio/fs/k;

    return-object v0
.end method

.method public final varargs s(Lj$/nio/file/Path;Ljava/util/Set;[Lj$/nio/file/attribute/FileAttribute;)Ljava/nio/channels/FileChannel;
    .locals 4

    .line 164
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-nez p3, :cond_f

    .line 79
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/nio/file/p;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 84
    :cond_0
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 85
    sget-object p3, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p3, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    .line 86
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    new-instance p2, Ljava/nio/file/FileAlreadyExistsException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/FileAlreadyExistsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 90
    :cond_2
    sget-object p3, Lj$/nio/file/a0;->CREATE:Lj$/nio/file/a0;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lj$/nio/file/a0;->CREATE_NEW:Lj$/nio/file/a0;

    .line 91
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    new-instance p2, Ljava/nio/file/NoSuchFileException;

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 96
    :cond_4
    :goto_1
    sget-object p3, Lj$/nio/file/a0;->READ:Lj$/nio/file/a0;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lj$/nio/file/a0;->APPEND:Lj$/nio/file/a0;

    .line 97
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    .line 98
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "READ + APPEND not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_6
    :goto_2
    sget-object p3, Lj$/nio/file/a0;->APPEND:Lj$/nio/file/a0;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lj$/nio/file/a0;->TRUNCATE_EXISTING:Lj$/nio/file/a0;

    .line 101
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 102
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "APPEND + TRUNCATE_EXISTING not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_8
    :goto_3
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 60
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    .line 107
    sget-object v2, Lj$/nio/file/a0;->WRITE:Lj$/nio/file/a0;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 108
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 109
    const-string v3, "r"

    goto :goto_4

    .line 111
    :cond_9
    sget-object v3, Lj$/nio/file/a0;->SYNC:Lj$/nio/file/a0;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 112
    const-string v3, "rws"

    goto :goto_4

    .line 114
    :cond_a
    sget-object v3, Lj$/nio/file/a0;->DSYNC:Lj$/nio/file/a0;

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 115
    const-string v3, "rwd"

    goto :goto_4

    .line 117
    :cond_b
    const-string v3, "rw"

    .line 60
    :goto_4
    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    sget-object v1, Lj$/nio/file/a0;->TRUNCATE_EXISTING:Lj$/nio/file/a0;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 64
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-wide/16 v1, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 68
    :cond_c
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lj$/nio/file/a0;->DELETE_ON_CLOSE:Lj$/nio/file/a0;

    .line 69
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1

    .line 0
    :cond_d
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 74
    sget v1, Lj$/desugar/sun/nio/fs/e;->e:I

    .line 146
    instance-of v1, v0, Lj$/desugar/sun/nio/fs/e;

    if-eqz v1, :cond_e

    check-cast v0, Lj$/desugar/sun/nio/fs/e;

    iget-object v0, v0, Lj$/desugar/sun/nio/fs/e;->a:Ljava/nio/channels/FileChannel;

    .line 147
    :cond_e
    new-instance v1, Lj$/desugar/sun/nio/fs/e;

    sget-object v2, Lj$/nio/file/a0;->DELETE_ON_CLOSE:Lj$/nio/file/a0;

    .line 149
    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 150
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-direct {v1, v0, v2, p2, p1}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object v1

    .line 165
    :cond_f
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The desugar library does not support creating a file channel on a directory: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final u(Ljava/net/URI;Ljava/util/Map;)Lj$/nio/file/h;
    .locals 0

    .line 86
    invoke-static {p1}, Lj$/desugar/sun/nio/fs/l;->B(Ljava/net/URI;)V

    .line 87
    new-instance p1, Ljava/nio/file/FileSystemAlreadyExistsException;

    invoke-direct {p1}, Ljava/nio/file/FileSystemAlreadyExistsException;-><init>()V

    throw p1
.end method

.method public final varargs x(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 1

    .line 306
    const-class v0, Lj$/nio/file/attribute/BasicFileAttributes;

    if-ne p2, v0, :cond_0

    .line 307
    const-class v0, Lj$/nio/file/attribute/d;

    .line 311
    invoke-virtual {p0, p1, v0, p3}, Lj$/desugar/sun/nio/fs/l;->h(Lj$/nio/file/Path;Ljava/lang/Class;[Lj$/nio/file/LinkOption;)Lj$/nio/file/attribute/n;

    move-result-object p1

    check-cast p1, Lj$/nio/file/attribute/d;

    invoke-interface {p1}, Lj$/nio/file/attribute/d;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/nio/file/attribute/BasicFileAttributes;

    return-object p1

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final varargs y(Lj$/nio/file/Path;Ljava/lang/String;[Lj$/nio/file/LinkOption;)Ljava/util/Map;
    .locals 6

    .line 317
    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    const-string v3, ","

    if-ne p3, v0, :cond_0

    .line 322
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p2, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v4, "basic"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/2addr p3, v1

    .line 331
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 334
    :goto_0
    new-instance p3, Lj$/desugar/sun/nio/fs/b;

    invoke-direct {p3, p1}, Lj$/desugar/sun/nio/fs/b;-><init>(Lj$/nio/file/Path;)V

    .line 172
    sget-object p1, Lj$/desugar/sun/nio/fs/b;->b:Ljava/util/Set;

    .line 118
    new-instance v0, Lj$/desugar/sun/nio/fs/a;

    .line 102
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lj$/desugar/sun/nio/fs/a;->a:Ljava/util/Set;

    .line 99
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lj$/desugar/sun/nio/fs/a;->b:Ljava/util/Map;

    .line 103
    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, p2, v2

    .line 104
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    iput-boolean v1, v0, Lj$/desugar/sun/nio/fs/a;->c:Z

    goto :goto_2

    .line 107
    :cond_1
    move-object v5, p1

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    iget-object v5, v0, Lj$/desugar/sun/nio/fs/a;->a:Ljava/util/Set;

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' not recognized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_3
    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/b;->readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    .line 148
    const-string p2, "size"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 149
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->size()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    :cond_4
    const-string p2, "creationTime"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 151
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->creationTime()Lj$/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :cond_5
    const-string p2, "lastAccessTime"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 153
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->lastAccessTime()Lj$/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :cond_6
    const-string p2, "lastModifiedTime"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 155
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->lastModifiedTime()Lj$/nio/file/attribute/FileTime;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    :cond_7
    const-string p2, "fileKey"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 157
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->fileKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :cond_8
    const-string p2, "isDirectory"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 159
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->isDirectory()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :cond_9
    const-string p2, "isRegularFile"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 161
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->isRegularFile()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :cond_a
    const-string p2, "isSymbolicLink"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 163
    move-object p3, p1

    check-cast p3, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p3}, Lj$/desugar/sun/nio/fs/c;->isSymbolicLink()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, p3, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :cond_b
    const-string p2, "isOther"

    invoke-virtual {v0, p2}, Lj$/desugar/sun/nio/fs/a;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 165
    check-cast p1, Lj$/desugar/sun/nio/fs/c;

    invoke-virtual {p1}, Lj$/desugar/sun/nio/fs/c;->isOther()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/desugar/sun/nio/fs/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :cond_c
    iget-object p1, v0, Lj$/desugar/sun/nio/fs/a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 328
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 329
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Requested attribute type for: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string p3, " is not available."

    .line 329
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Lj$/nio/file/Path;)Lj$/nio/file/Path;
    .locals 4

    .line 194
    new-instance v0, Lj$/desugar/sun/nio/fs/n;

    iget-object v1, p0, Lj$/desugar/sun/nio/fs/l;->g:Lj$/desugar/sun/nio/fs/h;

    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lj$/desugar/sun/nio/fs/l;->e:Ljava/lang/String;

    iget-object v3, p0, Lj$/desugar/sun/nio/fs/l;->f:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2, v3}, Lj$/desugar/sun/nio/fs/n;-><init>(Lj$/nio/file/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
