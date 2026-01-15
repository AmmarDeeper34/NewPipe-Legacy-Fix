.class public final synthetic Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;ILjava/util/List;Ljava/util/UUID;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    iput p2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$3:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;

    iget v1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda1;->f$3:Ljava/util/UUID;

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->$r8$lambda$xf3rqPDbIjHtkWGEXdNgyEUgybw(Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;ILjava/util/List;Ljava/util/UUID;)V

    return-void
.end method
