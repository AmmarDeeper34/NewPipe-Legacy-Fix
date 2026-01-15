.class public Lorg/schabi/newpipe/extractor/timeago/patterns/hi;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "hi.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

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
    const-string v0, "\u0938\u0947\u0915\u0902\u0921"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u092e\u093f\u0928\u091f"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0918\u0902\u091f\u093e"

    const-string v1, "\u0918\u0902\u091f\u0947"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0926\u093f\u0928"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0938\u092a\u094d\u0924\u093e\u0939"

    const-string v1, "\u0939\u092b\u093c\u094d\u0924\u0947"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u092e\u0939\u0940\u0928\u093e"

    const-string v1, "\u092e\u0939\u0940\u0928\u0947"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0935\u0930\u094d\u0937"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/hi;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/hi;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/hi;

    return-object v0
.end method
