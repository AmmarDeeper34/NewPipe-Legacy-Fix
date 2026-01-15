.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ml;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ml.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ml;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-string v0, "\u0d38\u0d46\u0d15\u0d4d\u0d15\u0d28\u0d4d\u0d31\u0d4d"

    const-string v1, "\u0d38\u0d46\u0d15\u0d4d\u0d15\u0d7b\u0d21\u0d4d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u0d2e\u0d3f\u0d28\u0d3f\u0d31\u0d4d\u0d31\u0d4d"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0d2e\u0d23\u0d3f\u0d15\u0d4d\u0d15\u0d42\u0d7c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0d26\u0d3f\u0d35\u0d38\u0d02"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0d06\u0d34\u0d4d\u0d1a"

    const-string v1, "\u0d06\u0d34\u0d4d\u200c\u0d1a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u0d2e\u0d3e\u0d38\u0d02"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0d35\u0d7c\u0d37\u0d02"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ml;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ml;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ml;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ml;

    return-object v0
.end method
