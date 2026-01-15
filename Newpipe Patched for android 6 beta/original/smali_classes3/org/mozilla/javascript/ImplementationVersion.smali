.class public Lorg/mozilla/javascript/ImplementationVersion;
.super Ljava/lang/Object;
.source "ImplementationVersion.java"


# static fields
.field private static final version:Lorg/mozilla/javascript/ImplementationVersion;


# instance fields
.field private versionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/mozilla/javascript/ImplementationVersion;

    invoke-direct {v0}, Lorg/mozilla/javascript/ImplementationVersion;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/ImplementationVersion;->version:Lorg/mozilla/javascript/ImplementationVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    const-class v0, Lorg/mozilla/javascript/ImplementationVersion;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "META-INF/MANIFEST.MF"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 39
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :try_start_2
    new-instance v2, Ljava/util/jar/Manifest;

    invoke-direct {v2, v1}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V

    .line 41
    invoke-virtual {v2}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    .line 42
    const-string v3, "Mozilla Rhino"

    const-string v4, "Implementation-Title"

    invoke-virtual {v2, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 44
    const-string v4, "Rhino "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Implementation-Version"

    invoke-virtual {v2, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, "Built-Date"

    invoke-virtual {v2, v4}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    const-string v4, "-"

    const-string v5, " "

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x20

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/javascript/ImplementationVersion;->versionString:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 53
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_0
    nop

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :goto_2
    if-eqz v1, :cond_3

    .line 39
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 58
    :cond_4
    const-string v0, "Rhino Snapshot"

    iput-object v0, p0, Lorg/mozilla/javascript/ImplementationVersion;->versionString:Ljava/lang/String;

    :catch_1
    :cond_5
    :goto_4
    return-void
.end method

.method public static get()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lorg/mozilla/javascript/ImplementationVersion;->version:Lorg/mozilla/javascript/ImplementationVersion;

    iget-object v0, v0, Lorg/mozilla/javascript/ImplementationVersion;->versionString:Ljava/lang/String;

    return-object v0
.end method
