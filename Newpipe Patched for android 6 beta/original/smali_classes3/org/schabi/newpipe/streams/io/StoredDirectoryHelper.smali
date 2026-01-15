.class public Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;
.super Ljava/lang/Object;
.source "StoredDirectoryHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoredDirectoryHelper"


# instance fields
.field private context:Landroid/content/Context;

.field private docTree:Landroidx/documentfile/provider/DocumentFile;

.field private ioTree:Lj$/nio/file/Path;

.field private final tag:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$duVPFGYDbP82AAwdD60Fw2K930c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fy2QR3KWdS0pay_KD-0I88XUcZY(Lj$/nio/file/Path;)Ljava/lang/String;
    .locals 0

    .line 88
    invoke-interface {p0}, Lj$/nio/file/Path;->getFileName()Lj$/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    .line 57
    const-string p3, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-static {p1}, Lj$/nio/file/Paths;->get(Ljava/net/URI;)Lj$/nio/file/Path;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p3, p2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-eqz p1, :cond_1

    return-void

    .line 73
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create the tree from Uri"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static addIfStartWith(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-static {p2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 7

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    .line 149
    new-instance p3, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-direct {p3, v0, p1, p2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Lj$/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, v1

    .line 157
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    iput-object p1, p3, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->tag:Ljava/lang/String;

    return-object p3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 9

    if-nez p0, :cond_0

    .line 346
    invoke-virtual {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->findFile(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0

    .line 349
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 361
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 362
    const-string v0, "_display_name"

    const-string v2, "document_id"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 365
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 367
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v6, "_display_name = ?"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_3

    if-eqz v2, :cond_2

    .line 383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    .line 373
    :cond_3
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 374
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 375
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    .line 381
    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 380
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 379
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 367
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static getPicker(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 389
    invoke-static {p0}, Lorg/schabi/newpipe/settings/NewPipeSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 390
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.content.extra.SHOW_ADVANCED"

    .line 391
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x43

    .line 392
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/schabi/newpipe/util/FilePickerActivityHelper;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "nononsense.intent.ALLOW_CREATE_DIR"

    .line 397
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "nononsense.intent.MODE"

    .line 398
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitFilename(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 322
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 324
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 325
    :cond_1
    :goto_0
    const-string v0, ""

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-static {v0}, Lj$/nio/file/Files;->isWritable(Lj$/nio/file/Path;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result v0

    return v0
.end method

.method public createFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1
.end method

.method public createUniqueFile(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/streams/io/StoredFileHelper;
    .locals 12

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    invoke-static {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->splitFilename(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 84
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_1

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-static {v0}, Lj$/nio/file/Files;->list(Lj$/nio/file/Path;)Lj$/util/stream/Stream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    new-instance v0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v6, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0, v6}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 90
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v6

    invoke-interface {v0, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-interface {v5}, Lj$/util/stream/BaseStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v0

    if-eqz v5, :cond_0

    .line 87
    :try_start_3
    invoke-interface {v5}, Lj$/util/stream/BaseStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    :goto_1
    sget-object v5, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while traversing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 97
    :cond_1
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-static {v0, v5}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 99
    const-string v0, "_display_name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 101
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 103
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string v9, "(LOWER(_display_name) LIKE ?%"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 106
    :goto_2
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->addIfStartWith(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 103
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    :cond_2
    if-eqz v5, :cond_3

    .line 110
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 114
    invoke-direct {p0, p1, p2, v5}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    .line 118
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 120
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v0, 0x0

    :cond_6
    if-eqz v0, :cond_7

    .line 128
    invoke-direct {p0, p1, p2, v5}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    .line 131
    :cond_7
    new-instance p1, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x1

    :goto_5
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_9

    .line 134
    aget-object v0, v2, v5

    invoke-static {v4, p1, v0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_8

    .line 135
    aget-object v0, v2, v3

    aget-object v1, v2, v5

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->makeFileName(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v5}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 139
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aget-object v0, v2, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, v3}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    move-result-object p1

    return-object p1
.end method

.method public findFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 272
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-interface {v0, p1}, Lj$/nio/file/Path;->resolve(Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    .line 274
    new-array v0, v0, [Lj$/nio/file/LinkOption;

    invoke-static {p1, v0}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 277
    :cond_1
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->findFileSAFHelper(Landroid/content/Context;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 278
    :cond_2
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getFreeStorageSpace()J
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    .line 192
    :try_start_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    if-eqz v2, :cond_0

    .line 195
    invoke-interface {v2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 200
    :cond_0
    iget-object v2, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->context:Landroid/content/Context;

    .line 201
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-wide v0

    .line 205
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 206
    invoke-static {v3}, Landroid/system/Os;->fstatvfs(Ljava/io/FileDescriptor;)Landroid/system/StructStatVfs;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    move-object v2, v3

    .line 211
    :goto_0
    iget-wide v3, v2, Landroid/system/StructStatVfs;->f_bavail:J

    iget-wide v0, v2, Landroid/system/StructStatVfs;->f_frsize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-long v3, v3, v0

    return-wide v3

    :catchall_1
    move-exception v3

    .line 200
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    :goto_2
    sget-object v3, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->TAG:Ljava/lang/String;

    const-string v4, "Could not get free storage space"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

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

.method public isDirect()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInvalidSafStorage()Z
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mkdirs()Z
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    new-array v2, v1, [Lj$/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Lj$/nio/file/Files;->createDirectories(Lj$/nio/file/Path;[Lj$/nio/file/attribute/FileAttribute;)Lj$/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    sget-object v2, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while creating directories at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    new-array v1, v1, [Lj$/nio/file/LinkOption;

    invoke-static {v0, v1}, Lj$/nio/file/Files;->exists(Lj$/nio/file/Path;[Lj$/nio/file/LinkOption;)Z

    move-result v0

    return v0

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 245
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_1
    iget-object v3, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getParentFile()Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_2

    goto :goto_2

    .line 252
    :cond_2
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 256
    :cond_3
    invoke-virtual {v3, v0}, Landroidx/documentfile/provider/DocumentFile;->createDirectory(Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    .line 258
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_4
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->docTree:Landroidx/documentfile/provider/DocumentFile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/streams/io/StoredDirectoryHelper;->ioTree:Lj$/nio/file/Path;

    invoke-interface {v0}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
