.class public final synthetic Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt$$ExternalSyntheticLambda3;->f$0:Landroid/content/Context;

    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/playlist/ExportPlaylistKt;->$r8$lambda$K6IfdVXAiipoxEDD2afALNq1e6M(Landroid/content/Context;Lorg/schabi/newpipe/database/stream/model/StreamEntity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
