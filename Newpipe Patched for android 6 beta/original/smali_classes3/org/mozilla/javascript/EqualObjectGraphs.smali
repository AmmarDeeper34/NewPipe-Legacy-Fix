.class final Lorg/mozilla/javascript/EqualObjectGraphs;
.super Ljava/lang/Object;
.source "EqualObjectGraphs.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final instance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/mozilla/javascript/EqualObjectGraphs;",
            ">;"
        }
    .end annotation
.end field

.field private static final valueClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final currentlyCompared:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final knownEquals:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$eIdNo0Z3UYgngYa2ZvBo6MZupGc(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 299
    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 300
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 301
    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    .line 302
    :cond_0
    instance-of p0, p1, Ljava/lang/String;

    if-nez p0, :cond_1

    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_8

    :cond_1
    return v1

    .line 305
    :cond_2
    instance-of v0, p0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 306
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 307
    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 308
    :cond_3
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    return v2

    .line 310
    :cond_4
    instance-of p0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz p0, :cond_8

    return v1

    .line 313
    :cond_5
    instance-of v0, p0, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_8

    .line 314
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_6

    .line 318
    check-cast p0, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 319
    :cond_6
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_7

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_8

    :cond_7
    return v2

    .line 324
    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Byte;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Character;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Double;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Long;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Short;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 45
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 43
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->valueClasses:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/IdentityHashMap;

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/IdentityHashMap;

    return-void
.end method

.method private equalGraphsNoMemo(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 142
    instance-of v0, p1, Lorg/mozilla/javascript/Wrapper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 143
    instance-of v0, p2, Lorg/mozilla/javascript/Wrapper;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/mozilla/javascript/Wrapper;

    .line 144
    invoke-interface {p1}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/Wrapper;

    invoke-interface {p2}, Lorg/mozilla/javascript/Wrapper;->unwrap()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 145
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaTopPackage;

    if-eqz v0, :cond_2

    .line 147
    instance-of p1, p2, Lorg/mozilla/javascript/NativeJavaTopPackage;

    return p1

    .line 148
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_4

    .line 149
    instance-of v0, p2, Lorg/mozilla/javascript/Scriptable;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    check-cast p2, Lorg/mozilla/javascript/Scriptable;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalScriptables(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    .line 150
    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_6

    .line 151
    instance-of v0, p2, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/mozilla/javascript/SymbolKey;

    .line 152
    invoke-virtual {p1}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p2}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v1

    .line 153
    :cond_6
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 154
    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v1

    .line 155
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 156
    invoke-static {p1, p2}, Lj$/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 157
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 158
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v2

    :cond_a
    return v1

    .line 159
    :cond_b
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 160
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalMaps(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v2

    :cond_c
    return v1

    .line 161
    :cond_d
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_f

    .line 162
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalSets(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    :cond_e
    return v1

    .line 163
    :cond_f
    instance-of v0, p1, Lorg/mozilla/javascript/NativeGlobal;

    if-eqz v0, :cond_10

    .line 164
    instance-of p1, p2, Lorg/mozilla/javascript/NativeGlobal;

    return p1

    .line 165
    :cond_10
    instance-of v0, p1, Lorg/mozilla/javascript/JavaAdapter;

    if-eqz v0, :cond_11

    .line 166
    instance-of p1, p2, Lorg/mozilla/javascript/JavaAdapter;

    return p1

    .line 170
    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static equalInterpretedFunctions(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z
    .locals 0

    .line 290
    invoke-virtual {p0}, Lorg/mozilla/javascript/InterpretedFunction;->getRawSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/mozilla/javascript/InterpretedFunction;->getRawSource()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private equalLists(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 237
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 238
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 239
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private equalMaps(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 250
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 253
    :cond_0
    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    .line 254
    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p2

    .line 256
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    .line 222
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 225
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 226
    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private equalScriptables(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 7

    .line 174
    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v0

    .line 175
    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object v1

    .line 176
    invoke-direct {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 179
    :cond_0
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 181
    aget-object v5, v0, v4

    invoke-static {p1, v5}, Lorg/mozilla/javascript/EqualObjectGraphs;->getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-static {p2, v6}, Lorg/mozilla/javascript/EqualObjectGraphs;->getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_2
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    .line 187
    :cond_3
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    invoke-interface {p2}, Lorg/mozilla/javascript/Scriptable;->getParentScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    .line 192
    :cond_4
    instance-of v0, p1, Lorg/mozilla/javascript/NativeContinuation;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 193
    instance-of v0, p2, Lorg/mozilla/javascript/NativeContinuation;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/mozilla/javascript/NativeContinuation;

    check-cast p2, Lorg/mozilla/javascript/NativeContinuation;

    .line 194
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeContinuation;->equalImplementations(Lorg/mozilla/javascript/NativeContinuation;Lorg/mozilla/javascript/NativeContinuation;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v3

    .line 196
    :cond_6
    instance-of v0, p1, Lorg/mozilla/javascript/NativeJavaPackage;

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 198
    :cond_7
    instance-of v0, p1, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_9

    .line 199
    instance-of v0, p2, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/mozilla/javascript/IdFunctionObject;

    check-cast p2, Lorg/mozilla/javascript/IdFunctionObject;

    .line 200
    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/IdFunctionObject;->equalObjectGraphs(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v3

    .line 202
    :cond_9
    instance-of v0, p1, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_b

    .line 203
    instance-of v0, p2, Lorg/mozilla/javascript/InterpretedFunction;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/mozilla/javascript/InterpretedFunction;

    check-cast p2, Lorg/mozilla/javascript/InterpretedFunction;

    .line 204
    invoke-static {p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalInterpretedFunctions(Lorg/mozilla/javascript/InterpretedFunction;Lorg/mozilla/javascript/InterpretedFunction;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v1

    :cond_a
    return v3

    .line 206
    :cond_b
    instance-of v0, p1, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_d

    .line 207
    instance-of v0, p2, Lorg/mozilla/javascript/ArrowFunction;

    if-eqz v0, :cond_c

    check-cast p1, Lorg/mozilla/javascript/ArrowFunction;

    check-cast p2, Lorg/mozilla/javascript/ArrowFunction;

    .line 208
    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/ArrowFunction;->equalObjectGraphs(Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/ArrowFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    :cond_c
    return v3

    .line 210
    :cond_d
    instance-of v0, p1, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_f

    .line 211
    instance-of v0, p2, Lorg/mozilla/javascript/BoundFunction;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/mozilla/javascript/BoundFunction;

    check-cast p2, Lorg/mozilla/javascript/BoundFunction;

    .line 212
    invoke-static {p1, p2, p0}, Lorg/mozilla/javascript/BoundFunction;->equalObjectGraphs(Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/BoundFunction;Lorg/mozilla/javascript/EqualObjectGraphs;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    return v3

    .line 214
    :cond_f
    instance-of v0, p1, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_11

    .line 215
    instance-of v0, p2, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/mozilla/javascript/NativeSymbol;

    .line 216
    invoke-virtual {p1}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p1

    check-cast p2, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p2}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    :cond_10
    return v3

    :cond_11
    return v1
.end method

.method private equalSets(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Set<",
            "*>;)Z"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedSet(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->sortedSet(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalObjectArrays([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static getIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 1

    .line 341
    instance-of v0, p0, Lorg/mozilla/javascript/ScriptableObject;

    if-eqz v0, :cond_0

    .line 343
    check-cast p0, Lorg/mozilla/javascript/ScriptableObject;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/mozilla/javascript/ScriptableObject;->getIds(ZZ)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    if-eqz v0, :cond_1

    .line 345
    check-cast p0, Lorg/mozilla/javascript/debug/DebuggableObject;

    invoke-interface {p0}, Lorg/mozilla/javascript/debug/DebuggableObject;->getAllIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 347
    :cond_1
    invoke-interface {p0}, Lorg/mozilla/javascript/Scriptable;->getIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getSortedIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;
    .locals 1

    .line 295
    invoke-static {p0}, Lorg/mozilla/javascript/EqualObjectGraphs;->getIds(Lorg/mozilla/javascript/Scriptable;)[Ljava/lang/Object;

    move-result-object p0

    .line 296
    new-instance v0, Lorg/mozilla/javascript/EqualObjectGraphs$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/mozilla/javascript/EqualObjectGraphs$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method private static getSymbolName(Lorg/mozilla/javascript/Symbol;)Ljava/lang/String;
    .locals 1

    .line 330
    instance-of v0, p0, Lorg/mozilla/javascript/SymbolKey;

    if-eqz v0, :cond_0

    .line 331
    check-cast p0, Lorg/mozilla/javascript/SymbolKey;

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 332
    :cond_0
    instance-of v0, p0, Lorg/mozilla/javascript/NativeSymbol;

    if-eqz v0, :cond_1

    .line 333
    check-cast p0, Lorg/mozilla/javascript/NativeSymbol;

    invoke-virtual {p0}, Lorg/mozilla/javascript/NativeSymbol;->getKey()Lorg/mozilla/javascript/SymbolKey;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/javascript/SymbolKey;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 336
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static getValue(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 352
    instance-of v0, p1, Lorg/mozilla/javascript/Symbol;

    if-eqz v0, :cond_0

    .line 353
    check-cast p1, Lorg/mozilla/javascript/Symbol;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Symbol;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 354
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 355
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 356
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 357
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 359
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static sortedEntries(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    .line 274
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    .line 275
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static sortedSet(Ljava/util/Set;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 283
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 284
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method static withThreadLocal(Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lorg/mozilla/javascript/EqualObjectGraphs;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 63
    sget-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/javascript/EqualObjectGraphs;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lorg/mozilla/javascript/EqualObjectGraphs;

    invoke-direct {v1}, Lorg/mozilla/javascript/EqualObjectGraphs;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 68
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object v0, Lorg/mozilla/javascript/EqualObjectGraphs;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 71
    throw p0

    .line 73
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method equalGraphs(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 84
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 85
    instance-of v0, p2, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 88
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 89
    :cond_3
    instance-of v2, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v2, :cond_6

    .line 90
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_5

    instance-of v0, p2, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    .line 91
    :cond_5
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 94
    :cond_6
    sget-object v2, Lorg/mozilla/javascript/EqualObjectGraphs;->valueClasses:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 98
    :cond_7
    iget-object v2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_8

    return v0

    :cond_8
    if-eqz v2, :cond_9

    return v1

    .line 115
    :cond_9
    iget-object v2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_a

    return v0

    :cond_a
    if-eqz v2, :cond_b

    return v1

    .line 124
    :cond_b
    iget-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    return v1

    .line 131
    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/EqualObjectGraphs;->equalGraphsNoMemo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 134
    iget-object v1, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->knownEquals:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_d
    iget-object p2, p0, Lorg/mozilla/javascript/EqualObjectGraphs;->currentlyCompared:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_e
    :goto_1
    return v1
.end method
