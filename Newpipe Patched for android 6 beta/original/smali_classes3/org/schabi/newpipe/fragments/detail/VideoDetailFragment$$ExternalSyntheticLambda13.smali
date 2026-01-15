.class public final synthetic Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment$$ExternalSyntheticLambda13;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->$r8$lambda$xW76oZjQrp0sMB9LlKfo9ugYu1g(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/database/stream/model/StreamStateEntity;)V

    return-void
.end method
