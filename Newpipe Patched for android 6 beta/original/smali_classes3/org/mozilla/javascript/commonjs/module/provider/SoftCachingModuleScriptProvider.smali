.class public Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;
.super Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;
.source "SoftCachingModuleScriptProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient scriptRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lorg/mozilla/javascript/Script;",
            ">;"
        }
    .end annotation
.end field

.field private transient scripts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;-><init>(Lorg/mozilla/javascript/commonjs/module/provider/ModuleSourceProvider;)V

    .line 34
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scriptRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 35
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    .line 36
    invoke-static {}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getConcurrencyLevel()I

    move-result v1

    const/16 v2, 0x10

    invoke-direct {p1, v2, v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scriptRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 117
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-virtual {v1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getModule()Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;->getValidator()Ljava/lang/Object;

    move-result-object v1

    .line 121
    invoke-virtual {p0, v0, v2, v1}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v1, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 131
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;

    invoke-virtual {v3}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->getCachedModuleScript()Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected getLoadedModule(Ljava/lang/String;)Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->getCachedModuleScript()Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase$CachedModuleScript;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;
    .locals 4

    .line 53
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scriptRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;

    if-nez v0, :cond_0

    .line 59
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/commonjs/module/provider/CachingModuleScriptProviderBase;->getModuleScript(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/commonjs/module/ModuleScript;

    move-result-object p1

    move-object p2, p0

    return-object p1

    :cond_0
    move-object v1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    .line 57
    iget-object v2, p2, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;->getModuleId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v1

    goto :goto_0
.end method

.method protected putLoadedModule(Ljava/lang/String;Lorg/mozilla/javascript/commonjs/module/ModuleScript;Ljava/lang/Object;)V
    .locals 8

    .line 70
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scripts:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;

    .line 73
    invoke-virtual {p2}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getScript()Lorg/mozilla/javascript/Script;

    move-result-object v2

    .line 75
    invoke-virtual {p2}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getUri()Ljava/net/URI;

    move-result-object v4

    .line 76
    invoke-virtual {p2}, Lorg/mozilla/javascript/commonjs/module/ModuleScript;->getBase()Ljava/net/URI;

    move-result-object v5

    iget-object v7, p0, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider;->scriptRefQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lorg/mozilla/javascript/commonjs/module/provider/SoftCachingModuleScriptProvider$ScriptReference;-><init>(Lorg/mozilla/javascript/Script;Ljava/lang/String;Ljava/net/URI;Ljava/net/URI;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 70
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
