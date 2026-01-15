.class public Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LongPressLinkMovementMethod.java"


# static fields
.field private static final LONG_PRESS_TIME:I

.field private static instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;


# instance fields
.field private isLongPressed:Z

.field private longClickHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$Z80_0v40Vsu_FNbQZJ1eNJHnws8(Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;[Lorg/schabi/newpipe/util/text/LongPressClickableSpan;Landroid/widget/TextView;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->lambda$onTouchEvent$0([Lorg/schabi/newpipe/util/text/LongPressClickableSpan;Landroid/widget/TextView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->LONG_PRESS_TIME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 3

    .line 70
    sget-object v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    .line 72
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    .line 75
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->instance:Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;

    return-object v0
.end method

.method private synthetic lambda$onTouchEvent$0([Lorg/schabi/newpipe/util/text/LongPressClickableSpan;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    aget-object p1, p1, v0

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;->onLongClick(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 32
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_6

    .line 39
    :cond_1
    invoke-static {p1, p3}, Lorg/schabi/newpipe/util/text/TouchUtils;->getOffsetForHorizontalLine(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    move-result v3

    .line 40
    const-class v4, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    invoke-interface {p2, v3, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    .line 43
    array-length v4, v3

    if-eqz v4, :cond_6

    const/4 p3, 0x0

    if-ne v0, v1, :cond_4

    .line 45
    iget-object p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 46
    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    :cond_2
    iget-boolean p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    if-nez p2, :cond_3

    .line 49
    aget-object p2, v3, p3

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 51
    :cond_3
    iput-boolean p3, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->isLongPressed:Z

    goto :goto_0

    .line 53
    :cond_4
    aget-object v0, v3, p3

    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object p3, v3, p3

    .line 54
    invoke-interface {p2, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 53
    invoke-static {p2, v0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 55
    iget-object p2, p0, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->longClickHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    .line 56
    new-instance p3, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v3, p1}, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;[Lorg/schabi/newpipe/util/text/LongPressClickableSpan;Landroid/widget/TextView;)V

    sget p1, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->LONG_PRESS_TIME:I

    int-to-long v2, p1

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return v1

    .line 66
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
