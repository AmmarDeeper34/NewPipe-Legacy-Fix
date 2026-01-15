.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda18;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda18;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->$r8$lambda$x0zQ9poAsmo6yjYChbAEUyvWqjw(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;Ljava/lang/String;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
