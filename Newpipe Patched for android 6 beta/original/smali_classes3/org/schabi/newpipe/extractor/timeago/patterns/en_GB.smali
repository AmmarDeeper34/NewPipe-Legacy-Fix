.class public Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "en_GB.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    const-string v0, "seconds"

    const-string v1, "sec"

    const-string v2, "second"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minutes"

    const-string v1, "min"

    const-string v2, "minute"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "hours"

    const-string v1, "hr"

    const-string v2, "hour"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "day"

    const-string v1, "days"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "weeks"

    const-string v1, "wk"

    const-string v2, "week"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "months"

    const-string v1, "mo"

    const-string v2, "month"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "years"

    const-string v1, "yr"

    const-string v2, "year"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/en_GB;

    return-object v0
.end method
