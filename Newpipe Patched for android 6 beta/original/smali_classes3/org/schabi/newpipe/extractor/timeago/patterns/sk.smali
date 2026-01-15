.class public Lorg/schabi/newpipe/extractor/timeago/patterns/sk;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "sk.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

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
    const-string v0, "sekundami"

    const-string v1, "sekundou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "min\u00fatami"

    const-string v1, "min\u00fatou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "hodinami"

    const-string v1, "hodinou"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "d\u0148ami"

    const-string v1, "d\u0148om"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "t\u00fd\u017ed\u0148ami"

    const-string v1, "t\u00fd\u017ed\u0148om"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "mesiacmi"

    const-string v1, "mesiacom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "rokmi"

    const-string v1, "rokom"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/sk;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/sk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/sk;

    return-object v0
.end method
