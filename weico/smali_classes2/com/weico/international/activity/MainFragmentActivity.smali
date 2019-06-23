.class public Lcom/weico/international/activity/MainFragmentActivity;
.super Lcom/weico/international/activity/BaseFragmentActivity;
.source "MainFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;,
        Lcom/weico/international/activity/MainFragmentActivity$ClearCacheProgressTask;,
        Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;
    }
.end annotation


# static fields
.field public static final HOME:Ljava/lang/String; = "home"

.field public static final MSG_COLOR_START:I = 0x2

.field public static final MSG_COLOR_STOP:I = 0x3

.field public static final TAB_DISCOVER_ID:I = 0x1

.field public static final TAB_INDEX_ID:I = 0x0

.field public static final TAB_MESSAGE_ID:I = 0x2

.field public static final TAB_PROFILE_ID:I = 0x3

.field public static final WORK_DURATION_KEY:Ljava/lang/String; = "com.weico.international.WORK_DURATION_KEY"


# instance fields
.field private accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private cClickToMove:Z

.field private cCommonReceiver:Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;

.field private cFTabHost:Lcom/weico/international/view/FragmentTabHost;

.field private cFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private cIsTabBarHidden:Z

.field private cJumpTo:I

.field private cJumpToWithMessageType:I

.field private cMainActivity:Lcom/weico/international/activity/MainFragmentActivity;

.field private cMemorryTab:I

.field private cNewIndexNum:Landroid/widget/TextView;

.field private cNewMsgNum:Landroid/widget/TextView;

.field private cSelectIcon:Landroid/view/View;

.field private cTabArraw:Landroid/widget/ImageView;

.field private cTabBarLayout:Landroid/view/View;

.field private cTabDiscoveryIcon:Landroid/view/View;

.field protected cTabDiscoveryLayout:Landroid/view/View;

.field private cTabHomeIcon:Landroid/view/View;

.field protected cTabHomeLayout:Landroid/view/View;

.field private cTabMsgIcon:Landroid/view/View;

.field protected cTabMsgLayout:Landroid/view/View;

.field private cTabProfileIcon:Landroid/view/View;

.field protected cTabProfileLayout:Landroid/view/View;

.field private delayTime:I

.field private downloadReceiver:Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;

.field private drawerHeaderArrow:Landroid/widget/ImageView;

.field public handler:Landroid/os/Handler;

.field private isActive:Z

.field private isSetting:Z

.field private lastX:I

.field private locationManager:Landroid/location/LocationManager;

.field private locationProvider:Ljava/lang/String;

.field private mCameraPhotoFile:Ljava/io/File;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mHeader:Landroid/view/View;

.field private mHeaderUnlogin:Landroid/view/View;

.field private mHeaderUnloginBtn:Landroid/view/View;

.field private mJobId:I

.field private mJobIntent:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end field

.field private mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mProfileCover:Landroid/view/View;

.field private mServiceComponent:Landroid/content/ComponentName;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation
.end field

.field private mShadow:Landroid/view/View;

.field private mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabOnClickListener:Landroid/view/View$OnClickListener;

.field private mUserAvatar:Landroid/widget/ImageView;

.field private mUserName:Landroid/widget/TextView;

.field private navBrowsingItem:Landroid/view/MenuItem;

.field private navCacheItem:Landroid/view/MenuItem;

.field private navChangeTheme:Landroid/view/MenuItem;

.field private navDraftsItem:Landroid/view/MenuItem;

.field private navFeedbackItem:Landroid/view/MenuItem;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private navProfileItem:Landroid/view/MenuItem;

.field private navigationView:Landroid/support/design/widget/NavigationView;

.field private networkChangeListener:Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;

.field private scheduleJob_on:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/BaseFragmentActivity;-><init>()V

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->handler:Landroid/os/Handler;

    .line 202
    iput-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMainActivity:Lcom/weico/international/activity/MainFragmentActivity;

    const/4 v0, -0x1

    .line 239
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    .line 243
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpTo:I

    .line 248
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpToWithMessageType:I

    .line 249
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$1;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->lastX:I

    .line 286
    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$2;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$2;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    iput-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x1

    .line 332
    iput-boolean v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->isSetting:Z

    const/4 v2, 0x0

    .line 333
    iput-object v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->mCameraPhotoFile:Ljava/io/File;

    .line 336
    iput-boolean v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->scheduleJob_on:Z

    .line 341
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobId:I

    const v0, 0x9c40

    .line 342
    iput v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->delayTime:I

    return-void
.end method

