.class public final synthetic Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$1:[I

    iput-object p3, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$1:[I

    iget-object v2, p0, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder$$ExternalSyntheticLambda2;->f$2:Lorg/schabi/newpipe/extractor/stream/Frameset;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/player/seekbarpreview/SeekbarPreviewThumbnailHolder;->$r8$lambda$7SqeYiqW-Ta9r2wnxyW-gMXDfLY(Landroid/graphics/Bitmap;[ILorg/schabi/newpipe/extractor/stream/Frameset;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
