.class public Lorg/mozilla/javascript/NativeWith;
.super Ljava/lang/Object;
.source "NativeWith.java"

# interfaces
.implements Lorg/mozilla/javascript/Scriptable;
.implements Lorg/mozilla/javascript/SymbolScriptable;
.implements Lorg/mozilla/javascript/IdFunctionCall;
.implements Ljava/io/Serializable;


# static fields
.field private static final FTAG:Ljava/lang/Object;

.field private static final Id_constructor:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected parent:Lorg/mozilla/javascript/Scriptable;

.field protected prototype:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    const-string v0, "With"

    sput-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    .line 36
    iput-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 19
    new-instance v1, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    .line 21
    invoke-virtual {v1, p0}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 22
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 24
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    const-string v4, "With"

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 25
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 29
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    return-void
.end method

.method static isWithFunction(Ljava/lang/Object;)Z
    .locals 2

    .line 181
    instance-of v0, p0, Lorg/mozilla/javascript/IdFunctionObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Lorg/mozilla/javascript/IdFunctionObject;

    .line 183
    sget-object v0, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method static newWithSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 189
    const-string v0, "With"

    invoke-static {p0, v0}, Lorg/mozilla/javascript/ScriptRuntime;->checkDeprecated(Lorg/mozilla/javascript/Context;Ljava/lang/String;)V

    .line 190
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 191
    new-instance v0, Lorg/mozilla/javascript/NativeWith;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeWith;-><init>()V

    .line 193
    array-length v1, p2

    if-nez v1, :cond_0

    .line 194
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 195
    aget-object p2, p2, v1

    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    .line 192
    :goto_0
    invoke-virtual {v0, p0}, Lorg/mozilla/javascript/NativeWith;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 196
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeWith;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object v0
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(I)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public delete(Lorg/mozilla/javascript/Symbol;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/SymbolScriptable;->delete(Lorg/mozilla/javascript/Symbol;)V

    :cond_0
    return-void
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    sget-object p2, Lorg/mozilla/javascript/NativeWith;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 174
    new-array p1, p3, [Ljava/lang/Object;

    const-string p2, "With"

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "msg.cant.call.indirect"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/Context;->reportRuntimeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p1

    throw p1

    .line 177
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    if-ne p2, p0, :cond_0

    .line 84
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    if-ne p2, p0, :cond_0

    .line 65
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/Scriptable;->get(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    if-ne p2, p0, :cond_0

    .line 73
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->get(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 78
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    return-object p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "With"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParentScope()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public getPrototype()Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-object v0
.end method

.method public has(ILorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 59
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(ILorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 0

    .line 46
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {p2, p1, p2}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 51
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v0, p2, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p2

    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/javascript/SymbolScriptable;->has(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasInstance(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1}, Lorg/mozilla/javascript/Scriptable;->hasInstance(Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    return p1
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    .line 107
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 108
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    .line 91
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    if-ne p2, p0, :cond_0

    .line 98
    iget-object p2, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    instance-of v1, v0, Lorg/mozilla/javascript/SymbolScriptable;

    if-eqz v1, :cond_1

    .line 101
    check-cast v0, Lorg/mozilla/javascript/SymbolScriptable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/SymbolScriptable;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setParentScope(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->parent:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method public setPrototype(Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/mozilla/javascript/NativeWith;->prototype:Lorg/mozilla/javascript/Scriptable;

    return-void
.end method

.method protected updateDotQuery(Z)Ljava/lang/Object;
    .locals 0

    .line 166
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
