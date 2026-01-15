.class public final synthetic Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda2;->f$1:J

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->$r8$lambda$V3cwr7gktEuqW2m9_puDTnnNghc(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;J)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
