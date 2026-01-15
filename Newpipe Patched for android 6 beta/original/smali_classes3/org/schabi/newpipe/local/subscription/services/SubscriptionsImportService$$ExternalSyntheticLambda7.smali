.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda7;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    check-cast p1, Lio/reactivex/rxjava3/core/Notification;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->$r8$lambda$x9B-kHTzYEoqZLLB0YFI29yiV0Q(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;Lio/reactivex/rxjava3/core/Notification;)V

    return-void
.end method
