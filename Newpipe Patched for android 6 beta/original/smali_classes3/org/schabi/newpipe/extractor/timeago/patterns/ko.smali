.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ko;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ko.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ko;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = ""

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-string v0, "\ucd08"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\ubd84"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\uc2dc\uac04"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\uc77c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\uc8fc"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\uac1c\uc6d4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\ub144"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ko;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ko;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ko;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ko;

    return-object v0
.end method
