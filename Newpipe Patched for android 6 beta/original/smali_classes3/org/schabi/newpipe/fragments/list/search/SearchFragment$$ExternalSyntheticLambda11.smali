.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/StreamingService;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    iput-object p3, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$lambda$QdLTUTbH5IriJJR7KtyPwk8CNKs(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
