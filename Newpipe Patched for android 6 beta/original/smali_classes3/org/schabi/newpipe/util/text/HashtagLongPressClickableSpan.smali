.class final Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;
.super Lorg/schabi/newpipe/util/text/LongPressClickableSpan;
.source "HashtagLongPressClickableSpan.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final parsedHashtag:Ljava/lang/String;

.field private final relatedInfoServiceId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    .line 24
    iput p3, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->relatedInfoServiceId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 29
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    iget v0, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->relatedInfoServiceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->openSearch(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;->parsedHashtag:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
