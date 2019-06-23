.class public Lcom/weico/international/activity/LogoActivity;
.super Lcom/weico/international/activity/BaseActivity;
.source "LogoActivity.java"


# annotations
.annotation build Lpermissions/dispatcher/RuntimePermissions;
.end annotation


# static fields
.field private static final NIGHT_SKIN_VERSION:I = 0x38

.field public static sixHoursTime:I = 0x5265c00


# instance fields
.field private mLogo:Landroid/view/View;

.field private mReGrant:Landroid/widget/Button;

.field private phoneStateDeny:Z

.field private splashIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/weico/international/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/weico/international/activity/LogoActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->toGuestActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/weico/international/activity/LogoActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initMainTabActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/weico/international/activity/LogoActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initSinaAd()V

    return-void
.end method

.method public static callbackSina()V
    .locals 2

    .line 134
    sget-object v0, Lcom/weico/international/WApplication;->cContext:Landroid/content/ContextWrapper;

    new-instance v1, Lcom/weico/international/activity/LogoActivity$2;

    invoke-direct {v1}, Lcom/weico/international/activity/LogoActivity$2;-><init>()V

    invoke-static {v0, v1}, Lcom/weico/international/utility/KotlinUtilKt;->guestLoginForSinaThrowBatch(Landroid/content/Context;Lcom/weico/international/flux/Func;)V

    return-void
.end method

