.class public final synthetic Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;


# direct methods
.method public synthetic constructor <init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->$r8$lambda$ywl_KCJseTTYfOgEv9Py_0u_0h8(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/channel/tabs/ChannelTabInfo;

    move-result-object v0

    return-object v0
.end method
