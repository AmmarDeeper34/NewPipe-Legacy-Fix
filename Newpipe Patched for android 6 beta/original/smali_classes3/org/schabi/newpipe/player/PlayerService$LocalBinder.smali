.class public Lorg/schabi/newpipe/player/PlayerService$LocalBinder;
.super Landroid/os/Binder;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalBinder"
.end annotation


# instance fields
.field private final playerService:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 295
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getService()Lorg/schabi/newpipe/player/PlayerService;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/schabi/newpipe/player/PlayerService$LocalBinder;->playerService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/player/PlayerService;

    return-object v0
.end method
