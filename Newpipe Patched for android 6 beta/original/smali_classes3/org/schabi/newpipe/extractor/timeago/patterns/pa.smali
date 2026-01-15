.class public Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "pa.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

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
    const-string v0, "\u0a38\u0a15\u0a3f\u0a70\u0a1f"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u0a2e\u0a3f\u0a70\u0a1f"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0a18\u0a70\u0a1f\u0a3e"

    const-string v1, "\u0a18\u0a70\u0a1f\u0a47"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0a26\u0a3f\u0a28"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0a39\u0a2b\u0a3c\u0a24\u0a3e"

    const-string v1, "\u0a39\u0a2b\u0a3c\u0a24\u0a47"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u0a2e\u0a39\u0a40\u0a28\u0a3e"

    const-string v1, "\u0a2e\u0a39\u0a40\u0a28\u0a47"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0a38\u0a3e\u0a32"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/pa;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/pa;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/pa;

    return-object v0
.end method
