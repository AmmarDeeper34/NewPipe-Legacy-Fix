.class public abstract Lj$/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lj$/nio/file/spi/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    sget-boolean v0, Lj$/adapter/a;->b:Z

    if-eqz v0, :cond_2

    .line 28
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    .line 30
    sget v1, Lj$/nio/file/spi/b;->f:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 0
    :cond_0
    instance-of v1, v0, Lj$/nio/file/spi/c;

    if-eqz v1, :cond_1

    check-cast v0, Lj$/nio/file/spi/c;

    iget-object v0, v0, Lj$/nio/file/spi/c;->a:Lj$/nio/file/spi/d;

    goto :goto_0

    :cond_1
    new-instance v1, Lj$/nio/file/spi/b;

    invoke-direct {v1, v0}, Lj$/nio/file/spi/b;-><init>(Ljava/nio/file/spi/FileSystemProvider;)V

    move-object v0, v1

    goto :goto_0

    .line 32
    :cond_2
    sget-boolean v0, Lj$/adapter/a;->c:Z

    if-eqz v0, :cond_3

    .line 43
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 46
    :cond_3
    sget-object v0, Lj$/desugar/sun/nio/fs/d;->a:Lj$/desugar/sun/nio/fs/l;

    .line 21
    :goto_0
    sput-object v0, Lj$/adapter/b;->a:Lj$/nio/file/spi/d;

    .line 22
    const-string v1, "file:///"

    .line 23
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/nio/file/spi/d;->j(Ljava/net/URI;)Lj$/nio/file/h;

    return-void
.end method
