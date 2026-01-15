.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ur;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ur.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

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
    const-string v0, "\u0633\u06cc\u06a9\u0646\u0688"

    const-string v1, "\u0633\u06cc\u06a9\u0646\u0688\u0632"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u0645\u0646\u0679"

    const-string v1, "\u0645\u0646\u0679\u0633"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u06af\u06be\u0646\u0679\u06c1"

    const-string v1, "\u06af\u06be\u0646\u0679\u06d2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u062f\u0646"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u06c1\u0641\u062a\u06c1"

    const-string v1, "\u06c1\u0641\u062a\u06d2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u0645\u0627\u06c1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0633\u0627\u0644"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ur;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ur;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ur;

    return-object v0
.end method
