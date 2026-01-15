.class public Lorg/schabi/newpipe/extractor/timeago/patterns/am;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "am.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/am;

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
    const-string v0, "\u1230\u12ae\u1295\u12f6\u127d"

    const-string v1, "\u1234\u12ae\u1295\u12f5"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u12f0\u1242\u1243"

    const-string v1, "\u12f0\u1242\u1243\u12ce\u127d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u1230\u12d3\u1275"

    const-string v1, "\u1230\u12d3\u1276\u127d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u1240\u1295"

    const-string v1, "\u1240\u1296\u127d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u1233\u121d\u1295\u1273\u1275"

    const-string v1, "\u1233\u121d\u1295\u1275"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u12c8\u122b\u1275"

    const-string v1, "\u12c8\u122d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u12d3\u1218\u1273\u1275"

    const-string v1, "\u12d3\u1218\u1275"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/am;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/am;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/am;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/am;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/am;

    return-object v0
.end method
