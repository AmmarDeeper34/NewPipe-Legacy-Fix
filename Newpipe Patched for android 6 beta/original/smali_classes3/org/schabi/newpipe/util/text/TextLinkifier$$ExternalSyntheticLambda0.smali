.class public final synthetic Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/StreamingService;

    iput-object p4, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$2:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v3, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda0;->f$4:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/util/text/TextLinkifier;->$r8$lambda$VzLgc3FT6K-rrhoeT8JOe5TTcMk(Landroid/widget/TextView;Ljava/lang/CharSequence;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Lio/reactivex/rxjava3/disposables/CompositeDisposable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method
