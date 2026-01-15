.class final Lorg/jsoup/helper/Regex$JdkMatcher;
.super Ljava/lang/Object;
.source "Regex.java"

# interfaces
.implements Lorg/jsoup/helper/Regex$Matcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/Regex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JdkMatcher"
.end annotation


# instance fields
.field private final delegate:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/jsoup/helper/Regex$JdkMatcher;->delegate:Ljava/util/regex/Matcher;

    return-void
.end method


# virtual methods
.method public find()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/jsoup/helper/Regex$JdkMatcher;->delegate:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method
