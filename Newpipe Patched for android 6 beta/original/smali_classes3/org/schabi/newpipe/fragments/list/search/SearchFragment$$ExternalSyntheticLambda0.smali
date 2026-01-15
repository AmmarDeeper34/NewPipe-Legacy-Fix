.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    check-cast p1, Lorg/schabi/newpipe/extractor/search/SearchInfo;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$lambda$T6mv_PjapBDNec_rHz_4Q_u2QBY(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Lorg/schabi/newpipe/extractor/search/SearchInfo;Ljava/lang/Throwable;)V

    return-void
.end method
