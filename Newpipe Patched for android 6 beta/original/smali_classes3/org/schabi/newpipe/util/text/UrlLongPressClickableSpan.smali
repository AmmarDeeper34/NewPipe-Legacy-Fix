.class final Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "UrlLongPressClickableSpan.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 25
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/text/InternalUrlsHandler;->handleUrlDescriptionTimestamp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)V
    .locals 1

    .line 32
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;->url:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
