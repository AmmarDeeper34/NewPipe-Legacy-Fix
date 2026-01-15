.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationModeConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SubscriptionHolder"
.end annotation


# instance fields
.field private final itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

.field final synthetic this$0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;


# direct methods
.method public static synthetic $r8$lambda$8xG-TH_4AMKiaiL7pGyV687EkvU(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->_init_$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "itemBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->this$0:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;

    .line 41
    invoke-virtual {p2}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    .line 43
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Landroid/view/View;)V
    .locals 0

    .line 44
    iget-object p2, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    invoke-virtual {p2}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 49
    invoke-static {p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->access$getListener$p(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;->onModeChange(II)V

    return-void
.end method


# virtual methods
.method public final bind(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->getRoot()Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void
.end method
