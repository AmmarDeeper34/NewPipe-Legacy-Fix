.class public final synthetic Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iput-object p2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    iput-wide p3, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;

    iget-object v1, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;

    iget-wide v2, p0, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager$$ExternalSyntheticLambda1;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;->$r8$lambda$wqNrSX2Nytyc7CFiqgBd62HF4sA(Lorg/schabi/newpipe/local/playlist/RemotePlaylistManager;Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;J)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
