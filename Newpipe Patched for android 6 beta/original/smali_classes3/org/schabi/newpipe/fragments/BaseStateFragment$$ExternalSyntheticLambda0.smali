.class public final synthetic Lorg/schabi/newpipe/fragments/BaseStateFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/BaseStateFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/BaseStateFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/BaseStateFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/BaseStateFragment;

    invoke-virtual {v0}, Lorg/schabi/newpipe/fragments/BaseStateFragment;->onRetryButtonClicked()V

    return-void
.end method
