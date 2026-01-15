.class public Lcom/grack/nanojson/JsonArray;
.super Ljava/util/ArrayList;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getArray(I)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 0
    new-instance v0, Lcom/grack/nanojson/JsonArray;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getArray(ILcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;

    move-result-object p1

    return-object p1
.end method

.method public getArray(ILcom/grack/nanojson/JsonArray;)Lcom/grack/nanojson/JsonArray;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonArray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/grack/nanojson/JsonArray;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getInt(I)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getInt(II)I
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getObject(I)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 0
    new-instance v0, Lcom/grack/nanojson/JsonObject;

    invoke-direct {v0}, Lcom/grack/nanojson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getObject(ILcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILcom/grack/nanojson/JsonObject;)Lcom/grack/nanojson/JsonObject;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/grack/nanojson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/grack/nanojson/JsonObject;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonArray;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public streamAs(Ljava/lang/Class;)Lj$/util/stream/Stream;
    .locals 2

    .line 0
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public streamAsJsonObjects()Lj$/util/stream/Stream;
    .locals 1

    .line 0
    const-class v0, Lcom/grack/nanojson/JsonObject;

    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->streamAs(Ljava/lang/Class;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
