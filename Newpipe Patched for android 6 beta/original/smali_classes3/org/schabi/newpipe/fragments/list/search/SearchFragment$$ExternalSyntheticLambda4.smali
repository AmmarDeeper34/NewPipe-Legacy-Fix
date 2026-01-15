.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda4;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    check-cast p1, Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->handleNextItems(Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;)V

    return-void
.end method
