.class public abstract Lorg/schabi/newpipe/util/text/TextLinkifier;
.super Ljava/lang/Object;
.source "TextLinkifier.java"


# static fields
.field private static final HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SET_LINK_MOVEMENT_METHOD:Ljava/util/function/Consumer;

.field public static final TAG:Ljava/lang/String; = "TextLinkifier"


# direct methods
.method public static synthetic $r8$lambda$0gabQoF6J8IJWuGBrKtjwQoB_XI(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/lang/Throwable;)V
    .locals 2

    .line 269
    sget-object v0, Lorg/schabi/newpipe/util/text/TextLinkifier;->TAG:Ljava/lang/String;

    const-string v1, "Unable to linkify text"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/text/TextLinkifier;->setTextViewCharSequence(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ENxjE18Nvt_uUTydkiaRGHuIYgg(Landroid/widget/TextView;Ljava/util/function/Consumer;Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 267
    invoke-static {p0, p2, p1}, Lorg/schabi/newpipe/util/text/TextLinkifier;->setTextViewCharSequence(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VzLgc3FT6K-rrhoeT8JOe5TTcMk(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 235
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 240
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 241
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 242
    new-instance v5, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;

    invoke-direct {v5, p0, v4}, Lorg/schabi/newpipe/util/text/UrlLongPressClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 247
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 248
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    .line 245
    invoke-virtual {v0, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 249
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 256
    invoke-static {p0, v0, p2, p3, p4}, Lorg/schabi/newpipe/util/text/TextLinkifier;->addClickListenersOnTimestamps(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    .line 259
    :cond_1
    invoke-static {p0, v0, p2}, Lorg/schabi/newpipe/util/text/TextLinkifier;->addClickListenersOnHashtags(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lorg/schabi/newpipe/extractor/StreamingService;)V

    :cond_2
    return-object v0
.end method

.method public static synthetic $r8$lambda$XMEGDWmNCHSkaMLyoOeXPY1oZs4(Landroid/widget/TextView;)V
    .locals 1

    .line 38
    invoke-static {}, Lorg/schabi/newpipe/util/text/LongPressLinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "(#[\\p{L}0-9_]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/util/text/TextLinkifier;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    .line 37
    new-instance v0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/util/text/TextLinkifier;->SET_LINK_MOVEMENT_METHOD:Ljava/util/function/Consumer;

    return-void
.end method

.method private static addClickListenersOnHashtags(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 7

    .line 295
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    sget-object v1, Lorg/schabi/newpipe/util/text/TextLinkifier;->HASHTAGS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 299
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    .line 300
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    .line 301
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 305
    const-class v5, Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    invoke-virtual {p1, v3, v2, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/schabi/newpipe/util/text/LongPressClickableSpan;

    array-length v5, v5

    if-nez v5, :cond_0

    .line 307
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result v5

    .line 308
    new-instance v6, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;

    invoke-direct {v6, p0, v4, v5}, Lorg/schabi/newpipe/util/text/HashtagLongPressClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {p1, v6, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static addClickListenersOnTimestamps(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 8

    .line 339
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    sget-object v0, Lorg/schabi/newpipe/util/text/TimestampExtractor;->TIMESTAMPS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 343
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-static {v7, v2}, Lorg/schabi/newpipe/util/text/TimestampExtractor;->getTimestampFromMatcher(Ljava/util/regex/Matcher;Ljava/lang/String;)Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/util/text/TimestampLongPressClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;)V

    .line 354
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampStart()I

    move-result p0

    .line 355
    invoke-virtual {v6}, Lorg/schabi/newpipe/util/text/TimestampExtractor$TimestampMatchDTO;->timestampEnd()I

    move-result p2

    const/4 p3, 0x0

    .line 351
    invoke-virtual {p1, v0, p0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v1

    move-object p2, v4

    move-object p3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 6

    .line 231
    new-instance v0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 263
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->computation()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    .line 264
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1, p5}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;Ljava/util/function/Consumer;)V

    new-instance p2, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1, v2, p5}, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    .line 231
    invoke-virtual {v5, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static fromDescription(Landroid/widget/TextView;Lorg/schabi/newpipe/extractor/stream/Description;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 7

    .line 70
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    .line 80
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromPlainText(Landroid/widget/TextView;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 76
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromMarkdown(Landroid/widget/TextView;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Description;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p0 .. p6}, Lorg/schabi/newpipe/util/text/TextLinkifier;->fromHtml(Landroid/widget/TextView;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static fromHtml(Landroid/widget/TextView;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 0

    .line 117
    invoke-static {p1, p2}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    .line 116
    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static fromMarkdown(Landroid/widget/TextView;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/Markwon;->builder(Landroid/content/Context;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    .line 183
    invoke-static {}, Lio/noties/markwon/linkify/LinkifyPlugin;->create()Lio/noties/markwon/linkify/LinkifyPlugin;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    invoke-interface {v0}, Lio/noties/markwon/Markwon$Builder;->build()Lio/noties/markwon/Markwon;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p1}, Lio/noties/markwon/Markwon;->toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static fromPlainText(Landroid/widget/TextView;Ljava/lang/String;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 150
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static/range {p0 .. p5}, Lorg/schabi/newpipe/util/text/TextLinkifier;->changeLinkIntents(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static setTextViewCharSequence(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 364
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_0

    .line 366
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
