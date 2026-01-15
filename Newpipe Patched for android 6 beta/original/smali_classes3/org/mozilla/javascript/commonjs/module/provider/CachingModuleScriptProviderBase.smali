.class public abstract Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;
.super Ljava/lang/Object;
.source "CachingModuleScriptProviderBase.java"

# interfaces
.implements Lorg/mozilla/javascript/commonjs/module/ModuleScriptProvider;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    }
.end annotation


# static fields
.field private static final loadConcurrencyLevel:I

.field private static final loadLockCount:I

.field private static final loadLockMask:I

.field private static final loadLockShift:I

.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private final loadLocks:[Ljava/lang/Object;

.field private final moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    sput v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadConcurrencyLevel:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 37
    :goto_0
    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadConcurrencyLevel:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x20

    .line 41
    sput v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockShift:I

    add-int/lit8 v0, v1, -0x1

    .line 42
    sput v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockMask:I

    .line 43
    sput v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 50
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    return-void
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static getConcurrencyLevel()I
    .locals 1

    .line 180
    sget v0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockCount:I

    return v0
.end method

.method private static getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getValidator()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
.end method

.method public getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .locals 5

    .line 69
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;

    move-result-object v1

    if-nez p3, :cond_0

    .line 73
    iget-object p3, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    invoke-interface {p3, p2, p5, v1}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->loadSource(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p3

    goto :goto_0

    .line 74
    :cond_0
    iget-object p5, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->moduleSourceProvider:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;

    invoke-interface {p5, p3, p4, v1}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->loadSource(Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;)Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    move-result-object p3

    .line 75
    :goto_0
    sget-object p4, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;->NOT_MODIFIED:Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;

    if-ne p3, p4, :cond_1

    .line 76
    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 81
    :cond_2
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getReader()Ljava/io/Reader;

    move-result-object p4

    .line 82
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p5

    .line 83
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLocks:[Ljava/lang/Object;

    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockShift:I

    ushr-int/2addr p5, v2

    sget v2, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->loadLockMask:I

    and-int/2addr p5, v2

    aget-object p5, v0, p5

    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getValidator(Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 87
    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_3

    .line 103
    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 90
    :cond_4
    :try_start_2
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getUri()Ljava/net/URI;

    move-result-object v0

    .line 91
    new-instance v1, Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    .line 95
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getSecurityDomain()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    .line 93
    invoke-virtual {p1, p4, v2, v4, v3}, Lorg/mozilla/javascript/Context;->compileReader(Ljava/io/Reader;Ljava/lang/String;ILjava/lang/Object;)Lorg/mozilla/javascript/Script;

    move-result-object p1

    .line 99
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getBase()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;-><init>(Lorg/mozilla/javascript/Script;Ljava/net/URI;Ljava/net/URI;)V

    .line 100
    invoke-virtual {p3}, Lorg/mozilla/javascript/commonjs/module/provider/ModuleSource;->getValidator()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    .line 101
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_5

    .line 103
    invoke-virtual {p4}, Ljava/io/Reader;->close()V

    :cond_5
    return-object v1

    .line 102
    :goto_1
    :try_start_3
    monitor-exit p5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p4, :cond_6

    .line 81
    :try_start_5
    invoke-virtual {p4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p1
.end method

.method protected abstract putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
.end method
