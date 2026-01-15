.class public Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;
.super Lorg/schabi/newpipe/settings/BasePreferenceFragment;
.source "BackupRestoreSettingsFragment.java"


# instance fields
.field private final exportDateFormat:Ljava/text/SimpleDateFormat;

.field private importExportDataPathKey:Ljava/lang/String;

.field private manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

.field private final requestExportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field private final requestImportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method public static synthetic $r8$lambda$7NFp4cg1R-0IP0CM5Xv8lrIyBUI(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AyCXFpD_nQ1urTyKzrEZ_pm46Fs(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IWAWXmTgU2uvypuC0MU1kfevKYs(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$requestImportPathResult$5(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBOgQ3H8iWV96etVSYxmLTHRE10(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 153
    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method public static synthetic $r8$lambda$PW0VvQx47Nrjw6hXSxoRebL342c(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$YiJlRXppL5ZX-YXPb6mZNg2zrbE(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestImportPathResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bn3dcF5J66DsyXAYdtBC9HFSZqo(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$importDatabase$8(Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dcJ-B_yo4JlXPOWLvfD6KrEQi_U(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$importDatabase$9(ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fGteoRaC9h1Pn2xEuX2RRkPtyno(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestExportPathResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k-DfSOWPNmp_4UuTfIal-J1vCPY(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$onCreatePreferences$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlXcz4PNafg3wASwGwJgDY1fQSQ(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$importDatabase$7(Landroid/net/Uri;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhEITzDJwUPh7d7gQ5xJjMuXGOY(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->exportDateFormat:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    .line 55
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestImportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 57
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    .line 58
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestExportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private cleanImport(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5

    const v0, 0x7f1200f8

    .line 244
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1200fc

    .line 246
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 255
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 256
    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 259
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 260
    invoke-interface {p2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 261
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 262
    invoke-static {p1}, Lorg/schabi/newpipe/settings/NewPipeSettings;->setMediaTunneling(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private createErrorNotification(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {v1, p1, v2, p2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 294
    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method private exportDatabase(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V
    .locals 3

    .line 159
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    new-instance v1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {v2, v1, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->exportDatabase(Landroid/content/SharedPreferences;Lorg/schabi/newpipe/streams/io/StoredFileHelper;)V

    .line 167
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->saveLastImportExportDataUri(Landroid/net/Uri;)V

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1201a0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :try_start_2
    invoke-static {v0}, Landroidx/core/content/res/FontResourcesParserCompat$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 159
    :try_start_3
    invoke-static {v0}, Landroidx/core/content/res/FontResourcesParserCompat$$ExternalSyntheticAutoCloseableDispatcher0;->m(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 171
    :goto_1
    const-string p2, "Exporting database and settings"

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->showErrorSnackbar(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private finishImport(Landroid/net/Uri;)V
    .locals 0

    .line 273
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->saveLastImportExportDataUri(Landroid/net/Uri;)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->restartApp(Landroid/app/Activity;)V

    return-void
.end method

.method private getImportExportDataUri()Landroid/net/Uri;
    .locals 3

    .line 279
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private importDatabase(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V
    .locals 4

    .line 177
    invoke-static {p1}, Lorg/schabi/newpipe/util/ZipHelper;->isValidZipFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12030c

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {v0}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->ensureDbDirectoryExists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->extractDb(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1200bb

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 196
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->exportHasJsonPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 197
    iget-object v1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->exportHasSerializedPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 227
    :cond_2
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->finishImport(Landroid/net/Uri;)V

    return-void

    .line 198
    :cond_3
    :goto_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120208

    .line 199
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    .line 200
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120209

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    :goto_2
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda10;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;)V

    .line 202
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda11;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;)V

    const v3, 0x7f120070

    .line 203
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V

    const p1, 0x7f120332

    .line 207
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 185
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not create databases dir"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_3
    const-string p2, "Importing database and settings"

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->showErrorSnackbar(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$importDatabase$7(Landroid/net/Uri;Landroid/content/DialogInterface;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->finishImport(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$importDatabase$8(Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 204
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 205
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->finishImport(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$importDatabase$9(ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 208
    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p4

    .line 211
    invoke-static {p4}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p5

    if-eqz p1, :cond_0

    .line 214
    :try_start_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {p1, p2, p5}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->loadJsonPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    .line 216
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    invoke-virtual {p1, p2, p5}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->loadSerializedPrefs(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/content/SharedPreferences;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-direct {p0, p4, p5}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->cleanImport(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 223
    invoke-direct {p0, p3}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->finishImport(Landroid/net/Uri;)V

    return-void

    .line 219
    :goto_1
    const-string p2, "Importing preferences"

    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->createErrorNotification(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 3

    .line 76
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestImportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "application/zip"

    .line 79
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->getImportExportDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 78
    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getPicker(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 76
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z
    .locals 4

    .line 89
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->requestExportPathLauncher:Landroidx/activity/result/ActivityResultLauncher;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewPipeData-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->exportDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 92
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/zip"

    .line 93
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->getImportExportDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 91
    invoke-static {v0, v1, v2, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->TAG:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {p1, v0, v1, v2}, Lorg/schabi/newpipe/streams/io/NoFileManagerSafeGuard;->launchSafe(Landroidx/activity/result/ActivityResultLauncher;Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onCreatePreferences$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 113
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->restartApp(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z
    .locals 3

    .line 106
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1203ba

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 109
    new-instance v1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda7;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    const v2, 0x7f120332

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda8;-><init>()V

    const v2, 0x7f120070

    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v0
.end method

.method private synthetic lambda$requestImportPathResult$5(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importDatabase(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V

    return-void
.end method

.method private requestExportPathResult(Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 129
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 133
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v3, "application/zip"

    invoke-direct {v1, v2, p1, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->exportDatabase(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private requestImportPathResult(Landroidx/activity/result/ActivityResult;)V
    .locals 4

    .line 141
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 145
    new-instance v1, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 146
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v3, "application/zip"

    invoke-direct {v1, v2, p1, v3}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 148
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12033a

    .line 149
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1, v0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda5;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Lorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V

    const v0, 0x7f120332

    .line 150
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda6;-><init>()V

    const v1, 0x7f120070

    .line 152
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private saveLastImportExportDataUri(Landroid/net/Uri;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showErrorSnackbar(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    .line 290
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    invoke-direct {v0, p1, v1, p2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance p2, Lorg/schabi/newpipe/settings/export/ImportExportManager;

    new-instance v0, Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/settings/export/BackupFileLocator;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v0}, Lorg/schabi/newpipe/settings/export/ImportExportManager;-><init>(Lorg/schabi/newpipe/settings/export/BackupFileLocator;)V

    iput-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    const p1, 0x7f120203

    .line 69
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->addPreferencesFromResourceRegistry()V

    const p1, 0x7f120200

    .line 74
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 75
    new-instance p2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const p1, 0x7f1201a1

    .line 87
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 88
    new-instance p2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda3;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const p1, 0x7f1203bb

    .line 101
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->requirePreference(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 104
    new-instance p2, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method
