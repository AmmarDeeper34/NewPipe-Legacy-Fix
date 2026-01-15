.class public Lorg/mozilla/javascript/LambdaConstructor;
.super Lorg/mozilla/javascript/LambdaFunction;
.source "LambdaConstructor.java"


# static fields
.field public static final CONSTRUCTOR_DEFAULT:I = 0x3

.field public static final CONSTRUCTOR_FUNCTION:I = 0x1

.field public static final CONSTRUCTOR_NEW:I = 0x2

.field private static final serialVersionUID:J = 0x255914f6e1d7d7a8L


# instance fields
.field private final flags:I

.field protected final transient targetConstructor:Lorg/mozilla/javascript/Constructable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 77
    iput-object p5, p0, Lorg/mozilla/javascript/LambdaConstructor;->targetConstructor:Lorg/mozilla/javascript/Constructable;

    .line 78
    iput p4, p0, Lorg/mozilla/javascript/LambdaConstructor;->flags:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;Lorg/mozilla/javascript/Constructable;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 103
    iput-object p5, p0, Lorg/mozilla/javascript/LambdaConstructor;->targetConstructor:Lorg/mozilla/javascript/Constructable;

    const/4 p1, 0x3

    .line 104
    iput p1, p0, Lorg/mozilla/javascript/LambdaConstructor;->flags:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Constructable;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 56
    iput-object p4, p0, Lorg/mozilla/javascript/LambdaConstructor;->targetConstructor:Lorg/mozilla/javascript/Constructable;

    const/4 p1, 0x3

    .line 57
    iput p1, p0, Lorg/mozilla/javascript/LambdaConstructor;->flags:I

    return-void
.end method

.method public static convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 279
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 280
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "msg.this.not.instance"

    invoke-static {p1, p0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p0

    throw p0
.end method

.method private fireConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaConstructor;->targetConstructor:Lorg/mozilla/javascript/Constructable;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/mozilla/javascript/Scriptable;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 133
    invoke-interface {p1, p2}, Lorg/mozilla/javascript/Scriptable;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method

.method private getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;
    .locals 2

    .line 286
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getPrototypeProperty()Ljava/lang/Object;

    move-result-object v0

    .line 287
    instance-of v1, v0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v1, :cond_0

    .line 290
    check-cast v0, Lorg/mozilla/javascript/ScriptableObject;

    return-object v0

    .line 288
    :cond_0
    const-string v0, "Not properly a lambda constructor"

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeError(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 113
    iget v0, p0, Lorg/mozilla/javascript/LambdaConstructor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaFunction;->target:Lorg/mozilla/javascript/Callable;

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0, p1, p2, p4}, Lorg/mozilla/javascript/LambdaConstructor;->fireConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 119
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.constructor.no.function"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 124
    iget v0, p0, Lorg/mozilla/javascript/LambdaConstructor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/LambdaConstructor;->fireConstructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaFunction;->getFunctionName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.no.new"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;I)V
    .locals 1

    .line 230
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 231
    invoke-virtual {p0, p2, v0, p5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V
    .locals 1

    .line 267
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 268
    invoke-virtual {v0, p6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    .line 269
    invoke-virtual {p0, p2, v0, p5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;Ljava/lang/String;ILorg/mozilla/javascript/Callable;I)V
    .locals 1

    .line 251
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p3, p4, p5}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 252
    invoke-virtual {p0, p2, v0, p6}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void
.end method

.method public definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V
    .locals 1

    .line 142
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 143
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    const/4 p3, 0x0

    .line 144
    invoke-virtual {p1, p2, v0, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V
    .locals 1

    .line 158
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 159
    invoke-virtual {v0, p6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    .line 160
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p2, v0, p5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/SymbolKey;ILorg/mozilla/javascript/Callable;II)V
    .locals 4

    .line 175
    new-instance v0, Lorg/mozilla/javascript/LambdaFunction;

    invoke-virtual {p2}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, p4}, Lorg/mozilla/javascript/LambdaFunction;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;)V

    .line 176
    invoke-virtual {v0, p6}, Lorg/mozilla/javascript/BaseFunction;->setStandardPropertyAttributes(I)V

    .line 177
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    .line 178
    invoke-virtual {p1, p2, v0, p5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void
.end method

.method public definePrototypeProperty(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .line 183
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 200
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;I)V

    return-void
.end method

.method public definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Context;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lorg/mozilla/javascript/Scriptable;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 215
    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;I)V

    return-void
.end method

.method public definePrototypeProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V
    .locals 1

    .line 188
    invoke-direct {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getPrototypeScriptable()Lorg/mozilla/javascript/ScriptableObject;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    return-void
.end method

.method protected getTargetConstructor()Lorg/mozilla/javascript/Constructable;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaConstructor;->targetConstructor:Lorg/mozilla/javascript/Constructable;

    return-object v0
.end method