.method static synthetic access$000(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$002(Lcom/weico/international/activity/MainFragmentActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/weico/international/activity/MainFragmentActivity;)Lcom/weico/international/view/FragmentTabHost;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickDiscoveryTab()V

    return-void
.end method

.method static synthetic access$1100(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickPrivateTab()V

    return-void
.end method

.method static synthetic access$1200(Lcom/weico/international/activity/MainFragmentActivity;Landroid/view/View;Z)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/weico/international/activity/MainFragmentActivity;->moveArraw(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/content/Intent;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->scoreMe()V

    return-void
.end method

.method static synthetic access$1500(Lcom/weico/international/activity/MainFragmentActivity;)Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->downloadReceiver:Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/weico/international/activity/MainFragmentActivity;Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;)Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->downloadReceiver:Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;

    return-object p1
.end method

.method static synthetic access$1700(DD)V
    .locals 0

    .line 179
    invoke-static {p0, p1, p2, p3}, Lcom/weico/international/activity/MainFragmentActivity;->upLoadGps(DD)V

    return-void
.end method

.method static synthetic access$1802(Lcom/weico/international/activity/MainFragmentActivity;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->isSetting:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnlogin:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/weico/international/activity/MainFragmentActivity;I)I
    .locals 0

    .line 179
    iput p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    return p1
.end method

.method static synthetic access$2100(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initNavigationMenuData()V

    return-void
.end method

.method static synthetic access$2200(Lcom/weico/international/activity/MainFragmentActivity;)Z
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->hideMaskIfNeed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/weico/international/activity/MainFragmentActivity;)Ljava/io/File;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mCameraPhotoFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/weico/international/activity/MainFragmentActivity;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mCameraPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$300(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/weico/international/activity/MainFragmentActivity;)Landroid/view/View;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/weico/international/activity/MainFragmentActivity;Z)Z
    .locals 0

    .line 179
    iput-boolean p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cClickToMove:Z

    return p1
.end method

.method static synthetic access$800(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickIndexTab()V

    return-void
.end method

.method static synthetic access$900(Lcom/weico/international/activity/MainFragmentActivity;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickMessageTab()V

    return-void
.end method

.method private addFragment(I)V
    .locals 4

    .line 1763
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMainActivity:Lcom/weico/international/activity/MainFragmentActivity;

    iget-object v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFragmentManager:Landroid/support/v4/app/FragmentManager;

    const v3, 0x7f09040f

    invoke-virtual {v0, v1, v2, v3}, Lcom/weico/international/view/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 1764
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 1765
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    const-string v1, "home"

    invoke-virtual {v0, v1}, Lcom/weico/international/view/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Home"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/weico/international/fragment/IndexFragment;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/weico/international/view/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1766
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    const-string v1, "channel"

    invoke-virtual {v0, v1}, Lcom/weico/international/view/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Channel"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/weico/international/fragment/DiscoveryFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/weico/international/view/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1767
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lcom/weico/international/view/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "Info"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-class v2, Lcom/weico/international/fragment/SeaMessageFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/weico/international/view/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1768
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0, p1}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    .line 1769
    iput p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    return-void
.end method

.method public static changeTheme()V
    .locals 2

    .line 366
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skin/loader/SkinManager;->isExternalSkin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 369
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skin/loader/SkinManager;->release()V

    .line 370
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$4;

    invoke-direct {v0}, Lcom/weico/international/activity/MainFragmentActivity$4;-><init>()V

    invoke-static {v0}, Lcom/weico/international/activity/LogoActivity;->copyNightTheme(Lcom/weico/international/flux/Func;)V

    goto :goto_0

    .line 401
    :cond_0
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skin/loader/SkinManager;->release()V

    .line 402
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/skin/loader/SkinManager;->restoreDefaultTheme()V

    .line 403
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$LanguageChangeEvent;

    invoke-direct {v1}, Lcom/weico/international/flux/Events$LanguageChangeEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private checkEUAgree(Lcom/weico/international/model/sina/User;)V
    .locals 4

    .line 520
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Lcom/weico/international/utility/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 529
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 530
    aget-object v0, v1, v0

    .line 533
    :cond_0
    sget-object v1, Lcom/weico/international/utility/Constant;->EU_country:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 535
    sget-object v1, Lcom/weico/international/utility/Constant;->EU_Code:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v1, v0}, Lcom/weico/international/manager/UIManager;->showEUPrivaty(Landroid/app/Activity;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/weico/international/activity/MainFragmentActivity$6;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Lcom/weico/international/model/sina/User;)V

    .line 538
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_1
    return-void
.end method

.method private checkUpdateForSinaForceUploadVersion()V
    .locals 5

    return-void
.end method

.method private clickDiscoveryTab()V
    .locals 4

    .line 1851
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->hideMaskIfNeed()Z

    .line 1852
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1853
    iget v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    const-string v3, "discovery"

    if-ne v2, v1, :cond_0

    .line 1854
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v2, Lcom/weico/international/flux/Events$DiscoveryRefreshEvent;

    invoke-direct {v2}, Lcom/weico/international/flux/Events$DiscoveryRefreshEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const-string v1, "refresh"

    .line 1855
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1857
    :cond_0
    iget-object v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v2, v1}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    const-string v1, "change"

    .line 1858
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    :goto_0
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v2, "click_bottom_action"

    invoke-static {v1, v2, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private clickIndexTab()V
    .locals 4

    .line 1817
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->hideMaskIfNeed()Z

    .line 1818
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1819
    iget v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    const-string v2, "home"

    if-nez v1, :cond_0

    .line 1820
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    new-instance v3, Lcom/weico/international/flux/Events$HomeTimelineRefreshEvent;

    invoke-direct {v3}, Lcom/weico/international/flux/Events$HomeTimelineRefreshEvent;-><init>()V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    const-string v1, "refresh"

    .line 1821
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    const-string v1, "change"

    .line 1824
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1826
    :goto_0
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v2, "click_bottom_action"

    invoke-static {v1, v2, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private clickMessageTab()V
    .locals 4

    .line 1833
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->hideMaskIfNeed()Z

    .line 1834
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1835
    iget v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    const-string v2, "notification"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1836
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickToRefreshFragment()V

    const-string v1, "refresh"

    .line 1837
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1839
    :cond_0
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v1, v3}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    const-string v1, "change"

    .line 1840
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1842
    sget-object v1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {v1}, Lcom/weico/international/other/MsgPullManager;->fetchFeedback()V

    .line 1844
    :goto_0
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v2, "click_bottom_action"

    invoke-static {v1, v2, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private clickPrivateTab()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1868
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1869
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickToRefreshFragment()V

    goto :goto_0

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0, v1}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method private clickToRefreshFragment()V
    .locals 2

    .line 1879
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1880
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1881
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/weico/international/fragment/BaseTabFragment;

    if-eqz v1, :cond_0

    .line 1882
    check-cast v0, Lcom/weico/international/fragment/BaseTabFragment;

    invoke-virtual {v0}, Lcom/weico/international/fragment/BaseTabFragment;->isClickRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1883
    invoke-virtual {v0, v1}, Lcom/weico/international/fragment/BaseTabFragment;->setClickRefreshing(Z)V

    .line 1884
    invoke-virtual {v0, v1}, Lcom/weico/international/fragment/BaseTabFragment;->clickTabToRefresh(Z)V

    :cond_0
    return-void
.end method

.method private fullScreenEvent(Z)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 2179
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {p1}, Lcom/weico/international/view/FragmentTabHost;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 2182
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2184
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 2189
    :cond_1
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {p1}, Lcom/weico/international/view/FragmentTabHost;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f090573

    .line 2190
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)I
    .locals 5

    .line 1784
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1786
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msg_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    sget-object v0, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {v0}, Lcom/weico/international/other/MsgPullManager;->fetchUnreadMsg()V

    .line 1790
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x989684

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    .line 1793
    iput p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpToWithMessageType:I

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    .line 1795
    iput p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpToWithMessageType:I

    .line 1798
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/weico/international/activity/profile/ProfileActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/weico/international/utility/Constant$Transaction;->PUSH_IN:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p1, v0}, Lcom/weico/international/WIActions;->startActivityWithAction(Landroid/content/Intent;Lcom/weico/international/utility/Constant$Transaction;)V

    goto :goto_1

    .line 1802
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1803
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1804
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1805
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1807
    :cond_2
    invoke-static {v0}, Lcom/weico/international/utility/GooglePushHelper;->receiveMessage(Ljava/util/Map;)V

    :cond_3
    :goto_1
    return v1
.end method

.method private hideMaskIfNeed()Z
    .locals 2

    .line 1940
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->getCurrentTab()I

    move-result v0

    if-nez v0, :cond_0

    .line 1941
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 1942
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/weico/international/fragment/IndexFragment;

    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {v0}, Lcom/weico/international/fragment/IndexFragment;->isMaskShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1945
    invoke-virtual {v0}, Lcom/weico/international/fragment/IndexFragment;->hideMask()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initAccountsList()V
    .locals 4

    .line 1665
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$26;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f0b0111

    invoke-direct {v1, p0, v2, v3}, Lcom/weico/international/activity/MainFragmentActivity$26;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1696
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->notifyAccountData()V

    return-void
.end method

.method private initNavigationMenuData()V
    .locals 4

    .line 1321
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navDraftsItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/weico/international/utility/ActivityUtils;->hasNewDraft()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navProfileItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    .line 1324
    invoke-virtual {v1}, Lcom/weico/international/other/MsgPullManager;->getUnreadMsg()Lcom/weico/international/model/sina/UnreadMsg;

    move-result-object v1

    iget v1, v1, Lcom/weico/international/model/sina/UnreadMsg;->follower:I

    if-lez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 1323
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_3

    .line 1326
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    .line 1327
    invoke-virtual {v1}, Lcom/weico/international/other/MsgPullManager;->getFeedbackCount()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x4

    .line 1326
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$24;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$24;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1337
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initOnFirstOpenOrNot()V
    .locals 5

    .line 669
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v1, "first_open_app"

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 671
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v3

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Lcom/weico/international/flux/action/DiscoveryFragmentAction;->getInstance()Lcom/weico/international/flux/action/DiscoveryFragmentAction;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/weico/international/flux/action/DiscoveryFragmentAction;->loadSquareNew(Z)V

    .line 675
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->showMenu()V

    .line 677
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/weico/international/activity/v4/Setting;->saveBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 679
    :cond_0
    invoke-static {}, Lcom/weico/international/flux/action/DiscoveryFragmentAction;->getInstance()Lcom/weico/international/flux/action/DiscoveryFragmentAction;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/weico/international/flux/action/DiscoveryFragmentAction;->loadSquareNew(Z)V

    :goto_0
    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    .line 682
    :cond_1
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickDiscoveryTab()V

    .line 683
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 684
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/weico/international/activity/MainFragmentActivity;->moveArraw(Landroid/view/View;Z)V

    :cond_2
    if-nez v0, :cond_3

    .line 694
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v1, "long_timeline_first_load_successed"

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0xf731400

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 698
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$9;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$9;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private initRecoverActivity()V
    .locals 3

    .line 585
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 587
    sget-object v0, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/weico/international/activity/MainFragmentActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickDiscoveryTab()V

    .line 589
    sput-object v1, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    goto :goto_1

    .line 590
    :cond_0
    sget-object v0, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/weico/international/activity/profile/ProfileEmptyActivity;

    if-eqz v0, :cond_2

    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/weico/international/activity/profile/ProfileEmptyActivity;

    goto :goto_0

    :cond_1
    const-class v2, Lcom/weico/international/activity/profile/ProfileActivity;

    :goto_0
    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/weico/international/utility/Constant$Transaction;->PUSH_IN:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {v0, v2}, Lcom/weico/international/WIActions;->startActivityWithAction(Landroid/content/Intent;Lcom/weico/international/utility/Constant$Transaction;)V

    .line 592
    sput-object v1, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    goto :goto_1

    .line 593
    :cond_2
    sget-object v0, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/weico/international/activity/UnLoginMainActivity;

    if-eqz v0, :cond_3

    .line 594
    sput-object v1, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    goto :goto_1

    .line 596
    :cond_3
    sget-object v0, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 598
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    const/high16 v2, 0x10000000

    .line 599
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 601
    sput-object v1, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    return-void

    .line 604
    :cond_4
    sput-object v1, Lcom/weico/international/WApplication;->recoverActivity:Landroid/app/Activity;

    :cond_5
    :goto_1
    return-void
.end method

