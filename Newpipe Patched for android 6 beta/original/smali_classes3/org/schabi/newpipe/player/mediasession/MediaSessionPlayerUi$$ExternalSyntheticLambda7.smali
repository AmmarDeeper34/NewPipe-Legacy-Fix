.class public final synthetic Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    return-void
.end method


# virtual methods
.method public final getMetadata(Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;->$r8$lambda$DlOY3ZcN9lo_D6lHJaZpxlrbkRo(Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;Lcom/google/android/exoplayer2/Player;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sameAs(Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider$-CC;->$default$sameAs(Lcom/google/android/exoplayer2/ext/mediasession/MediaSessionConnector$MediaMetadataProvider;Landroid/support/v4/media/MediaMetadataCompat;Landroid/support/v4/media/MediaMetadataCompat;)Z

    move-result p1

    return p1
.end method
