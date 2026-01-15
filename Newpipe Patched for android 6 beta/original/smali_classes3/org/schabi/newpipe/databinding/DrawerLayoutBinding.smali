.class public final Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;
.super Ljava/lang/Object;
.source "DrawerLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final navigation:Lcom/google/android/material/navigation/NavigationView;

.field private final rootView:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/navigation/NavigationView;Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;->rootView:Lcom/google/android/material/navigation/NavigationView;

    .line 25
    iput-object p2, p0, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;->navigation:Lcom/google/android/material/navigation/NavigationView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;
    .locals 1

    if-eqz p0, :cond_0

    .line 55
    check-cast p0, Lcom/google/android/material/navigation/NavigationView;

    .line 57
    new-instance v0, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;

    invoke-direct {v0, p0, p0}, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;-><init>(Lcom/google/android/material/navigation/NavigationView;Lcom/google/android/material/navigation/NavigationView;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "rootView"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;->getRoot()Lcom/google/android/material/navigation/NavigationView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/google/android/material/navigation/NavigationView;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/databinding/DrawerLayoutBinding;->rootView:Lcom/google/android/material/navigation/NavigationView;

    return-object v0
.end method
