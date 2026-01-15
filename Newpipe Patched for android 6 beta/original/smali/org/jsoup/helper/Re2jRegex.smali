.class final Lorg/jsoup/helper/Re2jRegex;
.super Lorg/jsoup/helper/Regex;
.source "Re2jRegex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;
    }
.end annotation


# static fields
.field private static final unused:Ljava/util/regex/Pattern;


# instance fields
.field private final re2jPattern:Lcom/google/re2j/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, ""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/Re2jRegex;->unused:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/google/re2j/Pattern;)V
    .locals 1

    .line 12
    sget-object v0, Lorg/jsoup/helper/Re2jRegex;->unused:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/jsoup/helper/Regex;-><init>(Ljava/util/regex/Pattern;)V

    .line 13
    iput-object p1, p0, Lorg/jsoup/helper/Re2jRegex;->re2jPattern:Lcom/google/re2j/Pattern;

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lorg/jsoup/helper/Regex;
    .locals 3

    .line 18
    :try_start_0
    new-instance v0, Lorg/jsoup/helper/Re2jRegex;

    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/helper/Re2jRegex;-><init>(Lcom/google/re2j/Pattern;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern complexity error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 20
    new-instance v0, Lorg/jsoup/helper/ValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pattern syntax error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/jsoup/helper/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public matcher(Ljava/lang/CharSequence;)Lorg/jsoup/helper/Regex$Matcher;
    .locals 2

    .line 28
    new-instance v0, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;

    iget-object v1, p0, Lorg/jsoup/helper/Re2jRegex;->re2jPattern:Lcom/google/re2j/Pattern;

    invoke-virtual {v1, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;-><init>(Lcom/google/re2j/Matcher;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/jsoup/helper/Re2jRegex;->re2jPattern:Lcom/google/re2j/Pattern;

    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
