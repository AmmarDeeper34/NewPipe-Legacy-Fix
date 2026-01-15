.class public Lorg/schabi/newpipe/extractor/timeago/patterns/ru;
.super Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;
.source "ru.java"


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final HOURS:[Ljava/lang/String;

.field private static final INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ru;

.field private static final MINUTES:[Ljava/lang/String;

.field private static final MONTHS:[Ljava/lang/String;

.field private static final SECONDS:[Ljava/lang/String;

.field private static final WEEKS:[Ljava/lang/String;

.field private static final WORD_SEPARATOR:Ljava/lang/String; = " "

.field private static final YEARS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "\u0441\u0435\u043a\u0443\u043d\u0434\u044b"

    const-string v1, "\u0442\u043e\u043b\u044c\u043a\u043e \u0447\u0442\u043e"

    const-string v2, "\u0441\u0435\u043a\u0443\u043d\u0434"

    const-string v3, "\u0441\u0435\u043a\u0443\u043d\u0434\u0443"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->SECONDS:[Ljava/lang/String;

    .line 13
    const-string v0, "\u043c\u0438\u043d\u0443\u0442\u0443"

    const-string v1, "\u043c\u0438\u043d\u0443\u0442\u044b"

    const-string v2, "\u043c\u0438\u043d\u0443\u0442"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->MINUTES:[Ljava/lang/String;

    .line 14
    const-string v0, "\u0447\u0430\u0441\u0430"

    const-string v1, "\u0447\u0430\u0441\u043e\u0432"

    const-string v2, "\u0447\u0430\u0441"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->HOURS:[Ljava/lang/String;

    .line 15
    const-string v0, "\u0434\u043d\u0435\u0439"

    const-string v1, "\u0434\u043d\u044f"

    const-string v2, "\u0434\u0435\u043d\u044c"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->DAYS:[Ljava/lang/String;

    .line 16
    const-string v0, "\u041d\u0435\u0434\u0435\u043b\u044e"

    const-string v1, "\u043d\u0435\u0434\u0435\u043b\u0438"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->WEEKS:[Ljava/lang/String;

    .line 17
    const-string v0, "\u043c\u0435\u0441\u044f\u0446\u0430"

    const-string v1, "\u043c\u0435\u0441\u044f\u0446\u0435\u0432"

    const-string v2, "\u043c\u0435\u0441\u044f\u0446"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->MONTHS:[Ljava/lang/String;

    .line 18
    const-string v0, "\u0433\u043e\u0434\u0430"

    const-string v1, "\u043b\u0435\u0442"

    const-string v2, "\u0413\u043e\u0434"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->YEARS:[Ljava/lang/String;

    .line 20
    new-instance v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ru;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .line 27
    sget-object v2, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->SECONDS:[Ljava/lang/String;

    sget-object v3, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->MINUTES:[Ljava/lang/String;

    sget-object v4, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->HOURS:[Ljava/lang/String;

    sget-object v5, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->DAYS:[Ljava/lang/String;

    sget-object v6, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->WEEKS:[Ljava/lang/String;

    sget-object v7, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->MONTHS:[Ljava/lang/String;

    sget-object v8, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->YEARS:[Ljava/lang/String;

    const-string v1, " "

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/extractor/timeago/PatternsHolder;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/timeago/patterns/ru;
    .locals 1

    .line 23
    sget-object v0, Lorg/schabi/newpipe/extractor/timeago/patterns/ru;->INSTANCE:Lorg/schabi/newpipe/extractor/timeago/patterns/ru;

    return-object v0
.end method
