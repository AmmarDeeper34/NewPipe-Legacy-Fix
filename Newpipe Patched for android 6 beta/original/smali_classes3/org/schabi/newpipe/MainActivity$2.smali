.class Lorg/schabi/newpipe/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/MainActivity;->enhancePeertubeMenu(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/MainActivity;

.field final synthetic val$instances:Ljava/util/List;

.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method public static synthetic $r8$lambda$-iZpoWZz5PGJEMMgBM-Obti31zw(Lorg/schabi/newpipe/MainActivity$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/MainActivity$2;->lambda$onItemSelected$0()V

    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/MainActivity;Ljava/util/List;Landroid/view/MenuItem;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    iput-object p2, p0, Lorg/schabi/newpipe/MainActivity$2;->val$instances:Ljava/util/List;

    iput-object p3, p0, Lorg/schabi/newpipe/MainActivity$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemSelected$0()V
    .locals 3

    .line 484
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 486
    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {v0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 476
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->val$instances:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 477
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lorg/schabi/newpipe/util/PeertubeHelper;->getCurrentInstance()Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 480
    :cond_0
    iget-object p2, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/schabi/newpipe/util/PeertubeHelper;->selectInstance(Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;Landroid/content/Context;)Lorg/schabi/newpipe/extractor/services/peertube/PeertubeInstance;

    .line 481
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    iget-object p2, p0, Lorg/schabi/newpipe/MainActivity$2;->val$menuItem:Landroid/view/MenuItem;

    invoke-static {p1, p2}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$mchangeService(Lorg/schabi/newpipe/MainActivity;Landroid/view/MenuItem;)V

    .line 482
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$2;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$fgetmainBinding(Lorg/schabi/newpipe/MainActivity;)Lorg/schabi/newpipe/databinding/ActivityMainBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/schabi/newpipe/databinding/ActivityMainBinding;->getRoot()Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 483
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lorg/schabi/newpipe/MainActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/MainActivity$2$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/MainActivity$2;)V

    const-wide/16 p3, 0x12c

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 0
    return-void
.end method
