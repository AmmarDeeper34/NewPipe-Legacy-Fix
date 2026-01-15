.class public Lorg/mozilla/javascript/commonjs/module/ModuleScope;
.super Lorg/mozilla/javascript/TopLevel;
.source "ModuleScope.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base:Ljava/net/URI;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/net/URI;Ljava/net/URI;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/mozilla/javascript/TopLevel;-><init>()V

    .line 21
    iput-object p2, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->uri:Ljava/net/URI;

    .line 22
    iput-object p3, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->base:Ljava/net/URI;

    .line 23
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/TopLevel;->cacheBuiltins(Lorg/mozilla/javascript/Scriptable;Z)V

    return-void
.end method


# virtual methods
.method public getBase()Ljava/net/URI;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->base:Ljava/net/URI;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/mozilla/javascript/commonjs/module/ModuleScope;->uri:Ljava/net/URI;

    return-object v0
.end method
