.class public Lorg/schabi/newpipe/extractor/timeago/patterns/mr;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "mr.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

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
    const-string v0, "\u0938\u0947\u0915\u0902\u0926\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u0938\u0947\u0915\u0902\u0926\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u092e\u093f\u0928\u093f\u091f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u092e\u093f\u0928\u093f\u091f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0924\u093e\u0938\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u0924\u093e\u0938\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0926\u093f\u0935\u0938\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u0926\u093f\u0935\u0938\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0906\u0920\u0935\u0921\u094d\u092f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u0906\u0920\u0935\u0921\u094d\u092f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u092e\u0939\u093f\u0928\u094d\u092f\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u092e\u0939\u093f\u0928\u094d\u092f\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0935\u0930\u094d\u0937\u093e\u0902\u092a\u0942\u0930\u094d\u0935\u0940"

    const-string v1, "\u0935\u0930\u094d\u0937\u093e\u092a\u0942\u0930\u094d\u0935\u0940"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->YEARS:[Ljava/lang/String;

    const-string v1, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/mr;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/mr;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/mr;

    return-object v0
.end method
