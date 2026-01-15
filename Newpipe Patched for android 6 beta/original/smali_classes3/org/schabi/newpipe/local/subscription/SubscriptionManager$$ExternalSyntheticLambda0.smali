.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iput-object p3, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionManager$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;->$r8$lambda$Y3oHX-1CZmJQtyPBJ4jicRmQMiY(Ljava/util/List;Lorg/schabi/newpipe/local/subscription/SubscriptionManager;Ljava/util/List;)V

    return-void
.end method
