.class public final synthetic Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 2

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-static {p1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->$r8$lambda$RwD8l35td2_sCEstKN5vjdCmqvM(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)J

    move-result-wide v0

    return-wide v0
.end method
