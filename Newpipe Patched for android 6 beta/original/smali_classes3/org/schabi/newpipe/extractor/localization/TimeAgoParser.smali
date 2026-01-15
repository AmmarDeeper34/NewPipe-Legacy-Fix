.class public Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
.super Ljava/lang/Object;
.source "TimeAgoParser.java"


# instance fields
.field private final now:Lj$/time/LocalDateTime;

.field private final patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;


# direct methods
.method public static synthetic $r8$lambda$HLHEZ3OSrB1qIxU1mQUlmvoUwLs(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
    .locals 3

    .line 78
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse the date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$SP1BbvDhrFN0miwMrbvlG8EzTyg(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    .line 74
    invoke-interface {p2, v0}, Lj$/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pZUk7inzVg4alGM9lz4R1tvynyY(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;Lj$/time/LocalDateTime;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    .line 32
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Lj$/time/LocalDateTime;

    return-void
.end method

.method private getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 3

    .line 107
    sget-object v0, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    if-ne p2, v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Lj$/time/LocalDateTime;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/LocalDateTime;->minusYears(J)Lj$/time/LocalDateTime;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lj$/time/LocalDateTime;->minusDays(J)Lj$/time/LocalDateTime;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->now:Lj$/time/LocalDateTime;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, p2}, Lj$/time/LocalDateTime;->minus(JLj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    .line 111
    :goto_0
    invoke-virtual {p2}, Lj$/time/temporal/ChronoUnit;->isDateBased()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {p1, v0}, Lj$/time/LocalDateTime;->truncatedTo(Lj$/time/temporal/TemporalUnit;)Lj$/time/LocalDateTime;

    move-result-object p1

    .line 114
    :cond_1
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    invoke-direct {v0, p1, p2}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/LocalDateTime;Z)V

    return-object v0
.end method

.method private parseChronoUnit(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;)V

    .line 73
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda1;-><init>()V

    .line 75
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj$/time/temporal/ChronoUnit;

    return-object p1
.end method

.method private parseTimeAgoAmount(Ljava/lang/String;)I
    .locals 2

    .line 63
    :try_start_0
    const-string v0, "\\D+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method private textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    .line 90
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const-string v0, "[ \\t\\xA0\\u1680\\u180e\\u2000-\\u200a\\u202f\\u205f\\u3000\\d]"

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->wordSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(^|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "($|"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 5

    .line 46
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->patternsHolder:Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;->specialCases()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/ChronoUnit;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 52
    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->textualDateMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    invoke-direct {p0, v3, v2}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p1

    return-object p1

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parseTimeAgoAmount(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->parseChronoUnit(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->getResultFor(ILj$/time/temporal/ChronoUnit;)Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object p1

    return-object p1
.end method
