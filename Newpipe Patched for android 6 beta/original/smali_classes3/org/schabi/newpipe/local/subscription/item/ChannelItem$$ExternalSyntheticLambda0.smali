.class public final synthetic Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/OnClickGesture;

.field public final synthetic f$1:Lorg/schabi/newpipe/local/subscription/item/ChannelItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/OnClickGesture;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/util/OnClickGesture;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$$ExternalSyntheticLambda0;->f$1:Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;->$r8$lambda$QV75hFYJj2evAH-R-8n5ZKNaIYc(Lorg/schabi/newpipe/util/OnClickGesture;Lorg/schabi/newpipe/local/subscription/item/ChannelItem;Landroid/view/View;)V

    return-void
.end method
