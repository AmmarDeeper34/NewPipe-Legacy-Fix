.class public Lorg/schabi/newpipe/extractor/utils/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private firstObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/io/Serializable;"
        }
    .end annotation
.end field

.field private secondObject:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/io/Serializable;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljava/io/Serializable;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    .line 42
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    check-cast p1, Lorg/schabi/newpipe/extractor/utils/Pair;

    .line 115
    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v3, p1, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    iget-object p1, p1, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getFirst()Ljava/io/Serializable;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public getSecond()Ljava/io/Serializable;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 126
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setFirst(Ljava/io/Serializable;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->firstObject:Ljava/io/Serializable;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/Pair;->secondObject:Ljava/io/Serializable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
