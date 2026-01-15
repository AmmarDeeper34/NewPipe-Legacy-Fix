.class Lorg/schabi/newpipe/player/Player$3;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/Player;->getCurrentThumbnailTarget()Lcom/squareup/picasso/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/Player;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$3;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 895
    sget-object p2, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v0, "Thumbnail - onBitmapFailed() called"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    iget-object p1, p0, Lorg/schabi/newpipe/player/Player$3;->this$0:Lorg/schabi/newpipe/player/Player;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/Player;->-$$Nest$monThumbnailLoaded(Lorg/schabi/newpipe/player/Player;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 3

    .line 884
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 885
    sget-object v0, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thumbnail - onBitmapLoaded() called with: bitmap = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], from = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 885
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/player/Player$3;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/player/Player;->-$$Nest$monThumbnailLoaded(Lorg/schabi/newpipe/player/Player;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 902
    sget-boolean p1, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 903
    sget-object p1, Lorg/schabi/newpipe/player/Player;->TAG:Ljava/lang/String;

    const-string v0, "Thumbnail - onPrepareLoad() called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
