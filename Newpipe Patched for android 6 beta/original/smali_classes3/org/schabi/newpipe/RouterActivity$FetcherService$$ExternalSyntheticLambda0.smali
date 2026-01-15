.class public final synthetic Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity$FetcherService;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/RouterActivity$FetcherService;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$FetcherService$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/RouterActivity$FetcherService;->$r8$lambda$Gm42HbCrwKGAYPALV_YfaXcPSHg(Lorg/schabi/newpipe/RouterActivity$FetcherService;Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method
