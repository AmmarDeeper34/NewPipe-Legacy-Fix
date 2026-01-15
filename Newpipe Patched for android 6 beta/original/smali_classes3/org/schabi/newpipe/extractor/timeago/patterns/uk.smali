.class public Lorg/schabi/newpipe/extractor/timeago/patterns/uk;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "uk.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

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
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u0438"

    const-string v1, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u0445\u0432\u0438\u043b\u0438\u043d\u0438"

    const-string v1, "\u0445\u0432\u0438\u043b\u0438\u043d\u0443"

    const-string v2, "\u0445\u0432\u0438\u043b\u0438\u043d"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0433\u043e\u0434\u0438\u043d\u0438"

    const-string v1, "\u0433\u043e\u0434\u0438\u043d\u0443"

    const-string v2, "\u0433\u043e\u0434\u0438\u043d"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0434\u043d\u0456"

    const-string v1, "\u0434\u043d\u0456\u0432"

    const-string v2, "\u0434\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u0442\u0438\u0436\u0434\u0435\u043d\u044c"

    const-string v1, "\u0442\u0438\u0436\u043d\u0456"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u043c\u0456\u0441\u044f\u0446\u0456"

    const-string v1, "\u043c\u0456\u0441\u044f\u0446\u0456\u0432"

    const-string v2, "\u043c\u0456\u0441\u044f\u0446\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0440\u043e\u043a\u0456\u0432"

    const-string v1, "\u0440\u0456\u043a"

    const-string v2, "\u0440\u043e\u043a\u0438"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/uk;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/uk;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/uk;

    return-object v0
.end method
