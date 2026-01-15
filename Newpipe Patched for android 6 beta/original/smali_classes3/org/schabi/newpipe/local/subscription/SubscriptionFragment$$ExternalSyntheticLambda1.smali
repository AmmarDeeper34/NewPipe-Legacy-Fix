.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->$r8$lambda$1zQqaE_V_ekYNpJ3qWVvFja6ap4(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V

    return-void
.end method
