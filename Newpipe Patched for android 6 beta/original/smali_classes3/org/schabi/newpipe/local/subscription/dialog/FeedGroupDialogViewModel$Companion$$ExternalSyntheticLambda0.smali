.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-wide v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    move-object v5, p1

    check-cast v5, Landroidx/lifecycle/viewmodel/CreationExtras;

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;->$r8$lambda$i-G0NmBNxUNGjSNALIIGgqyhbCw(Landroid/content/Context;JLjava/lang/String;ZLandroidx/lifecycle/viewmodel/CreationExtras;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    move-result-object p1

    return-object p1
.end method
