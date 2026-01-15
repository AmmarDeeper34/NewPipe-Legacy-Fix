.class public final Lorg/schabi/newpipe/database/stream/StreamWithState;
.super Ljava/lang/Object;
.source "StreamWithState.kt"


# instance fields
.field private final stateProgressMillis:Ljava/lang/Long;

.field private final stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    iput-object p2, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamWithState;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getStateProgressMillis()Ljava/lang/Long;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStream()Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stream:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamWithState;->stateProgressMillis:Ljava/lang/Long;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StreamWithState(stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateProgressMillis="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
