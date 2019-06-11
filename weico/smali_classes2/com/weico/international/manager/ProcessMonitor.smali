.class public Lcom/weico/international/manager/ProcessMonitor;
.super Ljava/lang/Object;
.source "ProcessMonitor.java"

# interfaces
.implements Lcom/weico/international/manager/IProcessMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessMonitor"

.field public static repeatedTime:I = 0x1b7740


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private foreground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/weico/international/manager/ProcessMonitor;->foreground:Z

    return-void
.end method

.method static synthetic access$000(Lcom/weico/international/manager/ProcessMonitor;Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/weico/international/manager/ProcessMonitor;->onBackgroundToForeground(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/weico/international/manager/ProcessMonitor;Landroid/app/Activity;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/weico/international/manager/ProcessMonitor;->onForegroundToBackground(Landroid/app/Activity;)V

    return-void
.end method

.method private onBackgroundToForeground(Landroid/app/Activity;)V
    .locals 7

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\u540e\u53f0->\u524d\u53f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/weico/international/WApplication;->cContext:Landroid/content/ContextWrapper;

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Lcom/weibo/mobileads/controller/RefreshService;->reloadAutoCheck(Landroid/content/Context;J)V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/weico/international/manager/ProcessMonitor;->foreground:Z

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 74
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v3

    const-string v4, "key_last_background_time"

    invoke-virtual {v3, v4}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v1, ""

    .line 77
    invoke-static {v1}, Lcom/weico/international/utility/LogUtil;->e(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/weico/international/flux/action/OpenAppAction;->getInstance()Lcom/weico/international/flux/action/OpenAppAction;

    move-result-object v1

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weico/international/flux/action/OpenAppAction;->openApp(Lcom/weico/international/model/sina/User;)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/weico/international/manager/ManagerFactory;->getInstance()Lcom/weico/international/manager/ManagerFactory;

    move-result-object v1

    const-class v2, Lcom/weico/international/manager/INetworkManager;

    invoke-virtual {v1, v2}, Lcom/weico/international/manager/ManagerFactory;->getManager(Ljava/lang/Class;)Lcom/weico/international/manager/IWeicoManager;

    move-result-object v1

    check-cast v1, Lcom/weico/international/manager/INetworkManager;

    invoke-interface {v1}, Lcom/weico/international/manager/INetworkManager;->reset()V

    .line 86
    invoke-static {p1}, Lcom/weico/international/utility/NotificationHelper;->cancelAll(Landroid/content/Context;)V

    .line 87
    sget-object p1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {p1}, Lcom/weico/international/other/MsgPullManager;->getNeedUpdate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    sget-object p1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {p1}, Lcom/weico/international/other/MsgPullManager;->fetchUnreadMsg()V

    .line 91
    :cond_1
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_update_session"

    invoke-virtual {p1, v3, v1, v2}, Lcom/weico/international/activity/v4/Setting;->saveLong(Ljava/lang/String;J)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    const-string v3, "ad_display_time"

    invoke-virtual {p1, v3}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 95
    sget-object p1, Lcom/weico/international/utility/SinaUtils;->INSTANCE:Lcom/weico/international/utility/SinaUtils;

    invoke-virtual {p1}, Lcom/weico/international/utility/SinaUtils;->displaySinaAd()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    .line 98
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    const-string v5, "display_ad"

    invoke-virtual {p1, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    const-string v5, "ad_interval"

    invoke-virtual {p1, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result p1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_4

    .line 102
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    sput p1, Lcom/weico/international/manager/ProcessMonitor;->repeatedTime:I

    :cond_4
    sub-long/2addr v1, v3

    .line 105
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sget p1, Lcom/weico/international/manager/ProcessMonitor;->repeatedTime:I

    int-to-long v3, p1

    cmp-long p1, v1, v3

    if-lez p1, :cond_5

    .line 109
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/weico/international/manager/UIManager;->theTopActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/weico/international/activity/NewSplashActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "onlyFinishSelf"

    .line 112
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 117
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    const-string v2, "KEY_SHUMENG_LASTTIME"

    invoke-virtual {p1, v2}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget p1, Lcom/weico/international/activity/LogoActivity;->sixHoursTime:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    .line 118
    invoke-static {}, Lcom/weico/international/activity/LogoActivity;->callbackSina()V

    :cond_6
    :goto_0
    return-void
.end method

.method private onForegroundToBackground(Landroid/app/Activity;)V
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":\u524d\u53f0->\u540e\u53f0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProcessMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "key_last_background_time"

    invoke-virtual {p1, v2, v0, v1}, Lcom/weico/international/activity/v4/Setting;->saveLong(Ljava/lang/String;J)V

    .line 62
    invoke-static {}, Lcom/weico/international/manager/ManagerFactory;->getInstance()Lcom/weico/international/manager/ManagerFactory;

    move-result-object p1

    const-class v0, Lcom/weico/international/manager/IAddLogBatch;

    invoke-virtual {p1, v0}, Lcom/weico/international/manager/ManagerFactory;->getManager(Ljava/lang/Class;)Lcom/weico/international/manager/IWeicoManager;

    move-result-object p1

    check-cast p1, Lcom/weico/international/manager/IAddLogBatch;

    invoke-interface {p1}, Lcom/weico/international/manager/IAddLogBatch;->uploadNow()V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/weico/international/manager/ProcessMonitor;->foreground:Z

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Application;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/weico/international/manager/ProcessMonitor;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/weico/international/manager/ProcessMonitor$1;

    invoke-direct {v0, p0}, Lcom/weico/international/manager/ProcessMonitor$1;-><init>(Lcom/weico/international/manager/ProcessMonitor;)V

    iput-object v0, p0, Lcom/weico/international/manager/ProcessMonitor;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/weico/international/manager/ProcessMonitor;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public detach(Landroid/app/Application;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/weico/international/manager/ProcessMonitor;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public isForeground()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/weico/international/manager/ProcessMonitor;->foreground:Z

    return v0
.end method
