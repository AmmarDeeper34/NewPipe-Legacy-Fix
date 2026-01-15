.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;

    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->$r8$lambda$V_-_Y0NxWF372J8VGmKsAl2Emcw(Lorg/schabi/newpipe/extractor/subscription/SubscriptionItem;)Lio/reactivex/rxjava3/core/Notification;

    move-result-object p1

    return-object p1
.end method
