.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sq;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sq.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sq;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "sekonda"

    const-string v1, "sekond\u00eb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minuta"

    const-string v1, "minut\u00eb"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "or\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dit\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "jav\u00eb"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "muaj"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "vit"

    const-string v1, "vjet"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sq;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sq;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sq;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sq;

    return-object v0
.end method
