.class public final synthetic Lj$/io/FileRetargetClass;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toPath(Ljava/io/File;)Lj$/nio/file/Path;
    .locals 2

    .line 186
    sget-object v0, Lj$/nio/file/j;->a:Lj$/nio/file/h;

    .line 2301
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lj$/nio/file/h;->h(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
