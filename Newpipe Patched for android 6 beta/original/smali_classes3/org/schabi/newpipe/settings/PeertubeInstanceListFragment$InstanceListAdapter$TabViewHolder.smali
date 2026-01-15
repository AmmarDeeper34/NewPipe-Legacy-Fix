.class Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PeertubeInstanceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabViewHolder"
.end annotation


# instance fields
.field private final itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

.field final synthetic this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;


# direct methods
.method public static synthetic $r8$lambda$frDsWHWTb-F7FoRAbLkYXw2-O9s(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->lambda$bind$1(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zcJSKRBb_NEDwwGRICVHgjPq-Go(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->lambda$bind$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Lorg/schabi/newpipe/databinding/ItemInstanceBinding;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    .line 358
    invoke-virtual {p2}, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 359
    iput-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    return-void
.end method

.method private synthetic lambda$bind$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 365
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_0

    .line 366
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    .line 367
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetitemTouchHelper(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$bind$1(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p3, :cond_1

    .line 387
    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    iget-object p2, p2, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {p2, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$mselectInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    .line 388
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    if-eq p1, p2, :cond_0

    .line 389
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 391
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    iget-object p2, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object p2, p2, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fputlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Landroid/widget/RadioButton;)V

    :cond_1
    return-void
.end method


# virtual methods
.method bind(I)V
    .locals 2

    .line 364
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->handle:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 374
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->access$000(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 375
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceUrl:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 378
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->this$0:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;->-$$Nest$fgetselectedInstance(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    if-eq v0, v1, :cond_0

    .line 380
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fgetlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 382
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 383
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->this$1:Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v1, v1, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    invoke-static {v0, v1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;->-$$Nest$fputlastChecked(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter;Landroid/widget/RadioButton;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object v0, v0, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->selectInstanceRB:Landroid/widget/RadioButton;

    new-instance v1, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 394
    iget-object p1, p0, Lorg/schabi/newpipe/settings/PeertubeInstanceListFragment$InstanceListAdapter$TabViewHolder;->itemBinding:Lorg/schabi/newpipe/databinding/ItemInstanceBinding;

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/ItemInstanceBinding;->instanceIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f08013a

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method
