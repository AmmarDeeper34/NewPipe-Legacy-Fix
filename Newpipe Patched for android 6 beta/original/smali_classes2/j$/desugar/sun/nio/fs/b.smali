.class public final Lj$/desugar/sun/nio/fs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/attribute/d;


# static fields
.field public static final b:Ljava/util/Set;


# instance fields
.field public final a:Lj$/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 56
    const-string v7, "isSymbolicLink"

    const-string v8, "isOther"

    const-string v0, "size"

    const-string v1, "creationTime"

    const-string v2, "lastAccessTime"

    const-string v3, "lastModifiedTime"

    const-string v4, "fileKey"

    const-string v5, "isDirectory"

    const-string v6, "isRegularFile"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lj$/desugar/sun/nio/fs/p;->a:Ljava/nio/charset/Charset;

    .line 100
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 101
    aget-object v3, v0, v2

    .line 102
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    sput-object v1, Lj$/desugar/sun/nio/fs/b;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lj$/nio/file/Path;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    return-void
.end method


# virtual methods
.method public final a(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;)V
    .locals 17

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    move-object/from16 v1, p0

    goto/16 :goto_2

    :cond_0
    move-object/from16 v1, p0

    .line 55
    iget-object v2, v1, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    invoke-interface {v2}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v3

    invoke-virtual {v3}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lj$/nio/file/a;

    sget-object v5, Lj$/nio/file/a;->WRITE:Lj$/nio/file/a;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 56
    invoke-interface {v2}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v3

    .line 57
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    const-string v5, "unit"

    invoke-static {v4, v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 144
    iget-wide v5, v0, Lj$/nio/file/attribute/FileTime;->a:J

    invoke-virtual {v4, v5, v6, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    goto :goto_1

    .line 146
    :cond_1
    iget-object v5, v0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 619
    iget-wide v5, v5, Lj$/time/Instant;->a:J

    .line 146
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_5

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v11, v5, v9

    if-nez v11, :cond_2

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, v0, Lj$/nio/file/attribute/FileTime;->b:Lj$/time/Instant;

    .line 632
    iget v0, v0, Lj$/time/Instant;->b:I

    int-to-long v11, v0

    .line 150
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v11, v12, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    add-long v13, v5, v11

    xor-long v15, v5, v13

    xor-long/2addr v11, v13

    and-long/2addr v11, v15

    const-wide/16 v15, 0x0

    cmp-long v0, v11, v15

    if-gez v0, :cond_4

    cmp-long v0, v5, v15

    if-gez v0, :cond_3

    move-wide v4, v7

    goto :goto_1

    :cond_3
    move-wide v4, v9

    goto :goto_1

    :cond_4
    move-wide v4, v13

    goto :goto_1

    :cond_5
    :goto_0
    move-wide v4, v5

    .line 57
    :goto_1
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    return-void

    .line 59
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File.setLastModified did not succeed on "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final name()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "basic"

    return-object v0
.end method

.method public final readAttributes()Lj$/nio/file/attribute/BasicFileAttributes;
    .locals 18

    move-object/from16 v0, p0

    .line 43
    iget-object v1, v0, Lj$/desugar/sun/nio/fs/b;->a:Lj$/nio/file/Path;

    invoke-interface {v1}, Lj$/nio/file/Path;->getFileSystem()Lj$/nio/file/h;

    move-result-object v2

    invoke-virtual {v2}, Lj$/nio/file/h;->t()Lj$/nio/file/spi/d;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Lj$/nio/file/a;

    invoke-virtual {v2, v1, v4}, Lj$/nio/file/spi/d;->a(Lj$/nio/file/Path;[Lj$/nio/file/a;)V

    .line 44
    invoke-interface {v1}, Lj$/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    const-string v6, "unit"

    invoke-static {v2, v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    new-instance v8, Lj$/nio/file/attribute/FileTime;

    invoke-direct {v8, v4, v5}, Lj$/nio/file/attribute/FileTime;-><init>(J)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v11

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    const/4 v2, 0x1

    .line 136
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v5, v1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    .line 140
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v4, v2

    move v13, v4

    goto :goto_1

    :catch_0
    nop

    const/4 v13, 0x0

    .line 49
    :goto_1
    new-instance v7, Lj$/desugar/sun/nio/fs/c;

    if-nez v11, :cond_1

    if-nez v12, :cond_1

    if-nez v13, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 57
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v15

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object v9, v8

    move-object v10, v8

    invoke-direct/range {v7 .. v17}, Lj$/desugar/sun/nio/fs/c;-><init>(Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;Lj$/nio/file/attribute/FileTime;ZZZZJLjava/lang/Object;)V

    return-object v7
.end method
