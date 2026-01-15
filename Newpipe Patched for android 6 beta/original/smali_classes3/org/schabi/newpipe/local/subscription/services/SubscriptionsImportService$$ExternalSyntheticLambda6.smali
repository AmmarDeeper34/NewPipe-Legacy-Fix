.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda6;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->$r8$lambda$4yXvtDU7zd22h5ISuS0xWM7SD5k(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
