.class Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)V
    .locals 0

    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    :cond_0
    const/16 v17, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x1

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string/jumbo v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string/jumbo v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_1
    const-string/jumbo v2, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v13, 0x0

    if-eqz v15, :cond_3

    const-string/jumbo v2, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    :goto_0
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    :goto_1
    if-eqz v13, :cond_c

    array-length v2, v13

    if-lez v2, :cond_c

    const/4 v2, 0x0

    array-length v0, v13

    move/from16 v21, v0

    move/from16 v20, v2

    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    aget-object v3, v13, v20

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    if-eqz v17, :cond_b

    const/4 v4, 0x0

    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->removeAllCustomTilesInt(Ljava/lang/String;ZIILorg/cyanogenmod/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    :cond_2
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    if-eqz v17, :cond_5

    const-string/jumbo v2, "android.intent.extra.PACKAGES"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    if-nez v19, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz v12, :cond_9

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    const/4 v2, -0x1

    if-eq v5, v2, :cond_a

    move v2, v5

    :goto_4
    invoke-interface {v14, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    const/4 v2, 0x1

    if-eq v11, v2, :cond_8

    if-nez v11, :cond_9

    :cond_8
    const/16 v18, 0x0

    :cond_9
    :goto_5
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v13, v2

    goto :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :catch_0
    move-exception v10

    const-string/jumbo v2, "CMStatusBarManagerService"

    const-string/jumbo v4, "Exception trying to look up app enabled setting"

    invoke-static {v2, v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_b
    const/4 v4, 0x1

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;

    invoke-static {v2}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;->-get1(Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService;)Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v13}, Lorg/cyanogenmod/platform/internal/CMStatusBarManagerService$CustomTileListeners;->onPackagesChanged(Z[Ljava/lang/String;)V

    :cond_d
    return-void

    :catch_1
    move-exception v9

    goto :goto_5
.end method
