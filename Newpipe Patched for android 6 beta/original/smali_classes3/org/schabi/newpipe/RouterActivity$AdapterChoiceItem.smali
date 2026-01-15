.class Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;
.super Ljava/lang/Object;
.source "RouterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/RouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterChoiceItem"
.end annotation


# instance fields
.field final description:Ljava/lang/String;

.field final icon:I

.field final key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 897
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->description:Ljava/lang/String;

    .line 898
    iput p3, p0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->icon:I

    return-void
.end method
