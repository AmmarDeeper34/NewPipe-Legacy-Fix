.class public Lorg/schabi/newpipe/streams/io/StoredFileHelper;
.super Ljava/lang/Object;
.source "StoredFileHelper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "StoredFileHelper"

.field private static final serialVersionUID:J


# instance fields
.field private transient context:Landroid/content/Context;

.field private transient docFile:Landroidx/documentfile/provider/DocumentFile;

.field private transient docTree:Landroidx/documentfile/provider/DocumentFile;

.field private transient ioPath:Lj$/nio/file/Path;

.field protected source:Ljava/lang/String;

.field private sourceTree:Ljava/lang/String;

.field private srcName:Ljava/lang/String;

.field private srcType:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    .line 124
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 126
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string v0, "file"

    if-eqz p4, :cond_3

    .line 127
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p1, p3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 136
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 138
    invoke-virtual {p3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_1

    const/4 p1, 0x0

    .line 139
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    return-void

    .line 142
    :cond_1
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 143
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->takePermissionSAF()V

    goto :goto_1

    .line 133
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SAF not available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p3

    invoke-static {p3}, Lj$/nio/file/Paths;->get(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p3

    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    :goto_1
    if-eqz p2, :cond_5

    .line 148
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 149
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 152
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 155
    :cond_5
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p2}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 56
    invoke-static {p2}, Lj$/io/FileRetargetClass;->toPath(Ljava/io/File;)Lj$/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 57
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 60
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 63
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 84
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    if-eqz p5, :cond_1

    .line 90
    invoke-virtual {p2, p4, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    invoke-direct {p0, p1, p4, p3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 98
    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 100
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 101
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 72
    const-string p3, "application/octet-stream"

    :cond_0
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 77
    :cond_1
    iput-object p4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-interface {p1, p2}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 111
    invoke-static {p2}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 112
    iget-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    const/4 v0, 0x0

    new-array v0, v0, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {p2, v0}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;

    .line 114
    iget-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {p2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 115
    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    .line 117
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {p1}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-void
.end method

.method private static applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 540
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p0, p3, :cond_2

    .line 546
    const-string p0, "android.provider.extra.INITIAL_URI"

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    if-nez p2, :cond_4

    .line 561
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_1

    .line 564
    :cond_4
    :try_start_0
    invoke-static {p2}, Lcom/nononsenseapps/filepicker/Utils;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 567
    :catchall_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-nez p2, :cond_7

    .line 573
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 574
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_7

    .line 576
    :cond_6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    :cond_7
    if-eqz p3, :cond_8

    .line 583
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, p2

    .line 586
    :cond_8
    const-string p2, "nononsense.intent.START_PATH"

    .line 587
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private assertValid()V
    .locals 2

    .line 431
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In invalid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-static {p1, v0, p3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 452
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 454
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Directory with the same name found but cannot delete"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_4

    .line 460
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p2, "application/octet-stream"

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroidx/documentfile/provider/DocumentFile;->createFile(Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 462
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create the file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object p1
.end method

.method public static deserialize(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/Context;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 4

    .line 162
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 168
    :cond_1
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 169
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 172
    iget-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    iput-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 175
    :cond_2
    iget-object p1, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 176
    iget-object p0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iput-object p0, v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method private getLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 470
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .line 514
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.content.extra.SHOW_ADVANCED"

    .line 516
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 517
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.category.OPENABLE"

    .line 518
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x43

    .line 519
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 522
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 525
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x0

    .line 526
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 527
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.extra.ALLOW_EXISTING_FILE"

    .line 528
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "nononsense.intent.MODE"

    const/4 v1, 0x3

    .line 529
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 532
    :cond_1
    :goto_0
    invoke-static {p0, p2, p3, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 486
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 487
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.extra.SHOW_ADVANCED"

    .line 488
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 489
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.category.OPENABLE"

    .line 490
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x43

    .line 491
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 494
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v0, 0x0

    .line 495
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 496
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "nononsense.intent.SINGLE_CLICK"

    .line 497
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "nononsense.intent.MODE"

    .line 498
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPicker(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .line 506
    invoke-static {p0, p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->applyInitialPathToPickerIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eq v2, v0, :cond_3

    return v1

    .line 481
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private takePermissionSAF()V
    .locals 3

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 441
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-void

    .line 442
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-static {v0}, Lj$/nio/file/Files;->isWritable(Lj$/nio/file/Path;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    return v0
.end method

.method public create()Z
    .locals 5

    .line 330
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 333
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    new-array v3, v2, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {v0, v3}, Lj$/nio/file/Files;->createFile(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 348
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->createSAF(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 349
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_3

    return v2

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 359
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 360
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 361
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 362
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_5
    return v1

    :catch_1
    :cond_6
    :goto_2
    return v2
.end method

.method public delete()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 246
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-static {v0}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    move-result v0

    .line 258
    :try_start_1
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->releasePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v0
.end method

.method public equals(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 392
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->stringMismatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 396
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 406
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isDirect()Z

    move-result v1

    if-eq v0, v1, :cond_3

    return v2

    .line 410
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {v0, p1}, Lj$/nio/file/Path;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 414
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 415
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 397
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    if-nez v4, :cond_6

    goto :goto_1

    .line 402
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    .line 403
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    :goto_1
    return v2
.end method

.method public existsAsFile()Z
    .locals 4

    .line 313
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->isRegularFile(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    return v0

    .line 326
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1

    .line 314
    :cond_3
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 315
    sget-object v0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "existsAsFile called but something is null: source = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, "null => storage is invalid"

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], docFile = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "], ioPath = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    return-object v0

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public getParentUri()Landroid/net/Uri;
    .locals 1

    .line 227
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 229
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Lorg/schabi/newpipe/streams/io/SharpStream;
    .locals 3

    .line 183
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 185
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lus/shandian/giga/io/FileStream;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lus/shandian/giga/io/FileStream;-><init>(Ljava/io/File;)V

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Lus/shandian/giga/io/FileStreamSAF;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lus/shandian/giga/io/FileStreamSAF;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 305
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    :cond_1
    return-object v0

    .line 301
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 221
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 223
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    .line 378
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    .line 379
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    .line 380
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    .line 381
    iput-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->context:Landroid/content/Context;

    return-void
.end method

.method public isDirect()Z
    .locals 1

    .line 211
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 213
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 4

    .line 267
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 269
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->docFile:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-static {v0}, Lj$/nio/file/Files;->size(Lj$/nio/file/Path;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting the size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->ioPath:Lj$/nio/file/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public openAndTruncateStream()Lorg/schabi/newpipe/streams/io/SharpStream;
    .locals 3

    .line 193
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 195
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 199
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    .line 200
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 421
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    const-string v1, "  tag="

    if-nez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Invalid state] name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->srcType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sourceFile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  treeSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->sourceTree:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate()V
    .locals 3

    .line 233
    invoke-direct {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->assertValid()V

    .line 235
    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 236
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/SharpStream;->setLength(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 235
    :try_start_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method
