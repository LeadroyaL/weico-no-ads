.class public abstract Lcom/weico/international/activity/BaseFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/weico/international/baseinterface/BasicInitMethod;
.implements Lcom/skin/listener/ISkinUpdate;
.implements Lcom/skin/listener/IDynamicNewView;


# static fields
.field private static final KEY_AD_BACKGROUND_TIME:Ljava/lang/String; = "key_ad_background_time"


# instance fields
.field adSdk:Lcom/weibo/mobileads/controller/AdSdk;

.field backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

.field protected cActivity:Lcom/weico/international/activity/BaseFragmentActivity;

.field protected changeOrientation:Z

.field protected changeStatusBar:Z

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;

.field protected me:Lcom/weico/international/activity/BaseFragmentActivity;

.field private noChangeStatusBarActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skinAdapter:Lcom/skin/SkinAdapter;

.field protected skipSkin:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 60
    iput-object p0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    .line 61
    iput-object p0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->cActivity:Lcom/weico/international/activity/BaseFragmentActivity;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skipSkin:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->changeStatusBar:Z

    .line 67
    iput-boolean v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->changeOrientation:Z

    .line 68
    new-instance v2, Lcom/skin/SkinAdapter;

    invoke-direct {v2}, Lcom/skin/SkinAdapter;-><init>()V

    iput-object v2, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    const/4 v2, 0x6

    .line 70
    new-array v2, v2, [Ljava/lang/String;

    const-class v3, Lcom/weico/international/activity/profile/ProfileActivity;

    .line 71
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-class v0, Lcom/weico/international/activity/scan/ScanWebActivity;

    .line 72
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-class v0, Lcom/weico/international/activity/SeaVideoTimelineActivity;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-class v0, Lcom/weico/international/video/FullVideoActivity;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-class v0, Lcom/weico/international/activity/TopicDetailActivity;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    const-class v0, Lcom/newimagelib/ImageDetailActivity;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 70
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->noChangeStatusBarActivities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected _OnThemeUpdate()V
    .locals 0

    return-void
.end method

.method protected final _OnThemeUpdate(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 389
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 391
    instance-of v1, v0, Lcom/skin/listener/ISkinUpdate;

    if-eqz v1, :cond_0

    .line 392
    check-cast v0, Lcom/skin/listener/ISkinUpdate;

    invoke-interface {v0}, Lcom/skin/listener/ISkinUpdate;->onThemeUpdate()V

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->_OnThemeUpdate()V

    return-void
.end method

.method public callToAlbumActivity()V
    .locals 0

    return-void
.end method

.method protected defaultStatusBar()V
    .locals 4

    .line 147
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "miui"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    .line 149
    invoke-static {p0, v1}, Lcom/weico/international/utility/ActivityUtils;->setMiuiStatusBarLightMode(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 150
    :cond_1
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "meizu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 152
    invoke-static {p0, v1}, Lcom/weico/international/utility/ActivityUtils;->setMeizuStatusBarLightMode(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 153
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060122

    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected dynamicAddSkinEnableView(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/skin/SkinAdapter;->dynamicAddSkinEnableView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected dynamicAddSkinEnableView(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/skin/entity/DynamicAttr;",
            ">;)V"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/skin/SkinAdapter;->dynamicAddSkinEnableView(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public dynamicAddView(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/skin/entity/DynamicAttr;",
            ">;)V"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0, p1, p2}, Lcom/skin/SkinAdapter;->dynamicAddView(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected final enableResponseOnSkinChanging(Z)V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p1}, Lcom/skin/SkinAdapter;->enableResponseOnSkinChanging(Z)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 224
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/weico/international/manager/UIManager;->removeBaseActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 225
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0}, Lcom/skin/SkinAdapter;->onDestroy(Lcom/skin/listener/ISkinUpdate;)V

    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 432
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getSkinAdapter()Lcom/skin/SkinAdapter;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    return-object v0
.end method

.method public initData()V
    .locals 0

    return-void
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initResourceAndColor()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method protected isChangeSkin()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skipSkin:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skin/loader/SkinManager;->isExternalSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSkipSkin()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skipSkin:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/skin/SkinAdapter;->onCreate(Landroid/view/LayoutInflater;Landroid/support/v7/app/AppCompatDelegate;)V

    .line 104
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->skinStatusBar()V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->noChangeStatusBarActivities:Ljava/util/List;

    iget-object v1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->defaultStatusBar()V

    .line 115
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance p1, Lcom/weibo/mobileads/controller/AdSdk;

    invoke-direct {p1, p0}, Lcom/weibo/mobileads/controller/AdSdk;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->adSdk:Lcom/weibo/mobileads/controller/AdSdk;

    .line 118
    invoke-static {p0}, Lcom/weico/international/other/BackOrForegroundManager;->getInstance(Landroid/content/Context;)Lcom/weico/international/other/BackOrForegroundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

    .line 119
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/weico/international/manager/UIManager;->addBaseActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 120
    iget-boolean p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->changeOrientation:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 121
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->setRequestedOrientation(I)V

    :cond_2
    const-string p1, ""

    .line 123
    invoke-static {p1}, Lcom/weico/international/utility/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lcom/weico/international/UmengAgent;->onAppStart(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 128
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skin/loader/SkinManager;->isExternalSkin()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/weico/international/activity/BaseFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/BaseFragmentActivity$1;-><init>(Lcom/weico/international/activity/BaseFragmentActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {p1}, Lcom/weico/international/WApplication;->updateLanguage(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/weico/international/manager/UIManager;->removeBaseActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 215
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0}, Lcom/skin/SkinAdapter;->onDestroy(Lcom/skin/listener/ISkinUpdate;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 320
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 321
    invoke-static {p0}, Lcom/weico/international/UmengAgent;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 260
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 262
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0, p0}, Lcom/skin/SkinAdapter;->onResume(Lcom/skin/listener/ISkinUpdate;)V

    .line 264
    invoke-static {p0}, Lcom/weico/international/UmengAgent;->onResume(Landroid/app/Activity;)V

    .line 266
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/weico/international/other/BackOrForegroundManager;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ad"

    const-string v1, "onResume.back"

    .line 267
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

    invoke-virtual {v0}, Lcom/weico/international/other/BackOrForegroundManager;->backToForeground()V

    .line 269
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->adSdk:Lcom/weibo/mobileads/controller/AdSdk;

    invoke-virtual {v0}, Lcom/weibo/mobileads/controller/AdSdk;->getFlashAd()Lcom/weibo/mobileads/view/FlashAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "key_ad_background_time"

    invoke-static {v3, v6, v4, v5}, Lcom/weibo/mobileads/util/KeyValueStorageUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/weibo/mobileads/view/FlashAd;->isSwitchBackgroundTimeout(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v0}, Lcom/weibo/mobileads/view/FlashAd;->isReady()Z

    move-result v0

    const-string v1, "ad_display_time"

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->adSdk:Lcom/weibo/mobileads/controller/AdSdk;

    invoke-virtual {v0, p0}, Lcom/weibo/mobileads/controller/AdSdk;->showFlashAd(Landroid/app/Activity;)V

    .line 277
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/weico/international/activity/v4/Setting;->saveLong(Ljava/lang/String;J)V

    .line 278
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6, v4, v5}, Lcom/weibo/mobileads/util/KeyValueStorageUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 282
    :cond_0
    sget-object v0, Lcom/weico/international/utility/SinaUtils;->INSTANCE:Lcom/weico/international/utility/SinaUtils;

    invoke-virtual {v0}, Lcom/weico/international/utility/SinaUtils;->displaySinaAd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class com.weico.international.activity.LogoActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class com.weico.international.activity.SplashActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "class com.weico.international.activity.NewSplashActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 283
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v2, "spare_ad_type"

    invoke-virtual {v0, v2}, Lcom/weico/international/activity/v4/Setting;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GDT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 286
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 287
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v4

    const-string v5, "ad_interval"

    invoke-virtual {v4, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 288
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    sput v4, Lcom/weico/international/manager/ProcessMonitor;->repeatedTime:I

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    .line 291
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v4

    const-string v5, "display_ad"

    invoke-virtual {v4, v5}, Lcom/weico/international/activity/v4/Setting;->loadInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/weico/international/manager/ProcessMonitor;->repeatedTime:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 294
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weico/international/manager/UIManager;->theTopActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/weico/international/activity/NewSplashActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "onlyFinishSelf"

    .line 297
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 230
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 231
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;)V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/weico/international/WApplication;->cContext:Landroid/content/ContextWrapper;

    invoke-virtual {v0, v1}, Lcom/weico/international/other/BackOrForegroundManager;->isForground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ad"

    const-string v1, "onStop.back"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->backOrForegroundManager:Lcom/weico/international/other/BackOrForegroundManager;

    invoke-virtual {v0}, Lcom/weico/international/other/BackOrForegroundManager;->goToBackground()V

    .line 241
    new-instance v0, Lcom/weibo/mobileads/model/AdRequest;

    invoke-direct {v0}, Lcom/weibo/mobileads/model/AdRequest;-><init>()V

    .line 242
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weico/international/model/weico/Account;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weico/international/model/weico/Account;->getUid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    .line 244
    invoke-virtual {v0, v2, v1}, Lcom/weibo/mobileads/model/AdRequest;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->adSdk:Lcom/weibo/mobileads/controller/AdSdk;

    new-instance v2, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    invoke-direct {v2}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;-><init>()V

    const-string v3, "pos5a4de65e73d61"

    invoke-virtual {v2, v3}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;->setPosId(Ljava/lang/String;)Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    move-result-object v2

    const/4 v3, 0x1

    .line 246
    invoke-virtual {v2, v3}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;->setSwitchBackground(Z)Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;->setAdRequest(Lcom/weibo/mobileads/model/AdRequest;)Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    move-result-object v2

    const v3, 0x7f0803d9

    invoke-virtual {v2, v3}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;->setBackgroundResId(I)Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    move-result-object v2

    const v3, 0x7f0803da

    invoke-virtual {v2, v3}, Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;->setLogoResId(I)Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;

    move-result-object v2

    .line 245
    invoke-virtual {v1, v2}, Lcom/weibo/mobileads/controller/AdSdk;->initFlashAd(Lcom/weibo/mobileads/controller/Builder$FlashAdBuilder;)V

    .line 247
    iget-object v1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->adSdk:Lcom/weibo/mobileads/controller/AdSdk;

    invoke-virtual {v1, v0}, Lcom/weibo/mobileads/controller/AdSdk;->loadFlashAd(Lcom/weibo/mobileads/model/AdRequest;)V

    .line 248
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "key_ad_background_time"

    invoke-static {v0, v3, v1, v2}, Lcom/weibo/mobileads/util/KeyValueStorageUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 253
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 254
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public final onThemeUpdate()V
    .locals 1

    .line 371
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skinAdapter:Lcom/skin/SkinAdapter;

    invoke-virtual {v0}, Lcom/skin/SkinAdapter;->onThemeUpdate()V

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/BaseFragmentActivity;->_OnThemeUpdate(Z)V

    :cond_0
    return-void
.end method

.method public setSkipSkin(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->skipSkin:Z

    return-void
.end method

.method protected setUpToolbar(Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0905d9

    .line 187
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 189
    iget-object v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 191
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0600d1

    invoke-static {v0}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 193
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->isChangeSkin()Z

    move-result p1

    const v0, 0x7f08018b

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Lcom/weico/international/utility/Res;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 199
    :goto_0
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 201
    iget-object p1, p0, Lcom/weico/international/activity/BaseFragmentActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    new-instance v0, Lcom/weico/international/activity/BaseFragmentActivity$2;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/BaseFragmentActivity$2;-><init>(Lcom/weico/international/activity/BaseFragmentActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected skinStatusBar()V
    .locals 2

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/weico/international/activity/BaseFragmentActivity;->changeStatusBar:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x7f060122

    .line 171
    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method
