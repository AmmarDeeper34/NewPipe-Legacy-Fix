.class public final Lj$/nio/file/Paths;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;
    .locals 1

    .line 186
    sget-object v0, Lj$/nio/file/j;->a:Lj$/nio/file/h;

    .line 147
    invoke-virtual {v0, p0, p1}, Lj$/nio/file/h;->h(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/net/URI;)Lj$/nio/file/Path;
    .locals 5

    .line 197
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 202
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object v0, Lj$/nio/file/j;->a:Lj$/nio/file/h;

    .line 203
    invoke-virtual {v0}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/nio/file/spi/d;->k(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0

    .line 190
    :cond_0
    sget-object v1, Lj$/nio/file/spi/d;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 186
    sget-object v1, Lj$/nio/file/j;->a:Lj$/nio/file/h;

    .line 192
    invoke-virtual {v1}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v1

    .line 194
    sget-object v2, Lj$/nio/file/spi/d;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 195
    :try_start_0
    sget-object v3, Lj$/nio/file/spi/d;->b:Ljava/util/List;

    if-nez v3, :cond_2

    .line 196
    sget-boolean v3, Lj$/nio/file/spi/d;->c:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    .line 199
    sput-boolean v3, Lj$/nio/file/spi/d;->c:Z

    .line 201
    new-instance v3, Lj$/nio/file/spi/a;

    const/4 v4, 0x0

    .line 202
    invoke-direct {v3, v4}, Lj$/nio/file/spi/a;-><init>(I)V

    .line 202
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    .line 209
    invoke-interface {v3, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 211
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lj$/nio/file/spi/d;->b:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 197
    :cond_1
    new-instance p0, Ljava/lang/Error;

    const-string v0, "Circular loading of installed providers detected"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_2
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 215
    :cond_3
    :goto_2
    sget-object v1, Lj$/nio/file/spi/d;->b:Ljava/util/List;

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/nio/file/spi/d;

    .line 207
    invoke-virtual {v2}, Lj$/nio/file/spi/d;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 208
    invoke-virtual {v2, p0}, Lj$/nio/file/spi/d;->k(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0

    .line 212
    :cond_5
    new-instance p0, Ljava/nio/file/FileSystemNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provider \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" not installed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/file/FileSystemNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing scheme"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
