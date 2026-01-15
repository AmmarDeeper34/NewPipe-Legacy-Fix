.class public final synthetic Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;

    invoke-static {v0}, Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;->$r8$lambda$4MPAaQcyvd1c5idW69Mq32y1wNw(Lorg/schabi/newpipe/local/subscription/services/SubscriptionsImportService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
