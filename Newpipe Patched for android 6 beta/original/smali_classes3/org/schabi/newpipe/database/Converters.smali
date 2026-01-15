.class public final Lorg/schabi/newpipe/database/Converters;
.super Ljava/lang/Object;
.source "Converters.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final feedGroupIconOf(I)Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .locals 3

    .line 50
    invoke-static {}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 50
    invoke-virtual {v1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    .line 231
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final integerOf(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)I
    .locals 1

    const-string v0, "feedGroupIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getId()I

    move-result p1

    return p1
.end method

.method public final offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;
    .locals 2

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object p1

    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-static {p1, v0}, Lj$/time/OffsetDateTime;->ofInstant(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/OffsetDateTime;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final offsetDateTimeToTimestamp(Lj$/time/OffsetDateTime;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 30
    sget-object v0, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {p1, v0}, Lj$/time/OffsetDateTime;->withOffsetSameInstant(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->toInstant()Lj$/time/Instant;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final streamTypeOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/stream/StreamType;->valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object p1

    return-object p1
.end method

.method public final stringOf(Lorg/schabi/newpipe/extractor/stream/StreamType;)Ljava/lang/String;
    .locals 1

    const-string v0, "streamType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
