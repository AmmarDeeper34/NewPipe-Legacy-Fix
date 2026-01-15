.class public abstract Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.super Ljava/lang/Object;
.source "PatternsHolder.java"


# instance fields
.field private final days:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hours:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minutes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final months:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final seconds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final specialCases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj$/time/temporal/ChronoUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final weeks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wordSeparator:Ljava/lang/String;

.field private final years:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RB_phnjuYXVs-UDFL15uDnAZ58I(Lj$/time/temporal/ChronoUnit;)Ljava/util/Map;
    .locals 0

    .line 80
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lj$/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    .line 29
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    .line 30
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    .line 31
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    .line 32
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    .line 33
    iput-object p7, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    .line 34
    iput-object p8, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 39
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 40
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    .line 39
    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lj$/time/temporal/ChronoUnit;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lj$/time/temporal/ChronoUnit;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 87
    sget-object v1, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public days()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->days:Ljava/util/Collection;

    return-object v0
.end method

.method public hours()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->hours:Ljava/util/Collection;

    return-object v0
.end method

.method public minutes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->minutes:Ljava/util/Collection;

    return-object v0
.end method

.method public months()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->months:Ljava/util/Collection;

    return-object v0
.end method

.method protected putSpecialCase(Lj$/time/temporal/ChronoUnit;Ljava/lang/String;I)V
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    new-instance v1, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 82
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public seconds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->seconds:Ljava/util/Collection;

    return-object v0
.end method

.method public specialCases()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lj$/time/temporal/ChronoUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases:Ljava/util/Map;

    return-object v0
.end method

.method public weeks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->weeks:Ljava/util/Collection;

    return-object v0
.end method

.method public wordSeparator()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public years()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->years:Ljava/util/Collection;

    return-object v0
.end method
