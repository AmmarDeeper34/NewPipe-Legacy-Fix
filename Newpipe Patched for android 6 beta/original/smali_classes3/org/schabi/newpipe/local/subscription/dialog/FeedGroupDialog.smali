.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FeedGroupDialog.kt"

# interfaces
.implements Lorg/schabi/newpipe/fragments/BackPressable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;,
        Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;


# instance fields
.field private _feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

.field private _searchLayoutBinding:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

.field public currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

.field private groupId:J

.field private groupSortOrder:J

.field public iconsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private final inputMethodManager$delegate:Lkotlin/Lazy;

.field public selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public selectedSubscriptions:Ljava/util/HashSet;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

.field private subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

.field private final subscriptionMainSection:Lcom/xwray/groupie/Section;

.field private final subscriptionPickerItemListener:Lcom/xwray/groupie/OnItemClickListener;

.field public subscriptionsCurrentSearchQuery:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public subscriptionsListState:Landroid/os/Parcelable;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public subscriptionsShowOnlyUngrouped:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

.field public wasSearchSubscriptionsVisible:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public wasSubscriptionSelectionChanged:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2kJf2b5k_uckDoTBEqjZJOvvf-Q(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$5(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7MFeDZWXnWod-Dne2zqVtPScL84(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupIconPicker$lambda$2(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBuhM9XUD1ttyd78S4vPHOakeV4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$3(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P2ZCYe0YsgObWDZimMH7X5T8V3g(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupIconPicker$lambda$3(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QKuVXdmkzJd7RIR0MiqwG8C-9e4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TA1w3oQM1d0D4TX4S3n4nZQnD70(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionPickerItemListener$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bwzf-jEf9wCQkPbKIRymEPIUwyM(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDepAhP9UzbWydd_cHUdhuGkhOQ(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$6$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lXp6vBKg3NpCPc1wS4gUYxNa8V4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onViewCreated$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mTWv0wyVtAJ_LFua6JfJJ4hyRX4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent;)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onViewCreated$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pTD8hHmko7zctzdR2QpgQe8re48(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$8(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qSFDLz5gW7V_2vvJ049tQiuAiOY(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r0_hgOGhu4ek45STOx-J3X39CzE(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners$lambda$7(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s2bPk04pD2U0BHa4drefLR-BdEg(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager_delegate$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 53
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 55
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 67
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/xwray/groupie/Section;

    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    .line 76
    new-instance v0, Lcom/xwray/groupie/Section;

    invoke-direct {v0}, Lcom/xwray/groupie/Section;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    .line 311
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionPickerItemListener:Lcom/xwray/groupie/OnItemClickListener;

    .line 465
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getFeedGroupCreateBinding(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSearchLayoutBinding(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    return-object p0
.end method

.method public static final synthetic access$handleGroup(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->handleGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V

    return-void
.end method

.method private final disableInput()V
    .locals 2

    .line 504
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 506
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 507
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 509
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideKeyboard()V

    return-void
.end method

.method private final getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->inputMethodManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private final getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final handleGroup(Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    :cond_1
    if-eqz p1, :cond_2

    .line 299
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, ""

    :cond_3
    if-eqz p1, :cond_4

    .line 300
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-eqz p1, :cond_5

    .line 301
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/feed/model/FeedGroupEntity;->getSortOrder()J

    move-result-wide v2

    goto :goto_1

    :cond_5
    const-wide/16 v2, -0x1

    :goto_1
    iput-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    .line 303
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    .line 304
    :goto_2
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    return-void

    .line 307
    :cond_8
    :goto_3
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final handlePositiveButton()V
    .locals 2

    .line 267
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    instance-of v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->handlePositiveButtonInitialScreen()V

    return-void

    .line 268
    :cond_0
    instance-of v1, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez v0, :cond_1

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->deleteGroup()V

    return-void

    .line 269
    :cond_2
    instance-of v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    return-void

    .line 270
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return-void
.end method

.method private final handlePositiveButtonInitialScreen()V
    .locals 9

    .line 274
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 275
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-nez v0, :cond_0

    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    :cond_0
    move-object v3, v0

    .line 277
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 278
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    const v2, 0x7f1201b5

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 279
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 291
    :cond_2
    iget-wide v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    const-wide/16 v6, -0x1

    .line 292
    const-string v0, "viewModel"

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez v4, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v4

    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v1, v2, v3, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->createGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Ljava/util/Set;)V

    return-void

    .line 293
    :cond_4
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez v4, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v4

    :goto_1
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    iget-wide v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupSortOrder:J

    invoke-virtual/range {v1 .. v6}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->updateGroup(Ljava/lang/String;Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;Ljava/util/Set;J)V

    return-void
.end method

.method private final hideKeyboard()V
    .locals 3

    .line 496
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 497
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 496
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 500
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private final hideKeyboardSearch()V
    .locals 3

    .line 479
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 480
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 483
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private final hideSearch()V
    .locals 2

    .line 451
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->resetSearch()V

    .line 452
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a0052

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 455
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideKeyboardSearch()V

    return-void
.end method

.method private static final inputMethodManager_delegate$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v0, "requireActivity(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private final isSearchVisible()Z
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private static final onViewCreated$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lkotlin/Pair;)Lkotlin/Unit;
    .locals 1

    .line 137
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, v0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupSubscriptionPicker(Ljava/util/List;Ljava/util/Set;)V

    .line 138
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onViewCreated$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent;)Lkotlin/Unit;
    .locals 1

    .line 141
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$ProcessingEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->disableInput()V

    goto :goto_0

    .line 142
    :cond_0
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$DialogEvent$SuccessEvent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 144
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 140
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private final varargs onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 257
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final resetSearch()V
    .locals 2

    .line 445
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez v0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->clearSubscriptionsFilter()V

    return-void
.end method

.method private final setupIconPicker()V
    .locals 7

    .line 372
    new-instance v0, Lcom/xwray/groupie/GroupieAdapter;

    invoke-direct {v0}, Lcom/xwray/groupie/GroupieAdapter;-><init>()V

    .line 373
    invoke-static {}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    .line 1563
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1635
    check-cast v3, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 373
    new-instance v4, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    invoke-direct {v4, v3}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;-><init>(Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;)V

    .line 1635
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_0
    invoke-virtual {v0, v2}, Lcom/xwray/groupie/GroupAdapter;->addAll(Ljava/util/Collection;)V

    .line 375
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    .line 376
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 377
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 379
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v1, 0x0

    .line 381
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 385
    :cond_2
    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v1}, Lcom/xwray/groupie/GroupAdapter;->setOnItemClickListener(Lcom/xwray/groupie/OnItemClickListener;)V

    .line 395
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda13;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 401
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    if-nez v0, :cond_3

    sget-object v0, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->ALL:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 402
    :cond_3
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;->getDrawableRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method private static final setupIconPicker$lambda$2(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    instance-of p2, p1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    if-eqz p2, :cond_0

    .line 388
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->getIcon()Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    move-result-object p2

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedIcon:Lorg/schabi/newpipe/local/subscription/FeedGroupIcon;

    .line 389
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p2

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconPreview:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/PickerIconItem;->getIconRes()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    :cond_0
    return-void
.end method

.method private static final setupIconPicker$lambda$3(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 397
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 4

    .line 201
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInputContainer:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    const-string v2, "groupNameInput"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 217
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda6;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectChannelButton:Landroid/widget/Button;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v2, 0x7f0a0052

    .line 227
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda8;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const v2, 0x7f0a018b

    .line 232
    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 233
    iget-boolean v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 234
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda9;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 242
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchClear:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const-string v2, "toolbarSearchEditText"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$setupListeners$$inlined$doOnTextChanged$2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 263
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v0, :cond_0

    const-string v0, "subscriptionGroupAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionPickerItemListener:Lcom/xwray/groupie/OnItemClickListener;

    invoke-virtual {v1, v0}, Lcom/xwray/groupie/GroupAdapter;->setOnItemClickListener(Lcom/xwray/groupie/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 201
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return-void
.end method

.method private static final setupListeners$lambda$1(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 205
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    .line 206
    :cond_0
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return-void
.end method

.method private static final setupListeners$lambda$3(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 217
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->handlePositiveButton()V

    return-void
.end method

.method private static final setupListeners$lambda$4(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 221
    sget-object p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return-void
.end method

.method private static final setupListeners$lambda$5(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showSearch()V

    const/4 p0, 0x1

    return p0
.end method

.method private static final setupListeners$lambda$6$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 236
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 237
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez p1, :cond_0

    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-boolean p0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->toggleShowOnlyUngrouped(Z)V

    return v1
.end method

.method private static final setupListeners$lambda$7(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 243
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->resetSearch()V

    .line 248
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch()V

    return-void

    .line 244
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    return-void
.end method

.method private static final setupListeners$lambda$8(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/DeviceUtils;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch()V

    :cond_0
    return-void
.end method

.method private final setupSubscriptionPicker(Ljava/util/List;Ljava/util/Set;)V
    .locals 4

    .line 333
    iget-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 337
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->updateSubscriptionSelectedCount()V

    .line 339
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 340
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    invoke-virtual {p2}, Lcom/xwray/groupie/Section;->clear()V

    .line 341
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    new-instance v0, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/item/ImportSubscriptionsHintPlaceholderItem;-><init>()V

    invoke-virtual {p2, v0}, Lcom/xwray/groupie/Section;->add(Lcom/xwray/groupie/Group;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    invoke-virtual {p2}, Lcom/xwray/groupie/Section;->clear()V

    .line 1869
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    .line 347
    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    .line 348
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->getSubscriptionEntity()Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 347
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->setSelected(Z)V

    goto :goto_1

    .line 351
    :cond_2
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/xwray/groupie/Section;->update(Ljava/util/Collection;Z)V

    .line 353
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    if-eqz p1, :cond_4

    .line 354
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_3
    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    return-void

    .line 357
    :cond_4
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final showKeyboard()V
    .locals 3

    .line 487
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 489
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->groupNameInput:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/4 v2, 0x1

    .line 488
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private final showKeyboardSearch()V
    .locals 3

    .line 470
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 472
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->toolbarSearchEditText:Lorg/schabi/newpipe/views/NewPipeEditText;

    const/4 v2, 0x1

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private final showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V
    .locals 8

    .line 411
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    .line 413
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->optionsRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "optionsRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    const/4 v1, 0x1

    new-array v2, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 414
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "iconSelector"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$IconPickerScreen;

    new-array v4, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    aput-object v2, v4, v3

    invoke-direct {p0, p1, v4}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 415
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelector:Landroid/widget/LinearLayout;

    const-string v4, "subscriptionsSelector"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    new-array v5, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    aput-object v4, v5, v3

    invoke-direct {p0, p1, v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 416
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteScreenMessage:Lorg/schabi/newpipe/views/NewPipeTextView;

    const-string v5, "deleteScreenMessage"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$DeleteScreen;

    new-array v6, v1, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    aput-object v5, v6, v3

    invoke-direct {p0, p1, v6}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 418
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->separator:Landroid/view/View;

    const-string v6, "separator"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    new-array v7, v6, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    aput-object v4, v7, v3

    aput-object v2, v7, v1

    invoke-direct {p0, p1, v7}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 419
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->cancelButton:Landroid/widget/Button;

    const-string v2, "cancelButton"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v6, [Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    aput-object v0, v2, v3

    aput-object v5, v2, v1

    invoke-direct {p0, p1, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onlyVisibleIn(Landroid/view/View;[Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 421
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->confirmButton:Landroid/widget/Button;

    .line 423
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v4, -0x1

    if-eqz v2, :cond_0

    iget-wide v6, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_0

    const v2, 0x7f1200c1

    goto :goto_0

    :cond_0
    const v2, 0x7f120332

    .line 421
    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 428
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->deleteButton:Landroid/widget/ImageButton;

    const-string v2, "deleteButton"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v6, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    const/16 v3, 0x8

    .line 299
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 430
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideKeyboard()V

    .line 431
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    return-void
.end method

.method private final showSearch()V
    .locals 3

    .line 459
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getSearchLayoutBinding()Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfoContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0a0052

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboardSearch()V

    return-void
.end method

.method private static final subscriptionPickerItemListener$lambda$0(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Lcom/xwray/groupie/Item;Landroid/view/View;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    instance-of v0, p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    if-eqz v0, :cond_1

    .line 313
    check-cast p1, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->getSubscriptionEntity()Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 314
    iput-boolean v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSubscriptionSelectionChanged:Z

    .line 316
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_0

    .line 320
    :cond_0
    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 324
    :goto_0
    invoke-virtual {p1, p2, v2}, Lorg/schabi/newpipe/local/subscription/item/PickerSubscriptionItem;->updateSelected(Landroid/view/View;Z)V

    .line 325
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->updateSubscriptionSelectedCount()V

    :cond_1
    return-void
.end method

.method private final updateSubscriptionSelectedCount()V
    .locals 5

    .line 362
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->selectedSubscriptions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 365
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const v2, 0x7f110005

    .line 363
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getQuantityString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->selectedSubscriptionCountView:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderInfo:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    instance-of v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->hideSearch()V

    return v1

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    instance-of v0, v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/ThemeHelper;->getMinWidthDialogTheme(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    const-string v2, "KEY_GROUP_ID"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    iput-wide v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v0

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroidx/fragment/app/FragmentActivity;I)V

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0035

    .line 92
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 176
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 177
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 180
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 181
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 108
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->isSearchVisible()Z

    move-result v0

    iput-boolean v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->iconSelector:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->iconsListState:Landroid/os/Parcelable;

    .line 115
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsListState:Landroid/os/Parcelable;

    .line 117
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    invoke-static {p1}, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_feedGroupCreateBinding:Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    .line 123
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsHeaderSearchContainer:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->_searchLayoutBinding:Lorg/schabi/newpipe/databinding/ToolbarSearchLayoutBinding;

    .line 125
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 127
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->Companion:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string p2, "requireContext(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    .line 130
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsCurrentSearchQuery:Ljava/lang/String;

    .line 131
    iget-boolean v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionsShowOnlyUngrouped:Z

    .line 127
    invoke-virtual/range {v0 .. v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion;->getFactory(Landroid/content/Context;JLjava/lang/String;Z)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p2

    .line 125
    invoke-direct {p1, p0, p2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 133
    const-class p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 125
    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 135
    const-string p2, "viewModel"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->getGroupLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onViewCreated$1;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 136
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->getSubscriptionsLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    new-instance v3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 139
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->viewModel:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;->getDialogEventLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;)V

    new-instance v2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 146
    new-instance p1, Lcom/xwray/groupie/GroupieAdapter;

    invoke-direct {p1}, Lcom/xwray/groupie/GroupieAdapter;-><init>()V

    .line 147
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionMainSection:Lcom/xwray/groupie/Section;

    invoke-virtual {p1, p2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    .line 148
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionEmptyFooter:Lcom/xwray/groupie/Section;

    invoke-virtual {p1, p2}, Lcom/xwray/groupie/GroupAdapter;->add(Lcom/xwray/groupie/Group;)V

    const/4 p2, 0x4

    .line 149
    invoke-virtual {p1, p2}, Lcom/xwray/groupie/GroupAdapter;->setSpanCount(I)V

    .line 146
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    .line 151
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->getFeedGroupCreateBinding()Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DialogFeedGroupCreateBinding;->subscriptionsSelectorList:Landroidx/recyclerview/widget/RecyclerView;

    .line 153
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 154
    iget-object p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    const-string v1, "subscriptionGroupAdapter"

    if-nez p2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 155
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_4
    invoke-virtual {v3}, Lcom/xwray/groupie/GroupAdapter;->getSpanCount()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-direct {p2, v2, v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 159
    iget-object v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->subscriptionGroupAdapter:Lcom/xwray/groupie/GroupieAdapter;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lcom/xwray/groupie/GroupAdapter;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 155
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 163
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupIconPicker()V

    .line 164
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->setupListeners()V

    .line 166
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showScreen(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;)V

    .line 168
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$SubscriptionsPickerScreen;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->wasSearchSubscriptionsVisible:Z

    if-eqz p1, :cond_6

    .line 169
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showSearch()V

    return-void

    .line 170
    :cond_6
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->currentScreen:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState;

    sget-object p2, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$ScreenState$InitialScreen;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-wide p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->groupId:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_7

    .line 171
    invoke-direct {p0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->showKeyboard()V

    :cond_7
    return-void
.end method
