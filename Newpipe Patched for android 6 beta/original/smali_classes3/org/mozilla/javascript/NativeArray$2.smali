.class Lorg/mozilla/javascript/NativeArray$2;
.super Ljava/util/AbstractList;
.source "NativeArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeArray;->subList(II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mc:I

.field final synthetic this$0:Lorg/mozilla/javascript/NativeArray;

.field final synthetic val$fromIndex:I

.field final synthetic val$toIndex:I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeArray;II)V
    .locals 0

    .line 2581
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    iput p2, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    iput p3, p0, Lorg/mozilla/javascript/NativeArray$2;->val$toIndex:I

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2582
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$fgetmodCount(Lorg/mozilla/javascript/NativeArray;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 2586
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 2587
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 2592
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$2;->this$0:Lorg/mozilla/javascript/NativeArray;

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->mc:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 2593
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$2;->val$toIndex:I

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$2;->val$fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method
