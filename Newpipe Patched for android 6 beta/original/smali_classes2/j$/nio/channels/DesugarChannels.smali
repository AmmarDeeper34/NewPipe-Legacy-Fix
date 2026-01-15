.class public Lj$/nio/channels/DesugarChannels;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 27
    :cond_0
    sget-boolean v1, Lj$/adapter/a;->a:Z

    if-eqz v1, :cond_1

    return-object p0

    .line 121
    :cond_1
    sget v1, Lj$/desugar/sun/nio/fs/e;->e:I

    .line 137
    instance-of v1, p0, Lj$/desugar/sun/nio/fs/e;

    if-eqz v1, :cond_2

    .line 138
    check-cast p0, Lj$/desugar/sun/nio/fs/e;

    return-object p0

    .line 140
    :cond_2
    new-instance v1, Lj$/desugar/sun/nio/fs/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2, v0}, Lj$/desugar/sun/nio/fs/e;-><init>(Ljava/nio/channels/FileChannel;ZZLj$/nio/file/Path;)V

    return-object v1
.end method
