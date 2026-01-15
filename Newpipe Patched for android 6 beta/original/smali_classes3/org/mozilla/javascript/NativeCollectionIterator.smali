.class public Lorg/mozilla/javascript/NativeCollectionIterator;
.super Lorg/mozilla/javascript/ES6Iterator;
.source "NativeCollectionIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/NativeCollectionIterator$Type;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6275f047db483dc3L


# instance fields
.field private className:Ljava/lang/String;

.field private transient iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lorg/mozilla/javascript/ES6Iterator;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 26
    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 28
    sget-object p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;->BOTH:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/mozilla/javascript/NativeCollectionIterator$Type;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/NativeCollectionIterator$Type;",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Hashtable$Entry;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/ES6Iterator;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    .line 34
    iput-object p2, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    .line 36
    iput-object p3, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/String;Z)V
    .locals 1

    .line 22
    new-instance v0, Lorg/mozilla/javascript/NativeCollectionIterator;

    invoke-direct {v0, p1}, Lorg/mozilla/javascript/NativeCollectionIterator;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v0, p1}, Lorg/mozilla/javascript/ES6Iterator;->init(Lorg/mozilla/javascript/ScriptableObject;ZLorg/mozilla/javascript/IdScriptableObject;Ljava/lang/String;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 66
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 73
    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->className:Ljava/lang/String;

    return-object v0
.end method

.method protected isDone(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 46
    iget-object p1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected nextValue(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 5

    .line 51
    iget-object v0, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Hashtable$Entry;

    .line 52
    iget-object v1, p0, Lorg/mozilla/javascript/NativeCollectionIterator;->type:Lorg/mozilla/javascript/NativeCollectionIterator$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 58
    iget-object v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    invoke-virtual {p1, p2, v3}, Lorg/mozilla/javascript/Context;->newArray(Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 56
    :cond_1
    iget-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object p1

    .line 54
    :cond_2
    iget-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    return-object p1
.end method