.method private closeAndroidPDialog()V
    .locals 5

    .line 340
    sget-boolean v0, Lcom/weico/international/utility/ApiHelper;->apiVersion28:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.content.pm.PackageParser$Package"

    .line 342
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 343
    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 344
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 346
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    const-string v2, "android.app.ActivityThread"

    .line 349
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    .line 350
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 351
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    .line 352
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "mHiddenApiWarningShown"

    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 354
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 355
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public static copyNightTheme(Lcom/weico/international/flux/Func;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/weico/international/flux/Func<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/weico/international/WApplication;->cThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/weico/international/activity/LogoActivity$1;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/LogoActivity$1;-><init>(Lcom/weico/international/flux/Func;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private createShortCut()V
    .locals 4

    .line 468
    invoke-static {}, Lcom/weico/international/utility/AppInfoUtils;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "duplicate"

    .line 472
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v2, 0x7f0f00a9

    .line 474
    invoke-virtual {p0, v2}, Lcom/weico/international/activity/LogoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x7f0d0000

    .line 476
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 477
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 480
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/weico/international/activity/LogoActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    .line 481
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 482
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    .line 484
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/LogoActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 488
    invoke-static {v1}, Lcom/weico/international/utility/AppInfoUtils;->setFirstLaunch(Z)V

    :cond_0
    return-void
.end method

.method private doWhatNext()Ljava/lang/String;
    .locals 6

    .line 364
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v1, "first_open_guide"

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 365
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/weico/international/activity/v4/Setting;->saveBoolean(Ljava/lang/String;Z)V

    const-string v0, "guide"

    return-object v0

    .line 368
    :cond_0
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v0

    if-nez v0, :cond_4

    .line 369
    sget-object v0, Lcom/weico/international/utility/SinaUtils;->INSTANCE:Lcom/weico/international/utility/SinaUtils;

    invoke-virtual {v0}, Lcom/weico/international/utility/SinaUtils;->displaySinaAd()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sinaAD"

    return-object v0

    .line 372
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v3

    const-string v4, "LONG_LAST_REFRESH_COOKIES "

    invoke-virtual {v3, v4}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    .line 374
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getAccountList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/weico/international/utility/KotlinUtilKt;->checkCookies(Ljava/util/List;)V

    .line 376
    :cond_2
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v1, "display_ad"

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/weico/international/activity/LogoActivity;->phoneStateDeny:Z

    if-nez v0, :cond_3

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 378
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v2

    const-string v3, "ad_display_time"

    invoke-virtual {v2, v3}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 379
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/weico/international/manager/ProcessMonitor;->repeatedTime:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    const-string v0, "GDTAD"

    return-object v0

    :cond_3
    const-string v0, "main"

    return-object v0

    .line 388
    :cond_4
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "guest"

    return-object v0

    :cond_5
    const-string v0, "guestLogin"

    return-object v0
.end method

.method public static getNightThemePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/weico/international/activity/v4/FileUtil;->SD_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/night.skin."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initGuestActivity()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    new-instance v1, Lcom/weico/international/activity/LogoActivity$11;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/LogoActivity$11;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    invoke-static {v0, v1}, Lcom/weico/international/utility/KotlinUtilKt;->guestLogin(Landroid/content/Context;Lcom/weico/international/flux/Func;)V

    return-void
.end method

.method private initMainTabActivity()V
    .locals 2

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 534
    const-class v1, Lcom/weico/international/activity/MainFragmentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 v1, 0x4000000

    .line 538
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 539
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 540
    sget-object v0, Lcom/weico/international/utility/Constant$Transaction;->GROW_FADE:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p0, v0}, Lcom/weico/international/WIActions;->doAnimationWith(Landroid/app/Activity;Lcom/weico/international/utility/Constant$Transaction;)V

    .line 541
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->finish()V

    return-void
.end method

.method private initSinaAd()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private loginOrGlance()V
    .locals 5

    .line 397
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->doWhatNext()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sinaAD"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->openSinaAD()V

    return-void

    :cond_0
    const-string v1, "GDTAD"

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->openGDTAD()V

    return-void

    :cond_1
    const-string v1, "guestLogin"

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initGuestActivity()V

    return-void

    .line 414
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/weico/international/activity/LogoActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/weico/international/activity/LogoActivity$8;-><init>(Lcom/weico/international/activity/LogoActivity;Ljava/lang/String;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openGDTAD()V
    .locals 4

    .line 430
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/LogoActivity$9;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/LogoActivity$9;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openSinaAD()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/LogoActivity$10;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/LogoActivity$10;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private toGuestActivity()V
    .locals 2

    .line 522
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weico/international/activity/UnLoginMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 523
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/LogoActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    sget-object v0, Lcom/weico/international/utility/Constant$Transaction;->GROW_FADE:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p0, v0}, Lcom/weico/international/WIActions;->doAnimationWith(Landroid/app/Activity;Lcom/weico/international/utility/Constant$Transaction;)V

    .line 526
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->finish()V

    return-void
.end method


# virtual methods
.method public explainWhy(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 3
    .annotation build Lpermissions/dispatcher/OnShowRationale;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/qihuan/core/EasyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0237

    const v2, 0x7f06009e

    .line 256
    invoke-static {v1, v2}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0098

    .line 257
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->positiveText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0096

    .line 258
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->negativeText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/LogoActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/weico/international/activity/LogoActivity$6;-><init>(Lcom/weico/international/activity/LogoActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 259
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onPositive(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/LogoActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/weico/international/activity/LogoActivity$5;-><init>(Lcom/weico/international/activity/LogoActivity;Lpermissions/dispatcher/PermissionRequest;)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onNegative(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v0}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    .line 271
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public explainWhyForState(Lpermissions/dispatcher/PermissionRequest;)V
    .locals 0
    .annotation build Lpermissions/dispatcher/OnShowRationale;
        value = {
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 295
    invoke-interface {p1}, Lpermissions/dispatcher/PermissionRequest;->proceed()V

    return-void
.end method

.method protected initPemission()V
    .locals 5
    .annotation build Lpermissions/dispatcher/NeedsPermission;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/weico/international/activity/LogoActivity$3;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/LogoActivity$3;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    invoke-static {v0}, Lcom/weico/international/activity/LogoActivity;->copyNightTheme(Lcom/weico/international/flux/Func;)V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v2

    const-string v3, "KEY_SHUMENG_LASTTIME"

    invoke-virtual {v2, v3}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/weico/international/activity/LogoActivity;->sixHoursTime:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 233
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v1, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANY9WF3bcd8dR3EEiOjcD2J6DWCZMGYGURyK/941zAPuMNrAAI4WTWkhiRbPITQfHl1B/eJRN3QWQtjbZigOOF0CAwEAAQ=="

    invoke-static {v0, v1}, Lcn/shuzilm/core/Main;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {}, Lcom/weico/international/utility/ActivityUtils;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Weico International "

    const/4 v3, 0x1

    new-instance v4, Lcom/weico/international/activity/LogoActivity$4;

    invoke-direct {v4, p0}, Lcom/weico/international/activity/LogoActivity$4;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcn/shuzilm/core/Main;->getQueryID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcn/shuzilm/core/Listener;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/weico/international/activity/LogoActivity;->next()V

    return-void
.end method

.method protected initPermissionForState()V
    .locals 0
    .annotation build Lpermissions/dispatcher/NeedsPermission;
        value = {
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    return-void
.end method

.method public next()V
    .locals 1

    .line 325
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v0}, Lcom/weico/international/utility/KotlinUtilKt;->initShortcutManager(Landroid/content/Context;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v0}, Lcom/weico/international/utility/KotlinUtilKt;->removeShortcut(Landroid/content/Context;)V

    .line 336
    :goto_0
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->loginOrGlance()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x401

    if-ne p1, v0, :cond_1

    .line 454
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initMainTabActivity()V

    goto :goto_0

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initGuestActivity()V

    .line 461
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/weico/international/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 167
    invoke-super {p0, p1}, Lcom/weico/international/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b006f

    .line 168
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/LogoActivity;->setContentView(I)V

    const p1, 0x7f090543

    .line 171
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    const p1, 0x7f090542

    .line 172
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/weico/international/activity/LogoActivity;->mLogo:Landroid/view/View;

    const p1, 0x7f09053f

    .line 173
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/LogoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/weico/international/activity/LogoActivity;->splashIcon:Landroid/widget/ImageView;

    .line 177
    invoke-static {}, Lcom/weico/international/flux/action/OpenAppAction;->getInstance()Lcom/weico/international/flux/action/OpenAppAction;

    move-result-object p1

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/weico/international/flux/action/OpenAppAction;->openApp(Lcom/weico/international/model/sina/User;)V

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->initSinaAd()V

    .line 182
    invoke-static {p0}, Lcom/weico/international/activity/LogoActivityPermissionsDispatcher;->initPemissionWithCheck(Lcom/weico/international/activity/LogoActivity;)V

    .line 183
    invoke-static {p0}, Lcom/weico/international/activity/LogoActivityPermissionsDispatcher;->initPermissionForStateWithCheck(Lcom/weico/international/activity/LogoActivity;)V

    .line 184
    iget-object p1, p0, Lcom/weico/international/activity/LogoActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v0, "open_logo"

    invoke-static {p1, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/weico/international/utility/Utils;->getLocalLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en_US"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/weico/international/activity/LogoActivity;->splashIcon:Landroid/widget/ImageView;

    const v0, 0x7f080351

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/weico/international/activity/LogoActivity;->splashIcon:Landroid/widget/ImageView;

    const v0, 0x7f080350

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->closeAndroidPDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 316
    invoke-super {p0}, Lcom/weico/international/activity/BaseActivity;->onPause()V

    .line 317
    invoke-direct {p0}, Lcom/weico/international/activity/LogoActivity;->createShortCut()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/weico/international/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 215
    invoke-static {p0, p1, p3}, Lcom/weico/international/activity/LogoActivityPermissionsDispatcher;->onRequestPermissionsResult(Lcom/weico/international/activity/LogoActivity;I[I)V

    return-void
.end method

.method protected phoneStateDenied()V
    .locals 1
    .annotation build Lpermissions/dispatcher/OnPermissionDenied;
        value = {
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/weico/international/activity/LogoActivity;->phoneStateDeny:Z

    const-string v0, "\u8bfb\u53d6\u624b\u673a\u72b6\u6001\u6743\u9650\u88ab\u7981\u6b62"

    .line 305
    invoke-static {v0}, Lcom/weico/international/manager/UIManager;->showSystemToast(Ljava/lang/String;)V

    return-void
.end method

.method protected showDeniedForCamera()V
    .locals 2
    .annotation build Lpermissions/dispatcher/OnPermissionDenied;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    new-instance v1, Lcom/weico/international/activity/LogoActivity$7;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/LogoActivity$7;-><init>(Lcom/weico/international/activity/LogoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method showNeverAskForCamera()V
    .locals 2
    .annotation build Lpermissions/dispatcher/OnNeverAskAgain;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE",
            "android.permission.READ_EXTERNAL_STORAGE",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/weico/international/activity/LogoActivity;->mReGrant:Landroid/widget/Button;

    const v1, 0x7f0f01b3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method showNeverAskForState()V
    .locals 1
    .annotation build Lpermissions/dispatcher/OnNeverAskAgain;
        value = {
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/weico/international/activity/LogoActivity;->phoneStateDeny:Z

    return-void
.end method
