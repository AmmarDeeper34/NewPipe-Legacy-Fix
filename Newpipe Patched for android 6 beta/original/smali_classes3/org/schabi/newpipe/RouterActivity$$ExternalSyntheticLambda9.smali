.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Landroid/widget/RadioGroup;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/RouterActivity;

    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$3:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/RouterActivity;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$3:Landroid/content/SharedPreferences;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/schabi/newpipe/RouterActivity;->$r8$lambda$OiY_1ZzpYRVAEpJ2XIMalNRc2PI(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/List;Landroid/content/SharedPreferences;Landroid/content/DialogInterface;I)V

    return-void
.end method
