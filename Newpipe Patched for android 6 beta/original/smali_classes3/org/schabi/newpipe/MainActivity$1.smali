.class Lorg/schabi/newpipe/MainActivity$1;
.super Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/MainActivity;->setupDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastService:I

.field final synthetic this$0:Lorg/schabi/newpipe/MainActivity;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/MainActivity;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    .line 247
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$fgetservicesShown(Lorg/schabi/newpipe/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 248
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/MainActivity;->-$$Nest$mtoggleServices(Lorg/schabi/newpipe/MainActivity;)V

    .line 250
    :cond_0
    iget p1, p0, Lorg/schabi/newpipe/MainActivity$1;->lastService:I

    iget-object v0, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {v0}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 251
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 0

    .line 242
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$1;->this$0:Lorg/schabi/newpipe/MainActivity;

    invoke-static {p1}, Lorg/schabi/newpipe/util/ServiceHelper;->getSelectedServiceId(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/MainActivity$1;->lastService:I

    return-void
.end method