.method private initSinaPushManager()V
    .locals 9

    const-string v0, "1007"

    .line 612
    iget-boolean v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->scheduleJob_on:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 613
    invoke-static {v2}, Lcom/weico/international/utility/KotlinUtilKt;->managePull(Z)V

    .line 615
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->cancelAllJobs()V

    .line 616
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$8;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$8;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    iget v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sina/push/PushManager;->getInstance(Landroid/content/Context;)Lcom/sina/push/PushManager;

    move-result-object v1

    .line 632
    invoke-static {v2}, Lcom/weico/international/utility/KotlinUtilKt;->managePull(Z)V

    .line 634
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    invoke-virtual {v1}, Lcom/sina/push/PushManager;->close()V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 638
    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/weico/international/model/weico/Account;->getGsid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/weico/international/utility/LogUtil;->array([Ljava/lang/Object;)V

    .line 639
    sget-object v4, Lcom/weico/international/manager/accounts/AccountsStore;->lastAccount:Lcom/weico/international/model/weico/Account;

    if-eqz v4, :cond_2

    .line 643
    sget-object v0, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {v0}, Lcom/weico/international/other/MsgPullManager;->fetchUnreadMsg()V

    .line 644
    sget-object v0, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {v0}, Lcom/weico/international/other/MsgPullManager;->fetchFeedback()V

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    .line 648
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v0, v4, v2

    const-string v0, "100"

    aput-object v0, v4, v3

    const/4 v0, 0x3

    const-string v2, "1281095010"

    aput-object v2, v4, v0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/weico/international/model/weico/Account;->getGsid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-virtual {v1, v4}, Lcom/sina/push/PushManager;->initPushChannel([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    invoke-static {v6}, Lcom/weico/international/utility/LogUtil;->e(Ljava/lang/String;)V

    .line 653
    :goto_0
    invoke-static {}, Lcom/weico/international/WApplication;->initNetCore()V

    :goto_1
    return-void
.end method

.method private initXinGe()V
    .locals 2

    const/4 v0, 0x0

    .line 564
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug(Landroid/content/Context;Z)V

    .line 565
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$7;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$7;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-static {p0, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Lcom/tencent/android/tpush/XGIOperateCallback;)V

    .line 577
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    iget-object v0, v0, Lcom/weico/international/model/sina/User;->idstr:Ljava/lang/String;

    .line 578
    invoke-static {v0}, Lcom/weico/international/utility/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/XGPushManager;->registerPush(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/android/tpush/XGPushManager;->setTag(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private moveArraw(Landroid/view/View;Z)V
    .locals 10

    .line 1718
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    const v1, 0x7f08016b

    invoke-static {v1}, Lcom/weico/international/utility/Res;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1719
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x2

    .line 1720
    new-array v2, v0, [I

    .line 1721
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1722
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v1

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    aget v8, v2, v1

    add-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    aget v9, v2, v5

    add-int/2addr v8, v9

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1723
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v6, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    div-int/2addr v4, v0

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    if-nez v4, :cond_0

    .line 1725
    invoke-static {}, Lcom/weico/international/WApplication;->requestScreenWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v3, 0x2

    .line 1727
    :cond_0
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v4, v3

    const/16 v3, 0xb

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    .line 1730
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v7, 0x12c

    if-le p2, v3, :cond_1

    .line 1731
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1733
    :cond_1
    aget p2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 1734
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->lastX:I

    int-to-float v0, v0

    int-to-float v1, p2

    invoke-direct {p1, v0, v1, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1735
    invoke-virtual {p1, v7, v8}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1736
    invoke-virtual {p1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1737
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1738
    iput p2, p0, Lcom/weico/international/activity/MainFragmentActivity;->lastX:I

    goto :goto_0

    .line 1741
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le p2, v3, :cond_3

    .line 1742
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-float p2, v4

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 1744
    :cond_3
    aget p2, v2, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 1745
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->lastX:I

    int-to-float v0, v0

    int-to-float v1, p2

    invoke-direct {p1, v0, v1, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1746
    invoke-virtual {p1, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1747
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1748
    iput p2, p0, Lcom/weico/international/activity/MainFragmentActivity;->lastX:I

    :goto_0
    return-void
.end method

.method private notifyAccountData()V
    .locals 4

    .line 1701
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1702
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1703
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getAccountList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weico/international/model/weico/Account;

    .line 1704
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurAccount()Lcom/weico/international/model/weico/Account;

    move-result-object v3

    if-eq v3, v2, :cond_1

    .line 1705
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1708
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1709
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    .line 1711
    :cond_3
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/weico/international/view/MySimpleRecycleAdapter;

    if-eqz v1, :cond_4

    .line 1712
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/weico/international/view/MySimpleRecycleAdapter;

    invoke-virtual {v1, v0}, Lcom/weico/international/view/MySimpleRecycleAdapter;->setItems(Ljava/util/List;)V

    .line 1713
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 1893
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Lcom/weico/international/activity/MainFragmentActivity$1;)V

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cCommonReceiver:Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;

    .line 1894
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.weico.international.action.WEICO_UNREAD_MSG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1895
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cCommonReceiver:Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/weico/international/activity/MainFragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1898
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$27;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$27;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->networkChangeListener:Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;

    .line 1909
    invoke-static {}, Lcom/weico/international/manager/ManagerFactory;->getInstance()Lcom/weico/international/manager/ManagerFactory;

    move-result-object v0

    const-class v1, Lcom/weico/international/manager/INetworkManager;

    invoke-virtual {v0, v1}, Lcom/weico/international/manager/ManagerFactory;->getManager(Ljava/lang/Class;)Lcom/weico/international/manager/IWeicoManager;

    move-result-object v0

    check-cast v0, Lcom/weico/international/manager/INetworkManager;

    .line 1910
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->networkChangeListener:Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/weico/international/manager/INetworkManager;->registerNetworkChangeListener(Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;Z)V

    return-void
.end method

.method private scoreMe()V
    .locals 3

    .line 742
    new-instance v0, Lcom/qihuan/core/EasyDialog$Builder;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-direct {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f02de

    const v2, 0x7f06009e

    .line 743
    invoke-static {v1, v2}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f02e0

    .line 744
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->positiveText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f02df

    .line 745
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->negativeText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f02dd

    .line 746
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->neutralText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 747
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->canceledOnTouchOutside(Z)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$11;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$11;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 748
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onPositive(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$10;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$10;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 758
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onNegative(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v1}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    .line 765
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private setDragEnable(Z)V
    .locals 0

    return-void
.end method

.method private setupDrawerContent(Landroid/support/design/widget/NavigationView;)V
    .locals 1

    .line 1420
    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$25;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$25;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {p1, v0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method private showProfileBg(Landroid/view/View;)V
    .locals 5

    .line 1163
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    .line 1166
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skin/loader/SkinManager;->isNightSkin()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    iget v1, v0, Lcom/weico/international/model/sina/User;->genderInt:I

    if-nez v1, :cond_0

    const v1, 0x7f080323

    goto :goto_0

    :cond_0
    const v1, 0x7f080324

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const v1, 0x7f080325

    .line 1169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1171
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz v0, :cond_2

    .line 1173
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STR_WEICO_COVER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weico/international/activity/v4/Setting;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1174
    invoke-virtual {v0, v1}, Lcom/weico/international/model/sina/User;->setWeicoCover(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 1176
    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getShownCover()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/weico/international/utility/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1178
    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getShownCover()Ljava/lang/String;

    move-result-object v0

    .line 1180
    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$18;

    invoke-direct {v1, p0, p1, v0}, Lcom/weico/international/activity/MainFragmentActivity$18;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private startServices()V
    .locals 2

    .line 1920
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$28;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$28;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static upLoadGps(DD)V
    .locals 3

    .line 345
    invoke-static {}, Lcom/weico/international/utility/ParamsUtil;->getInternationParams()Ljava/util/Map;

    move-result-object v0

    .line 346
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weico/international/model/sina/User;->getIdstr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weico/international/model/sina/User;->getIdstr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "longitude"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Lcom/weibo/sdk/android/api/WeicoRetrofitAPI;->getInternationalService()Lcom/weibo/sdk/android/api/WeicoRetrofitAPI$InternationalService;

    move-result-object p0

    new-instance p1, Lcom/weico/international/activity/MainFragmentActivity$3;

    invoke-direct {p1}, Lcom/weico/international/activity/MainFragmentActivity$3;-><init>()V

    invoke-interface {p0, v0, p1}, Lcom/weibo/sdk/android/api/WeicoRetrofitAPI$InternationalService;->uploadGps(Ljava/util/Map;Lcom/weico/international/model/weico/draft/UploadListener;)V

    return-void
.end method


# virtual methods
.method protected _OnThemeUpdate()V
    .locals 2

    .line 1346
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->_OnThemeUpdate()V

    .line 1348
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-eqz v0, :cond_0

    const v1, 0x7f060109

    .line 1351
    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 1352
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f060107

    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public cancelAllJobs()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const-string v0, "jobscheduler"

    .line 2592
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 2594
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    return-void
.end method

.method public choiseSettingOrAccount(Z)V
    .locals 9

    const-wide/16 v0, 0xde

    const v2, 0x7f090426

    const v3, 0x7f090425

    const v4, 0x7f090424

    const v5, 0x7f090418

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_3

    .line 1203
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    if-nez v8, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v4, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1207
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v3, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1208
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v2, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1209
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1210
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->drawerHeaderArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1211
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1213
    invoke-static {}, Lcom/weico/international/manager/preferences/WIPreferences;->getInstance()Lcom/weico/international/manager/preferences/WIPreferences;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "G_keyBrowsingHistory_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/weico/international/manager/preferences/WIPreferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1215
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1217
    :cond_1
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 1220
    :cond_3
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v5, v7}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1221
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v4, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1222
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v3, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1223
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v2, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1224
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->drawerHeaderArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1225
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public closeLeft()V
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method

.method public finishJob()V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    const-string v0, "jobscheduler"

    .line 2605
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_0

    return-void

    .line 2607
    :cond_0
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    .line 2608
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 2610
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    .line 2611
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    return-void
.end method

.method public getMemorryTab()I
    .locals 1

    .line 738
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    return v0
.end method

.method public getNavCacheItem()Landroid/view/MenuItem;
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navCacheItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getSetting()V
    .locals 3

    .line 2501
    invoke-static {}, Lcom/weico/international/utility/ParamsUtil;->getInternationParams()Ljava/util/Map;

    move-result-object v0

    .line 2502
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v1

    iget-wide v1, v1, Lcom/weico/international/model/sina/User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    invoke-static {}, Lcom/weibo/sdk/android/api/WeicoRetrofitAPI;->getInternationalService()Lcom/weibo/sdk/android/api/WeicoRetrofitAPI$InternationalService;

    move-result-object v1

    new-instance v2, Lcom/weico/international/activity/MainFragmentActivity$35;

    invoke-direct {v2, p0}, Lcom/weico/international/activity/MainFragmentActivity$35;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/weibo/sdk/android/api/WeicoRetrofitAPI$InternationalService;->isShowUserLike(Ljava/util/Map;Lcom/weibo/sdk/android/api/WeicoCallbackString;)V

    return-void
.end method

.method public getcJumpToWithMessageType()I
    .locals 1

    .line 408
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpToWithMessageType:I

    return v0
.end method

.method public initData()V
    .locals 5

    .line 1603
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 1606
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1607
    invoke-direct {p0, v1}, Lcom/weico/international/activity/MainFragmentActivity;->addFragment(I)V

    .line 1608
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cMemorryTab:I

    goto :goto_0

    .line 1610
    :cond_0
    invoke-direct {p0, v1}, Lcom/weico/international/activity/MainFragmentActivity;->addFragment(I)V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 1630
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1631
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    goto :goto_1

    .line 1626
    :cond_1
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1627
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    goto :goto_1

    .line 1618
    :cond_2
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1619
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    goto :goto_1

    .line 1622
    :cond_3
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1623
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    goto :goto_1

    .line 1614
    :cond_4
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1615
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    .line 1634
    :goto_1
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cSelectIcon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1638
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    if-nez v0, :cond_5

    return-void

    .line 1641
    :cond_5
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    const v2, 0x7f080061

    if-eqz v0, :cond_7

    .line 1644
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getScreen_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getAvatarHd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/weico/international/utility/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1646
    invoke-static {p0}, Lcom/weico/international/utility/ImageLoaderKt;->with(Landroid/content/Context;)Lcom/weico/international/utility/ImageLoader;

    move-result-object v3

    .line 1647
    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getAvatarHd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/weico/international/utility/ImageLoader;->load(Ljava/lang/String;)Lcom/weico/international/utility/ImageLoader;

    move-result-object v0

    .line 1648
    invoke-virtual {v0, v2}, Lcom/weico/international/utility/ImageLoader;->placeholderRes(I)Lcom/weico/international/utility/ImageLoader;

    move-result-object v0

    sget-object v2, Lcom/weico/international/utility/Transformation;->RounderCorner:Lcom/weico/international/utility/Transformation;

    .line 1649
    invoke-virtual {v0, v2}, Lcom/weico/international/utility/ImageLoader;->transform(Lcom/weico/international/utility/Transformation;)Lcom/weico/international/utility/ImageLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    .line 1650
    invoke-virtual {v0, v2}, Lcom/weico/international/utility/ImageLoader;->into(Landroid/widget/ImageView;)V

    .line 1652
    :cond_6
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initAccountsList()V

    goto :goto_2

    .line 1654
    :cond_7
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    const v3, 0x7f0f005a

    invoke-virtual {p0, v3}, Lcom/weico/international/activity/MainFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1655
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1657
    :goto_2
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navDraftsItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/weico/international/utility/ActivityUtils;->hasNewDraft()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initListener()V
    .locals 3

    .line 1231
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Lcom/weico/international/view/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1232
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1233
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1235
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1236
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mTabOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 1237
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->choiseSettingOrAccount(Z)V

    .line 1240
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeader:Landroid/view/View;

    const-string v1, "slideHeader"

    if-eqz v0, :cond_0

    .line 1241
    new-instance v2, Lcom/weico/international/activity/MainFragmentActivity$19;

    invoke-direct {v2, p0, v1}, Lcom/weico/international/activity/MainFragmentActivity$19;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1253
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnlogin:Landroid/view/View;

    new-instance v2, Lcom/weico/international/activity/MainFragmentActivity$20;

    invoke-direct {v2, p0, v1}, Lcom/weico/international/activity/MainFragmentActivity$20;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1260
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnloginBtn:Landroid/view/View;

    new-instance v2, Lcom/weico/international/activity/MainFragmentActivity$21;

    invoke-direct {v2, p0}, Lcom/weico/international/activity/MainFragmentActivity$21;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1269
    new-instance v2, Lcom/weico/international/activity/MainFragmentActivity$22;

    invoke-direct {v2, p0, v1}, Lcom/weico/international/activity/MainFragmentActivity$22;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$23;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$23;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public initLog()V
    .locals 2

    const-string v0, "4215535043"

    .line 715
    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setAppKey(Ljava/lang/String;)V

    .line 716
    invoke-static {}, Lcom/weico/international/utility/ActivityUtils;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setChannel(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 717
    invoke-static {v0}, Lcom/sina/weibo/sdk/statistic/WBAgent;->openActivityDurationTrack(Z)V

    const-wide/32 v0, 0x16378

    .line 720
    :try_start_0
    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/statistic/WBAgent;->setUploadInterval(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public initResourceAndColor()V
    .locals 2

    const v0, 0x7f090579

    .line 1407
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060115

    .line 1411
    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public initView()V
    .locals 13

    const v0, 0x7f0b0046

    .line 1021
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->setContentView(I)V

    .line 1023
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->isChangeSkin()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f09019f

    .line 1025
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    const v1, 0x7f060121

    invoke-static {v1}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackgroundColor(I)V

    :cond_0
    const v0, 0x7f090572

    .line 1028
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mShadow:Landroid/view/View;

    const v0, 0x7f090535

    .line 1029
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f09046d

    .line 1030
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    .line 1031
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1032
    invoke-direct {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->setupDrawerContent(Landroid/support/design/widget/NavigationView;)V

    .line 1034
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getHeaderCount()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f090226

    .line 1036
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mProfileCover:Landroid/view/View;

    .line 1037
    iget-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mProfileCover:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/weico/international/activity/MainFragmentActivity;->showProfileBg(Landroid/view/View;)V

    const v4, 0x7f090228

    .line 1039
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    const v4, 0x7f090224

    .line 1040
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    const v4, 0x7f090223

    .line 1041
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->drawerHeaderArrow:Landroid/widget/ImageView;

    const v4, 0x7f090229

    .line 1042
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnlogin:Landroid/view/View;

    const v4, 0x7f090227

    .line 1043
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnloginBtn:Landroid/view/View;

    const v4, 0x7f090225

    .line 1044
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeader:Landroid/view/View;

    const v4, 0x7f090012

    .line 1045
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1046
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->accountsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/FixedLinearLayoutManager;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/FixedLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 1047
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mHeaderUnlogin:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->drawerHeaderArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v4, 0x7f090462

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navDraftsItem:Landroid/view/MenuItem;

    .line 1056
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navDraftsItem:Landroid/view/MenuItem;

    const v5, 0x7f0b018f

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1057
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v6, 0x7f090460

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navCacheItem:Landroid/view/MenuItem;

    .line 1058
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v6, 0x40800000    # 4.0f

    .line 1059
    invoke-static {v6}, Lcom/weico/international/utility/Utils;->dip2px(F)I

    move-result v6

    invoke-virtual {v0, v3, v3, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v6, 0x41600000    # 14.0f

    .line 1060
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x11

    .line 1061
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 1062
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navCacheItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1065
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v6

    const-string v7, "BOOL_SHOW_SUPER_TOPIC"

    invoke-virtual {v6, v7}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x7f09046b

    if-nez v6, :cond_2

    .line 1066
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 1069
    :cond_2
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v6

    const-string v8, "BOOL_SHOW_DAILY_benefit"

    invoke-virtual {v6, v8}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v6

    const v8, 0x7f090461

    .line 1070
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 1073
    :cond_3
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v6

    const-string v9, "STR_SHOW_RECOMMEND_miaowu"

    invoke-virtual {v6, v9}, Lcom/weico/international/activity/v4/Setting;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1074
    invoke-static {v6}, Lcom/weico/international/utility/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    const v10, 0x7f090469

    .line 1075
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-interface {v6, v10}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 1077
    :cond_4
    iget-object v9, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v9}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-interface {v9, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1080
    :goto_0
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v6}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v6

    const v9, 0x7f09045f

    invoke-interface {v6, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    .line 1083
    invoke-static {}, Lcom/weico/international/manager/preferences/WIPreferences;->getInstance()Lcom/weico/international/manager/preferences/WIPreferences;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "G_keyBrowsingHistory_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lcom/weico/international/manager/preferences/WIPreferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1084
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1086
    :cond_5
    iget-object v6, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1090
    :goto_1
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v3}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 1091
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v3}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v6, 0x7f09045c

    invoke-interface {v3, v6}, Landroid/view/Menu;->removeItem(I)V

    const v3, 0x7f060108

    const-string v6, "textColor"

    .line 1094
    invoke-virtual {p0, v0, v6, v3}, Lcom/weico/international/activity/MainFragmentActivity;->dynamicAddSkinEnableView(Landroid/view/View;Ljava/lang/String;I)V

    .line 1096
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f090467

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navProfileItem:Landroid/view/MenuItem;

    .line 1097
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navProfileItem:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1098
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navProfileItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v6, 0x7f090464

    invoke-interface {v0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    .line 1100
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    .line 1101
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1102
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    :cond_6
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f09046c

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navChangeTheme:Landroid/view/MenuItem;

    .line 1105
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navChangeTheme:Landroid/view/MenuItem;

    const v3, 0x7f0b0190

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1106
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navChangeTheme:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 1107
    invoke-static {}, Lcom/skin/loader/SkinManager;->getInstance()Lcom/skin/loader/SkinManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/skin/loader/SkinManager;->isExternalSkin()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 1108
    new-instance v3, Lcom/weico/international/activity/MainFragmentActivity$17;

    invoke-direct {v3, p0}, Lcom/weico/international/activity/MainFragmentActivity$17;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1114
    sget-boolean v0, Lcom/weico/international/WApplication;->cIsLollipopUp:Z

    if-eqz v0, :cond_7

    const v0, 0x7f09004c

    .line 1115
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :cond_7
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1119
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/Menu;->removeItem(I)V

    .line 1120
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f090463

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1121
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f090466

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1122
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f090468

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1123
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/Menu;->removeItem(I)V

    .line 1124
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f090465

    invoke-interface {v0, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 1125
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 1126
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/Menu;->removeItem(I)V

    :cond_8
    const v0, 0x7f090577

    .line 1130
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/weico/international/view/FragmentTabHost;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    const v0, 0x7f090573

    .line 1132
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabBarLayout:Landroid/view/View;

    const v0, 0x7f090582

    .line 1133
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeLayout:Landroid/view/View;

    const v0, 0x7f090583

    .line 1134
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgLayout:Landroid/view/View;

    const v0, 0x7f090578

    .line 1136
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryLayout:Landroid/view/View;

    const v0, 0x7f090585

    .line 1137
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileLayout:Landroid/view/View;

    const v0, 0x7f09057d

    .line 1139
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabHomeIcon:Landroid/view/View;

    const v0, 0x7f09057f

    .line 1140
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabMsgIcon:Landroid/view/View;

    const v0, 0x7f09057b

    .line 1141
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabDiscoveryIcon:Landroid/view/View;

    const v0, 0x7f090581

    .line 1142
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabProfileIcon:Landroid/view/View;

    const v0, 0x7f090574

    .line 1143
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabArraw:Landroid/widget/ImageView;

    const v0, 0x7f090476

    .line 1145
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewIndexNum:Landroid/widget/TextView;

    .line 1146
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewIndexNum:Landroid/widget/TextView;

    const v2, 0x7f09058c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v0, 0x7f090477

    .line 1147
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewMsgNum:Landroid/widget/TextView;

    .line 1150
    sget-object v0, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    const-class v2, Lcom/weico/international/activity/MainFragmentActivity;

    invoke-virtual {v0, v2}, Lcom/weico/international/other/MsgPullManager;->showMsg(Ljava/lang/Class;)V

    .line 1152
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const v2, 0x7f06010c

    invoke-static {v2}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/weico/international/utility/WeicoViewUtils;->setNavigationMenuLineStyle(Landroid/support/design/widget/NavigationView;II)V

    .line 1154
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v1, "BOOL_FULL_SCREEN"

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->fullScreenEvent(Z)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2467
    invoke-super {p0, p1, p2, p3}, Lcom/weico/international/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xbcf

    if-eq p1, p2, :cond_1

    goto :goto_2

    .line 2473
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_2

    sget-boolean p1, Lcom/weico/international/WApplication;->isForceSystemCamera:Z

    if-eqz p1, :cond_3

    .line 2474
    :cond_2
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mCameraPhotoFile:Ljava/io/File;

    if-eqz p1, :cond_3

    .line 2475
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 2476
    iput-object p2, p0, Lcom/weico/international/activity/MainFragmentActivity;->mCameraPhotoFile:Ljava/io/File;

    goto :goto_0

    :cond_3
    const-string p1, ""

    .line 2479
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 2480
    new-instance p2, Lcom/weico/international/model/weico/draft/DraftWeibo;

    invoke-direct {p2}, Lcom/weico/international/model/weico/draft/DraftWeibo;-><init>()V

    const-string p3, ".mp4"

    .line 2481
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2482
    new-instance p3, Lcom/weico/international/model/weico/draft/DraftVideo;

    invoke-direct {p3, p1}, Lcom/weico/international/model/weico/draft/DraftVideo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/weico/international/model/weico/draft/DraftWeibo;->setVideo(Lcom/weico/international/model/weico/draft/DraftVideo;)V

    goto :goto_1

    .line 2484
    :cond_4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2485
    new-instance v0, Lcom/weico/international/model/weico/draft/DraftBitmap;

    invoke-direct {v0, p1}, Lcom/weico/international/model/weico/draft/DraftBitmap;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2486
    invoke-virtual {p2, p3}, Lcom/weico/international/model/weico/draft/DraftWeibo;->setBitmaps(Ljava/util/List;)V

    .line 2488
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/weico/international/activity/compose/SeaComposeActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2489
    invoke-virtual {p2}, Lcom/weico/international/model/weico/draft/DraftWeibo;->getDraftType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "type"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "draft"

    .line 2490
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2491
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2492
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/weico/international/manager/UIManager;->theTopActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcom/weico/international/utility/Constant$Transaction;->PRESENT_UP:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p1, p2}, Lcom/weico/international/WIActions;->doAnimationWith(Landroid/app/Activity;Lcom/weico/international/utility/Constant$Transaction;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 859
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->onAttachedToWindow()V

    .line 860
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$14;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$14;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1955
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabBarLayout:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1960
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$BottomBehaviorEvent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Lcom/weico/international/flux/Events$BottomBehaviorEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 1964
    :cond_1
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->hideMaskIfNeed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1968
    :cond_2
    sget-boolean v0, Lcom/weico/international/service/AudioPlayService;->mIsPlay:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/weico/international/service/AudioPlayService;->mIsPause:Z

    if-nez v0, :cond_3

    .line 1969
    new-instance v0, Lcom/qihuan/core/EasyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0223

    const v2, 0x7f06009e

    .line 1970
    invoke-static {v1, v2}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f017d

    .line 1971
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->negativeText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f00c0

    .line 1972
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->positiveText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$30;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$30;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 1973
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onNegative(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$29;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$29;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 1982
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->onPositive(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/weico/international/utility/font/FontOverride;->fontToSet:Landroid/graphics/Typeface;

    .line 1991
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->typeface(Landroid/graphics/Typeface;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x43700000    # 240.0f

    .line 1992
    invoke-static {v1}, Lcom/weico/international/utility/Utils;->dip2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->dialogWidth(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v1}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    .line 1993
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    .line 1994
    invoke-virtual {v0}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 1999
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1009
    invoke-super {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1010
    invoke-static {}, Lcom/weico/international/WApplication;->requestDisplayMetrics()V

    .line 1011
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$16;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$16;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->changeStatusBar:Z

    .line 414
    invoke-super {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 443
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object p1

    iput-object p0, p1, Lcom/weico/international/manager/UIManager;->cMainActivity:Lcom/weico/international/activity/MainFragmentActivity;

    .line 445
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v2, "open_main"

    invoke-static {p1, v2}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    sget-object p1, Lcom/weico/international/WApplication;->cContext:Landroid/content/ContextWrapper;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.READ_PHONE_STATE"

    aput-object v4, v3, v0

    invoke-static {p1, v3}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 447
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-string v0, "no_tel_priv"

    invoke-static {p1, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initLog()V

    .line 451
    iget-boolean p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->scheduleJob_on:Z

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 452
    new-instance p1, Landroid/content/ComponentName;

    const-class v0, Lcom/weico/international/service/MyJobService;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mServiceComponent:Landroid/content/ComponentName;

    .line 453
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/weico/international/service/MyJobService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobIntent:Landroid/content/Intent;

    .line 459
    :cond_1
    invoke-static {}, Lcom/weico/international/flux/action/OpenAppAction;->getInstance()Lcom/weico/international/flux/action/OpenAppAction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/weico/international/flux/action/OpenAppAction;->downloadSetting()V

    .line 460
    invoke-static {}, Lcom/weico/international/flux/action/OpenAppAction;->getInstance()Lcom/weico/international/flux/action/OpenAppAction;

    move-result-object p1

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/weico/international/flux/action/OpenAppAction;->openAdSetting(Lcom/weico/international/model/sina/User;)V

    .line 461
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getSetting()V

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/weico/international/manager/UIManager;->hasAgreeEUPrivaty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 465
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->checkEUAgree(Lcom/weico/international/model/sina/User;)V

    .line 468
    :cond_2
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->registerReceiver()V

    .line 469
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->startServices()V

    .line 470
    iput-boolean v2, p0, Lcom/weico/international/activity/MainFragmentActivity;->isActive:Z

    .line 471
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initView()V

    .line 472
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initListener()V

    .line 473
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initResourceAndColor()V

    .line 474
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initData()V

    .line 476
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 478
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initOnFirstOpenOrNot()V

    .line 479
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->uploadLocationIfNeed()V

    .line 483
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v0, "key_update_session"

    invoke-virtual {p1, v0, v3, v4}, Lcom/weico/international/activity/v4/Setting;->saveLong(Ljava/lang/String;J)V

    .line 491
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initSinaPushManager()V

    .line 493
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {p1}, Lcom/weico/international/utility/KotlinUtilKt;->initShortcutManager(Landroid/content/Context;)V

    .line 495
    invoke-static {v2}, Lcom/weico/international/utility/KotlinUtilKt;->followIWeibo(Z)V

    .line 498
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    const-string v2, "STR_COUNTRY"

    invoke-virtual {v0, v2}, Lcom/weico/international/activity/v4/Setting;->loadString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "country"

    invoke-virtual {p1, v2, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    const-string v0, "openApp"

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 501
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initRecoverActivity()V

    .line 502
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {p1}, Lcom/weico/international/utility/KotlinUtilKt;->showPrivacy(Landroid/app/Activity;)V

    .line 504
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->initXinGe()V

    .line 507
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    invoke-static {v0}, Lcom/sina/weibo/sdk/WbSdk;->isWbInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    goto :goto_0

    :cond_3
    const-string v0, "0"

    :goto_0
    const-string v1, "event_install_weibo"

    invoke-static {p1, v1, v0}, Lcom/weico/international/UmengAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 969
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cCommonReceiver:Lcom/weico/international/activity/MainFragmentActivity$CommonBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 970
    invoke-static {}, Lcom/weico/international/manager/ManagerFactory;->getInstance()Lcom/weico/international/manager/ManagerFactory;

    move-result-object v0

    const-class v1, Lcom/weico/international/manager/INetworkManager;

    invoke-virtual {v0, v1}, Lcom/weico/international/manager/ManagerFactory;->getManager(Ljava/lang/Class;)Lcom/weico/international/manager/IWeicoManager;

    move-result-object v0

    check-cast v0, Lcom/weico/international/manager/INetworkManager;

    .line 971
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->networkChangeListener:Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;

    invoke-interface {v0, v1}, Lcom/weico/international/manager/INetworkManager;->unRegisterNetworkChangeListener(Lcom/weico/international/manager/INetworkManager$NetworkChangeListener;)V

    .line 972
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->downloadReceiver:Lcom/weico/international/activity/MainFragmentActivity$DownloadUpdateCompleteReceiver;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 980
    :cond_0
    iget-boolean v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->scheduleJob_on:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 982
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->stopService(Landroid/content/Intent;)Z

    const-string v0, "jobscheduler"

    .line 983
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    .line 987
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 990
    :cond_2
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->onDestroy()V

    .line 994
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    if-eqz v0, :cond_3

    .line 995
    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->clearAllTabs()V

    .line 997
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 998
    invoke-static {}, Lcom/weico/international/video/JCVideoPlayerWeico;->weicoReleaseAllVideo()V

    .line 999
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_4

    .line 1000
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 1003
    :cond_4
    invoke-static {}, Lcom/sina/weibo/sdk/statistic/WBAgent;->onKillProcess()V

    .line 1004
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/EventKotlin$MsgUpdateEvent;)V
    .locals 4

    .line 2078
    invoke-virtual {p1}, Lcom/weico/international/EventKotlin$MsgUpdateEvent;->getUnreadMsg()Lcom/weico/international/model/sina/UnreadMsg;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2079
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/weico/international/EventKotlin$MsgUpdateEvent;->classCheckOK(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_4

    .line 2082
    :cond_0
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "BOOL_MSG_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    .line 2083
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewIndexNum:Landroid/widget/TextView;

    iget v3, v0, Lcom/weico/international/model/sina/UnreadMsg;->status:I

    if-nez v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 2085
    :cond_2
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewIndexNum:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2087
    :goto_1
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cNewMsgNum:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/weico/international/model/sina/UnreadMsg;->allMsgCount()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2088
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2089
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->navFeedbackItem:Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    .line 2090
    invoke-virtual {v0}, Lcom/weico/international/other/MsgPullManager;->getFeedbackCount()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    .line 2089
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_4
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$AccountDeleteEvent;)V
    .locals 0

    .line 2338
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->notifyAccountData()V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$AccountRealAuthEvent;)V
    .locals 4

    .line 2050
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$31;

    invoke-direct {v1, p0, p1}, Lcom/weico/international/activity/MainFragmentActivity$31;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Lcom/weico/international/flux/Events$AccountRealAuthEvent;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$BottomBehaviorEvent;)V
    .locals 6

    .line 2151
    iget p1, p1, Lcom/weico/international/flux/Events$BottomBehaviorEvent;->percent:F

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 2152
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v1}, Lcom/weico/international/view/FragmentTabHost;->getCurrentTab()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2160
    :cond_2
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabBarLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    .line 2161
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabBarLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2162
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cTabBarLayout:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mShadow:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2164
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mShadow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2165
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mShadow:Landroid/view/View;

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$BrowseFullScreenEvent;)V
    .locals 0

    .line 2174
    iget-boolean p1, p1, Lcom/weico/international/flux/Events$BrowseFullScreenEvent;->enable:Z

    invoke-direct {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->fullScreenEvent(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$DownloadUpdateCompleteEvent;)V
    .locals 2

    .line 2099
    new-instance p1, Lcom/qihuan/core/EasyDialog$Builder;

    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weico/international/manager/UIManager;->theTopActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0160

    const v1, 0x7f06009e

    .line 2100
    invoke-static {v0, v1}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0098

    .line 2101
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->positiveText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f0096

    .line 2102
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->negativeText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$32;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$32;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 2103
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->onPositive(Lcom/qihuan/core/EasyDialog$SingleButtonCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v0}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    .line 2113
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    .line 2114
    invoke-virtual {p1}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$HomeTimelineOpenStatusEvent;)V
    .locals 3

    .line 2377
    iget-object v0, p1, Lcom/weico/international/flux/Events$HomeTimelineOpenStatusEvent;->status:Lcom/weico/international/model/sina/Status;

    if-nez v0, :cond_0

    return-void

    .line 2380
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weico/international/activity/SeaStatusDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2381
    iget-object v1, p1, Lcom/weico/international/flux/Events$HomeTimelineOpenStatusEvent;->status:Lcom/weico/international/model/sina/Status;

    invoke-virtual {v1}, Lcom/weico/international/model/sina/Status;->toJson()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2382
    iget-object p1, p1, Lcom/weico/international/flux/Events$HomeTimelineOpenStatusEvent;->status:Lcom/weico/international/model/sina/Status;

    invoke-virtual {p1}, Lcom/weico/international/model/sina/Status;->isLongText()Z

    move-result p1

    const-string v1, "is_long_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2384
    sget-object p1, Lcom/weico/international/utility/Constant$Transaction;->PUSH_IN:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {v0, p1}, Lcom/weico/international/WIActions;->startActivityWithAction(Landroid/content/Intent;Lcom/weico/international/utility/Constant$Transaction;)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$HomeTimelineOpenUserEvent;)V
    .locals 2

    .line 2393
    iget-object v0, p1, Lcom/weico/international/flux/Events$HomeTimelineOpenUserEvent;->user:Lcom/weico/international/model/sina/User;

    if-nez v0, :cond_0

    return-void

    .line 2397
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weico/international/activity/profile/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2398
    iget-object p1, p1, Lcom/weico/international/flux/Events$HomeTimelineOpenUserEvent;->user:Lcom/weico/international/model/sina/User;

    invoke-virtual {p1}, Lcom/weico/international/model/sina/User;->toJson()Ljava/lang/String;

    move-result-object p1

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2399
    sget-object p1, Lcom/weico/international/utility/Constant$Transaction;->PUSH_IN:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {v0, p1}, Lcom/weico/international/WIActions;->startActivityWithAction(Landroid/content/Intent;Lcom/weico/international/utility/Constant$Transaction;)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$HomeTimelineSwitchTab;)V
    .locals 0

    .line 2138
    invoke-direct {p0}, Lcom/weico/international/activity/MainFragmentActivity;->clickDiscoveryTab()V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$LanguageChangeEvent;)V
    .locals 2

    .line 2119
    sget-object p1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {p1}, Lcom/weico/international/other/MsgPullManager;->clearAllMsg()V

    const-string p1, "-1"

    .line 2120
    sput-object p1, Lcom/weico/international/WApplication;->mCurrentGroup:Ljava/lang/String;

    .line 2122
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const-class v1, Lcom/weico/international/activity/MainFragmentActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 2123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2124
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2126
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->finish()V

    .line 2128
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2129
    sget-object p1, Lcom/weico/international/utility/Constant$Transaction;->GROW_FADE:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p0, p1}, Lcom/weico/international/WIActions;->doAnimationWith(Landroid/app/Activity;Lcom/weico/international/utility/Constant$Transaction;)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$MainCacheSizeUpdateEvent;)V
    .locals 5

    .line 2347
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getNavCacheItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2348
    iget-object v1, p1, Lcom/weico/international/flux/Events$MainCacheSizeUpdateEvent;->size:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/weico/international/flux/Events$MainCacheSizeUpdateEvent;->size:Ljava/lang/String;

    invoke-static {}, Lcom/weico/international/utility/GetFileSizeUtil;->getInstance()Lcom/weico/international/utility/GetFileSizeUtil;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/weico/international/utility/GetFileSizeUtil;->FormetFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2351
    :cond_0
    iget-object p1, p1, Lcom/weico/international/flux/Events$MainCacheSizeUpdateEvent;->size:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 2349
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$MainFragmentToolbarUpdateEvent;)V
    .locals 7

    .line 2361
    iget-object v0, p1, Lcom/weico/international/flux/Events$MainFragmentToolbarUpdateEvent;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    return-void

    .line 2365
    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p1, Lcom/weico/international/flux/Events$MainFragmentToolbarUpdateEvent;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v5, 0x7f0f0098

    const v6, 0x7f0f0096

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 2366
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 2367
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 2368
    iget-object p1, p1, Lcom/weico/international/flux/Events$MainFragmentToolbarUpdateEvent;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0801cc

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$NetworkInterceptorEvent;)V
    .locals 0

    const p1, 0x7f0f00df

    .line 2147
    invoke-static {p1}, Lcom/weico/international/manager/UIManager;->showSystemToast(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$OpenAppEvent;)V
    .locals 9

    .line 2203
    :try_start_0
    iget-object v3, p1, Lcom/weico/international/flux/Events$OpenAppEvent;->update:Lcom/weico/international/flux/model/UpdateConfig;

    .line 2205
    invoke-virtual {v3}, Lcom/weico/international/flux/model/UpdateConfig;->isForceUpdate()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "KEY_OPEN_APP"

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    return-void

    .line 2208
    :cond_0
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/weico/international/activity/v4/Setting;->saveLong(Ljava/lang/String;J)V

    .line 2212
    iget-boolean v0, p1, Lcom/weico/international/flux/Events$OpenAppEvent;->downloaded:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f01e5

    goto :goto_0

    :cond_1
    const v0, 0x7f0f015e

    .line 2218
    :goto_0
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/weico/international/manager/UIManager;->theRunningActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2219
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    .line 2221
    :cond_2
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0b00a2

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0901e4

    .line 2222
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2223
    invoke-virtual {v3}, Lcom/weico/international/flux/model/UpdateConfig;->getFeatures()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f06009e

    .line 2224
    invoke-static {v5}, Lcom/weico/international/utility/Res;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v5, 0x7f0901ea

    .line 2225
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 2227
    new-instance v6, Lcom/qihuan/core/EasyDialog$Builder;

    invoke-direct {v6, v1}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f039b

    .line 2228
    invoke-virtual {v6, v1}, Lcom/qihuan/core/EasyDialog$Builder;->title(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v1

    const/4 v6, 0x0

    .line 2229
    invoke-virtual {v1, v2, v6}, Lcom/qihuan/core/EasyDialog$Builder;->customView(Landroid/view/View;Z)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v1

    .line 2230
    invoke-virtual {v1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->positiveText(I)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    .line 2231
    invoke-virtual {v0, v6}, Lcom/qihuan/core/EasyDialog$Builder;->autoDismiss(Z)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object v0

    .line 2233
    invoke-virtual {v3}, Lcom/weico/international/flux/model/UpdateConfig;->isForceUpdate()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x7f0f0096

    .line 2234
    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->negativeText(I)Lcom/qihuan/core/EasyDialog$Builder;

    goto :goto_1

    .line 2236
    :cond_3
    invoke-virtual {v0, v6}, Lcom/qihuan/core/EasyDialog$Builder;->cancelable(Z)Lcom/qihuan/core/EasyDialog$Builder;

    .line 2238
    :goto_1
    new-instance v1, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v1}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    invoke-virtual {v0, v1}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    .line 2239
    invoke-virtual {v0}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v6

    const/4 v0, -0x1

    .line 2240
    invoke-virtual {v6, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    new-instance v8, Lcom/weico/international/activity/MainFragmentActivity$33;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/weico/international/activity/MainFragmentActivity$33;-><init>(Lcom/weico/international/activity/MainFragmentActivity;Lcom/weico/international/flux/Events$OpenAppEvent;Lcom/weico/international/flux/model/UpdateConfig;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$RequestOpenCamera;)V
    .locals 3

    .line 2433
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_1

    sget-boolean p1, Lcom/weico/international/WApplication;->isForceSystemCamera:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2456
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/weico/international/camera/CameraSendActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2457
    sget-object v0, Lcom/weico/international/utility/Constant$Transaction;->PRESENT_UP:Lcom/weico/international/utility/Constant$Transaction;

    invoke-static {p1, v0}, Lcom/weico/international/WIActions;->startActivityWithAction(Landroid/content/Intent;Lcom/weico/international/utility/Constant$Transaction;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 2435
    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const v1, 0x7f0f034f

    const v2, 0x7f06009e

    invoke-static {v1, v2}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const v1, 0x7f0f0350

    invoke-static {v1, v2}, Lcom/weico/international/utility/Res;->getColoredString(II)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v0

    .line 2436
    new-instance v0, Lcom/qihuan/core/EasyDialog$Builder;

    invoke-direct {v0, p0}, Lcom/qihuan/core/EasyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2437
    invoke-virtual {v0, p1}, Lcom/qihuan/core/EasyDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/weico/international/activity/MainFragmentActivity$34;

    invoke-direct {v0, p0}, Lcom/weico/international/activity/MainFragmentActivity$34;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    .line 2438
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->itemsCallback(Lcom/qihuan/core/EasyDialog$ListCallback;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/skin/loader/OnSkinDialogShowListener;

    invoke-direct {v0}, Lcom/skin/loader/OnSkinDialogShowListener;-><init>()V

    .line 2452
    invoke-virtual {p1, v0}, Lcom/qihuan/core/EasyDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/qihuan/core/EasyDialog$Builder;

    move-result-object p1

    .line 2453
    invoke-virtual {p1}, Lcom/qihuan/core/EasyDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const p1, 0x7f0f00d6

    .line 2461
    invoke-static {p1}, Lcom/weico/international/manager/UIManager;->showSystemToast(I)V

    :goto_1
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$UserInformationUpdateEvent;)V
    .locals 1

    .line 2408
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->isUnlogin()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2410
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getScreen_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2411
    invoke-static {p0}, Lcom/weico/international/utility/ImageLoaderKt;->with(Landroid/content/Context;)Lcom/weico/international/utility/ImageLoader;

    move-result-object p1

    .line 2412
    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUser()Lcom/weico/international/model/sina/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weico/international/model/sina/User;->getAvatarHd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/weico/international/utility/ImageLoader;->load(Ljava/lang/String;)Lcom/weico/international/utility/ImageLoader;

    move-result-object p1

    const v0, 0x7f080061

    .line 2413
    invoke-virtual {p1, v0}, Lcom/weico/international/utility/ImageLoader;->placeholderRes(I)Lcom/weico/international/utility/ImageLoader;

    move-result-object p1

    sget-object v0, Lcom/weico/international/utility/Transformation;->RounderCorner:Lcom/weico/international/utility/Transformation;

    .line 2414
    invoke-virtual {p1, v0}, Lcom/weico/international/utility/ImageLoader;->transform(Lcom/weico/international/utility/Transformation;)Lcom/weico/international/utility/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mUserAvatar:Landroid/widget/ImageView;

    .line 2415
    invoke-virtual {p1, v0}, Lcom/weico/international/utility/ImageLoader;->into(Landroid/widget/ImageView;)V

    .line 2416
    iget-object p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mProfileCover:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->showProfileBg(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$androidNScheduleJobEvent;)V
    .locals 2

    .line 2007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 2008
    iget p1, p1, Lcom/weico/international/flux/Events$androidNScheduleJobEvent;->type:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->finishJob()V

    const/4 p1, 0x0

    .line 2037
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->scheduleJob(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "jobscheduler"

    .line 2018
    invoke-virtual {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 2022
    sget-object p1, Lcom/weico/international/other/MsgPullManager;->INSTANCE:Lcom/weico/international/other/MsgPullManager;

    invoke-virtual {p1}, Lcom/weico/international/other/MsgPullManager;->fetchUnreadMsg()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/weico/international/flux/Events$errorNeedCptEvent;)V
    .locals 2

    .line 2425
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/weico/international/activity/VerifiedCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2426
    iget-object p1, p1, Lcom/weico/international/flux/Events$errorNeedCptEvent;->errorString:Ljava/lang/String;

    const-string v1, "json"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2427
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 870
    invoke-super {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 871
    invoke-direct {p0, p1}, Lcom/weico/international/activity/MainFragmentActivity;->handleIntent(Landroid/content/Intent;)I

    move-result p1

    iput p1, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpTo:I

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1369
    :try_start_0
    invoke-super {p0, p1}, Lcom/weico/international/activity/BaseFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1371
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 876
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->onResume()V

    .line 880
    iget-boolean v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->isSetting:Z

    if-nez v0, :cond_0

    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    goto :goto_0

    .line 886
    :cond_1
    invoke-static {}, Lcom/weico/international/manager/preferences/WIPreferences;->getInstance()Lcom/weico/international/manager/preferences/WIPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "G_keyBrowsingHistory_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/weico/international/manager/preferences/WIPreferences;->getBoolValue(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 890
    :cond_2
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->navBrowsingItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 6

    .line 909
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->onStart()V

    .line 911
    iget-boolean v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->isActive:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 912
    iput-boolean v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->isActive:Z

    .line 914
    :cond_0
    invoke-static {}, Lcom/weico/international/manager/UIManager;->getInstance()Lcom/weico/international/manager/UIManager;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/weico/international/manager/UIManager;->isZoomOut:Z

    .line 917
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/weico/international/activity/MainFragmentActivity$15;

    invoke-direct {v3, p0}, Lcom/weico/international/activity/MainFragmentActivity$15;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 925
    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpTo:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 926
    iget-object v4, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v4, v0}, Lcom/weico/international/view/FragmentTabHost;->setCurrentTab(I)V

    .line 927
    iput v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->cJumpTo:I

    .line 928
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFTabHost:Lcom/weico/international/view/FragmentTabHost;

    invoke-virtual {v0}, Lcom/weico/international/view/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 929
    iget-object v3, p0, Lcom/weico/international/activity/MainFragmentActivity;->cFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 930
    instance-of v3, v0, Lcom/weico/international/fragment/SeaMessageFragment;

    if-eqz v3, :cond_3

    .line 931
    check-cast v0, Lcom/weico/international/fragment/SeaMessageFragment;

    .line 932
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getcJumpToWithMessageType()I

    move-result v3

    const v4, 0x989685

    if-eq v3, v4, :cond_2

    const v1, 0x989689

    if-eq v3, v1, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 955
    sget-object v1, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->atNumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    goto :goto_0

    .line 952
    :pswitch_0
    sget-object v1, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->dmNumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    goto :goto_0

    .line 948
    :pswitch_1
    sget-object v1, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->cmtNumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    goto :goto_0

    .line 937
    :pswitch_2
    sget-object v1, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->atNumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    goto :goto_0

    .line 945
    :cond_1
    sget-object v1, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->likenumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    goto :goto_0

    .line 941
    :cond_2
    sget-object v2, Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;->atNumber:Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;

    move-object v1, v2

    const/4 v2, 0x1

    .line 957
    :goto_0
    invoke-virtual {v0}, Lcom/weico/international/fragment/SeaMessageFragment;->isClickRefreshing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 958
    invoke-virtual {v0, v1, v2}, Lcom/weico/international/fragment/SeaMessageFragment;->changeToMessageTabByNotify(Lcom/weico/international/model/sina/UnreadMsg$MaxNumberType;I)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x989681
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 0

    .line 900
    invoke-super {p0}, Lcom/weico/international/activity/BaseFragmentActivity;->onStop()V

    return-void
.end method

.method public scheduleJob(Z)V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 2553
    new-instance p1, Landroid/app/job/JobInfo$Builder;

    iget v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mJobId:I

    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mServiceComponent:Landroid/content/ComponentName;

    invoke-direct {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 2566
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 2568
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 2569
    iget v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->delayTime:I

    int-to-long v1, v1

    const-string v3, "com.weico.international.WORK_DURATION_KEY"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 2570
    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    const-string v0, "jobscheduler"

    .line 2573
    invoke-virtual {p0, v0}, Lcom/weico/international/activity/MainFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_0

    .line 2574
    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2576
    :try_start_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, ""

    .line 2578
    invoke-static {p1}, Lcom/weico/international/utility/LogUtil;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public showMenu()V
    .locals 2

    .line 1754
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    :cond_0
    return-void
.end method

.method protected startLocation()V
    .locals 2

    .line 842
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 844
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    const/4 v1, 0x1

    .line 845
    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setOnceLocation(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 846
    iget-object v1, p0, Lcom/weico/international/activity/MainFragmentActivity;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 847
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    new-instance v1, Lcom/weico/international/activity/MainFragmentActivity$13;

    invoke-direct {v1, p0}, Lcom/weico/international/activity/MainFragmentActivity$13;-><init>(Lcom/weico/international/activity/MainFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 854
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    return-void
.end method

.method public uploadLocationIfNeed()V
    .locals 4

    .line 659
    invoke-static {}, Lcom/weico/international/activity/v4/Setting;->getInstance()Lcom/weico/international/activity/v4/Setting;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/weico/international/manager/accounts/AccountsStore;->getCurUserId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_upload_gps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weico/international/activity/v4/Setting;->loadBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/weico/international/activity/MainFragmentActivity;->me:Lcom/weico/international/activity/BaseFragmentActivity;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lpermissions/dispatcher/PermissionUtils;->hasSelfPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/weico/international/activity/MainFragmentActivity;->startLocation()V

    :cond_0
    return-void
.end method
