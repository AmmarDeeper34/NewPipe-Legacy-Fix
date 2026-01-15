.class public abstract Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;
.super Ljava/lang/Object;
.source "TimeAgoPatternsManager.java"


# direct methods
.method private static getPatternsFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    .line 17
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/timeago/PatternsManager;->getPatterns(Ljava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .locals 1

    .line 23
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;Lj$/time/LocalDateTime;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeAgoParserFor(Lorg/schabi/newpipe/extractor/localization/Localization;Lj$/time/LocalDateTime;)Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;
    .locals 1

    .line 29
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/localization/TimeAgoPatternsManager;->getPatternsFor(Lorg/schabi/newpipe/extractor/localization/Localization;)Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;-><init>(Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;Lj$/time/LocalDateTime;)V

    return-object v0
.end method
