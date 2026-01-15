.class final Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;
.super Ljava/lang/Object;
.source "Re2jRegex.java"

# interfaces
.implements Lorg/jsoup/helper/Regex$Matcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/Re2jRegex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Re2jMatcher"
.end annotation


# instance fields
.field private final delegate:Lcom/google/re2j/Matcher;


# direct methods
.method constructor <init>(Lcom/google/re2j/Matcher;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;->delegate:Lcom/google/re2j/Matcher;

    return-void
.end method


# virtual methods
.method public find()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jsoup/helper/Re2jRegex$Re2jMatcher;->delegate:Lcom/google/re2j/Matcher;

    invoke-virtual {v0}, Lcom/google/re2j/Matcher;->find()Z

    move-result v0

    return v0
.end method
