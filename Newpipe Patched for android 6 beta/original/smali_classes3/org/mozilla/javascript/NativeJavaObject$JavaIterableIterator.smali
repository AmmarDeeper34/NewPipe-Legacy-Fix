.class final Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "NativeJavaObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeJavaObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaIterableIterator"
.end annotation


# static fields
.field private static final ITERATOR_TAG:Ljava/lang/String; = "JavaIterableIterator"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Iterable;)V
    .locals 1

    .line 923
    const-string v0, "JavaIterableIterator"

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    .line 924
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Z)V
    .locals 2

    .line 914
    new-instance v0, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;-><init>()V

    const-string v1, "JavaIterableIterator"

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 929
    const-string v0, "Java Iterable Iterator"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 948
    const-string v0, "JavaIterableIterator"

    return-object v0
.end method

.method protected isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 934
    iget-object p1, p0, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    .line 939
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 940
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1

    .line 942
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/NativeJavaObject$JavaIterableIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 943
    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getWrapFactory()Lorg/mozilla/javascript/WrapFactory;

    move-result-object v0

    if-nez p2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, p0, p2, v1}, Lorg/mozilla/javascript/WrapFactory;->wrap(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
