.class Lorg/schabi/newpipe/download/DownloadDialog$2;
.super Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;
.source "DownloadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/download/DownloadDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/download/DownloadDialog;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/download/DownloadDialog;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-direct {p0}, Lorg/schabi/newpipe/util/SimpleOnSeekBarChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    add-int/lit8 p2, p2, 0x1

    .line 327
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fgetprefs(Lorg/schabi/newpipe/download/DownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    const v0, 0x7f1200ce

    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 328
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    iget-object p1, p0, Lorg/schabi/newpipe/download/DownloadDialog$2;->this$0:Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-static {p1}, Lorg/schabi/newpipe/download/DownloadDialog;->-$$Nest$fgetdialogBinding(Lorg/schabi/newpipe/download/DownloadDialog;)Lorg/schabi/newpipe/databinding/DownloadDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lorg/schabi/newpipe/databinding/DownloadDialogBinding;->threadsCount:Lorg/schabi/newpipe/views/NewPipeTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
