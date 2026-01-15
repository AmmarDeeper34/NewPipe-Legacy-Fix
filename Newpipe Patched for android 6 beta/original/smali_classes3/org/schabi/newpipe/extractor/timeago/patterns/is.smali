.class public Lorg/schabi/newpipe/extractor/timeago/patterns/is;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "is.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "second"

    const-string v1, "seconds"

    const-string v2, "sek\u00fandu"

    const-string v3, "sek\u00fandum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minute"

    const-string v1, "minutes"

    const-string v2, "m\u00edn\u00fatu"

    const-string v3, "m\u00edn\u00fatum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "hour"

    const-string v1, "hours"

    const-string v2, "klukkustund"

    const-string v3, "klukkustundum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "day"

    const-string v1, "days"

    const-string v2, "degi"

    const-string v3, "d\u00f6gum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "week"

    const-string v1, "weeks"

    const-string v2, "viku"

    const-string v3, "vikum"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "m\u00e1nu\u00f0i"

    const-string v1, "m\u00e1nu\u00f0um"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u00e1ri"

    const-string v1, "\u00e1rum"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/is;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/is;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/is;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/is;

    return-object v0
.end method
