.class Lorg/schabi/newpipe/player/Player$1;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/Player;->getQualityResolver()Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;
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

    .line 328
    iput-object p1, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultResolutionIndex(Ljava/util/List;)I
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/Player;->-$$Nest$fgetcontext(Lorg/schabi/newpipe/player/Player;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    return p1

    .line 333
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/Player;->-$$Nest$fgetcontext(Lorg/schabi/newpipe/player/Player;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/schabi/newpipe/util/ListHelper;->getPopupDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public getOverrideResolutionIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->videoPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/Player;->-$$Nest$fgetcontext(Lorg/schabi/newpipe/player/Player;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->getResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/Player$1;->this$0:Lorg/schabi/newpipe/player/Player;

    invoke-static {v0}, Lorg/schabi/newpipe/player/Player;->-$$Nest$fgetcontext(Lorg/schabi/newpipe/player/Player;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->getPopupResolutionIndex(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
