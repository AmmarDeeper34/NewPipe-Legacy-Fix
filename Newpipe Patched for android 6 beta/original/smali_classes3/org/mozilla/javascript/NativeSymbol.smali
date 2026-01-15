.class public Lorg/mozilla/javascript/NativeSymbol;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "NativeSymbol.java"

# interfaces
.implements Lorg/mozilla/javascript/Symbol;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "Symbol"

.field private static final GLOBAL_TABLE_KEY:Ljava/lang/Object;

.field public static final TYPE_NAME:Ljava/lang/String; = "symbol"

.field private static final serialVersionUID:J = -0x82e774764cfb173L


# instance fields
.field private final key:Lorg/mozilla/javascript/SymbolKey;

.field private final symbolData:Lorg/mozilla/javascript/NativeSymbol;


# direct methods
.method public static synthetic $r8$lambda$3z_PFkvXyxvh5cvps-B_yRmKoa8(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 0

    .line 161
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OsTVkbF4xsXApnL_0Kft4RPmAIU(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SQ_Qj5cP-gVzJI8LwVbSLHpL_2U(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/mozilla/javascript/NativeSymbol;->js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YxAS7Qp8nk55iGP3Pt78COlKjso(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_valueOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a5sCWZQh4F93X9P7uBAAX_LLPEU(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeSymbol;->js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kHi7UZsC9EbiDSLMzUoV0sk67Is(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeSymbol;->js_description(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z_qllgnZ9UON97PWTjcQ2-FRT5A(Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-static {p1, p2, p4, p0}, Lorg/mozilla/javascript/NativeSymbol;->js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/LambdaConstructor;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/javascript/NativeSymbol;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 93
    iget-object v0, p1, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iput-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    .line 94
    iget-object p1, p1, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/SymbolKey;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    .line 89
    iput-object p0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-void
.end method

.method private static constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 2

    const/4 v0, 0x1

    .line 113
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3, v0}, Lorg/mozilla/javascript/LambdaConstructor;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method private static constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/SymbolKey;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 3

    const/4 v0, 0x2

    .line 108
    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p1, p3, v0}, Lorg/mozilla/javascript/LambdaConstructor;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method private static createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V
    .locals 0

    .line 118
    invoke-static {p0, p1, p2, p4}, Lorg/mozilla/javascript/NativeSymbol;->constructSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Lorg/mozilla/javascript/SymbolKey;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    const/4 p1, 0x7

    .line 119
    invoke-virtual {p2, p3, p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method private static getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/javascript/Scriptable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/javascript/NativeSymbol;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    .line 259
    sget-object v0, Lorg/mozilla/javascript/NativeSymbol;->GLOBAL_TABLE_KEY:Ljava/lang/Object;

    .line 260
    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getAssociatedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 263
    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/ScriptableObject;->associateValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private static getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    .line 123
    const-class v0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-static {p0, v0}, Lorg/mozilla/javascript/LambdaConstructor;->convertThisObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 7

    .line 29
    new-instance v0, Lorg/mozilla/javascript/LambdaConstructor;

    new-instance v5, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "Symbol"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    const/4 p1, 0x7

    .line 37
    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/BaseFunction;->setPrototypePropertyAttributes(I)V

    .line 39
    new-instance v4, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda1;-><init>(Lorg/mozilla/javascript/LambdaConstructor;)V

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v2, "for"

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 46
    new-instance v4, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "keyFor"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->defineConstructorMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 49
    new-instance v4, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "toString"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 51
    new-instance v4, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "valueOf"

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;ILorg/mozilla/javascript/Callable;II)V

    .line 53
    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->TO_PRIMITIVE:Lorg/mozilla/javascript/SymbolKey;

    new-instance v4, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda4;-><init>()V

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeMethod(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/SymbolKey;ILorg/mozilla/javascript/Callable;II)V

    .line 60
    sget-object p1, Lorg/mozilla/javascript/SymbolKey;->TO_STRING_TAG:Lorg/mozilla/javascript/SymbolKey;

    const-string v3, "Symbol"

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v3, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Symbol;Ljava/lang/Object;I)V

    .line 61
    new-instance v5, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda5;-><init>()V

    const-string v6, "description"

    invoke-virtual {v0, p0, v6, v5, v4}, Lorg/mozilla/javascript/LambdaConstructor;->definePrototypeProperty(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/util/function/Function;I)V

    const/4 v4, 0x2

    .line 64
    invoke-static {v1, v3, v0, v4}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 67
    const-string v3, "iterator"

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->ITERATOR:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, v3, v4}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 68
    const-string v3, "species"

    sget-object v4, Lorg/mozilla/javascript/SymbolKey;->SPECIES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, v3, v4}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 69
    const-string v3, "toStringTag"

    invoke-static {p0, v1, v0, v3, p1}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 70
    const-string p1, "hasInstance"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->HAS_INSTANCE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 71
    const-string p1, "isConcatSpreadable"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_CONCAT_SPREADABLE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 72
    const-string p1, "isRegExp"

    sget-object v3, Lorg/mozilla/javascript/SymbolKey;->IS_REGEXP:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v3}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 73
    const-string p1, "toPrimitive"

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 74
    const-string p1, "match"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->MATCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 75
    const-string p1, "matchAll"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->MATCH_ALL:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 76
    const-string p1, "replace"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->REPLACE:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 77
    const-string p1, "search"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->SEARCH:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 78
    const-string p1, "split"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->SPLIT:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    .line 79
    const-string p1, "unscopables"

    sget-object v2, Lorg/mozilla/javascript/SymbolKey;->UNSCOPABLES:Lorg/mozilla/javascript/SymbolKey;

    invoke-static {p0, v1, v0, p1, v2}, Lorg/mozilla/javascript/NativeSymbol;->createStandardSymbol(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;Lorg/mozilla/javascript/SymbolKey;)V

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {v0}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    :cond_0
    return-void
.end method

.method private static isStrictMode()Z
    .locals 1

    .line 190
    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static js_constructor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeSymbol;
    .locals 1

    .line 128
    array-length p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-object p1, p2, p0

    invoke-static {p1}, Lorg/mozilla/javascript/Undefined;->isUndefined(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 129
    aget-object p0, p2, p0

    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 132
    :goto_0
    array-length p1, p2

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 133
    new-instance p0, Lorg/mozilla/javascript/NativeSymbol;

    aget-object p1, p2, v0

    check-cast p1, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object p0

    .line 136
    :cond_1
    new-instance p1, Lorg/mozilla/javascript/NativeSymbol;

    new-instance p2, Lorg/mozilla/javascript/SymbolKey;

    invoke-direct {p2, p0}, Lorg/mozilla/javascript/SymbolKey;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/mozilla/javascript/NativeSymbol;-><init>(Lorg/mozilla/javascript/SymbolKey;)V

    return-object p1
.end method

.method private static js_description(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-static {p0}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getDescription()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_for(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/LambdaConstructor;)Ljava/lang/Object;
    .locals 2

    .line 156
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 158
    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 160
    :goto_0
    invoke-static {p1}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;

    move-result-object v0

    .line 161
    new-instance v1, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p3, p2}, Lorg/mozilla/javascript/NativeSymbol$$ExternalSyntheticLambda6;-><init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/LambdaConstructor;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static js_keyFor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 167
    array-length p2, p3

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .line 168
    :goto_0
    instance-of p3, p2, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz p3, :cond_3

    .line 171
    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    .line 173
    invoke-static {p1}, Lorg/mozilla/javascript/NativeSymbol;->getGlobalMap(Lorg/mozilla/javascript/Scriptable;)Ljava/util/Map;

    move-result-object p0

    .line 174
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/mozilla/javascript/NativeSymbol;

    iget-object p3, p3, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    iget-object v0, p2, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    if-ne p3, v0, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 179
    :cond_2
    sget-object p0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p0

    .line 169
    :cond_3
    const-string p2, "TypeError"

    const-string p3, "Not a Symbol"

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptRuntime;->throwCustomError(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/JavaScriptException;

    move-result-object p0

    throw p0
.end method

.method private static js_toString(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-static {p2}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_valueOf(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    invoke-static {p2}, Lorg/mozilla/javascript/NativeSymbol;->getSelf(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/NativeSymbol;

    move-result-object p0

    iget-object p0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "Symbol"

    return-object v0
.end method

.method getKey()Lorg/mozilla/javascript/SymbolKey;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    return-object v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "symbol"

    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/mozilla/javascript/ScriptableObject;->getTypeOf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSymbol()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->symbolData:Lorg/mozilla/javascript/NativeSymbol;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 205
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 208
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 199
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1

    .line 214
    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->isSymbol()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/ScriptableObject;->put(Lorg/mozilla/javascript/Symbol;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/NativeSymbol;->isStrictMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 217
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.no.assign.symbol.strict"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/mozilla/javascript/NativeSymbol;->key:Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {v0}, Lorg/mozilla/javascript/SymbolKey;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
