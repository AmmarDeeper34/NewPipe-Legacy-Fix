.class public Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "lt.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

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
    const-string v0, "sekund\u0119"

    const-string v1, "sekund\u017ei\u0173"

    const-string v2, "sekundes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "minut\u0119"

    const-string v1, "minu\u010di\u0173"

    const-string v2, "minutes"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "valand\u0105"

    const-string v1, "valand\u0173"

    const-string v2, "valandas"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "dienas"

    const-string v1, "dien\u0105"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "savaites"

    const-string v1, "savait\u0119"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "m\u0117nesi\u0173"

    const-string v1, "m\u0117nes\u012f"

    const-string v2, "m\u0117nesius"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "metus"

    const-string v1, "met\u0173"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/lt;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/lt;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/lt;

    return-object v0
.end method
