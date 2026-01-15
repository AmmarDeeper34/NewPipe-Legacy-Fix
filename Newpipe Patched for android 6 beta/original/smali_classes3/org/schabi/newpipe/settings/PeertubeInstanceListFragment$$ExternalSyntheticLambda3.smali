.class public final synthetic Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->$r8$lambda$ufWFqvMcmupXiT9JNOrTtRc7suw(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object v0

    return-object v0
.end method
