.class public final Lcom/weico/international/other/UpdateDownloadManager;
.super Ljava/lang/Object;
.source "UpdateDownloadManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/weico/international/other/UpdateDownloadManager;",
        "",
        "()V",
        "checkApkExist",
        "",
        "update",
        "Lcom/weico/international/flux/model/UpdateConfig;",
        "doForceUpdate",
        "",
        "doSilentUpdate",
        "doUpdate",
        "download",
        "Lcom/weico/international/manager/IDownloadManager;",
        "callback",
        "Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;",
        "generateApkPath",
        "",
        "Weico_WeicoSeaRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/weico/international/other/UpdateDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/weico/international/other/UpdateDownloadManager;

    invoke-direct {v0}, Lcom/weico/international/other/UpdateDownloadManager;-><init>()V

    sput-object v0, Lcom/weico/international/other/UpdateDownloadManager;->INSTANCE:Lcom/weico/international/other/UpdateDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final doForceUpdate(Lcom/weico/international/flux/model/UpdateConfig;)V
    .locals 3

    .line 77
    invoke-virtual {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->checkApkExist(Lcom/weico/international/flux/model/UpdateConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$OpenAppEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/weico/international/flux/Events$OpenAppEvent;-><init>(Lcom/weico/international/flux/model/UpdateConfig;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$OpenAppEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/weico/international/flux/Events$OpenAppEvent;-><init>(Lcom/weico/international/flux/model/UpdateConfig;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private final doSilentUpdate(Lcom/weico/international/flux/model/UpdateConfig;)V
    .locals 3

    .line 56
    invoke-virtual {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->checkApkExist(Lcom/weico/international/flux/model/UpdateConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u672c\u5730\u5df2\u5b58\u5728"

    .line 58
    invoke-static {v0}, Lcom/weico/international/utility/LogUtil;->d(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$OpenAppEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/weico/international/flux/Events$OpenAppEvent;-><init>(Lcom/weico/international/flux/model/UpdateConfig;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void

    .line 63
    :cond_0
    new-instance v0, Lcom/weico/international/other/UpdateDownloadManager$doSilentUpdate$1;

    invoke-direct {v0, p1}, Lcom/weico/international/other/UpdateDownloadManager$doSilentUpdate$1;-><init>(Lcom/weico/international/flux/model/UpdateConfig;)V

    check-cast v0, Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;

    invoke-virtual {p0, p1, v0}, Lcom/weico/international/other/UpdateDownloadManager;->download(Lcom/weico/international/flux/model/UpdateConfig;Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;)Lcom/weico/international/manager/IDownloadManager;

    return-void
.end method


# virtual methods
.method public final checkApkExist(Lcom/weico/international/flux/model/UpdateConfig;)Z
    .locals 3
    .param p1    # Lcom/weico/international/flux/model/UpdateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-virtual {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->generateApkPath(Lcom/weico/international/flux/model/UpdateConfig;)Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 49
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/weico/international/lib/andfix/ApkUtil;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileMD5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/weico/international/utility/LogUtil;->d(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->fileMd5()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final doUpdate(Lcom/weico/international/flux/model/UpdateConfig;)V
    .locals 3
    .param p1    # Lcom/weico/international/flux/model/UpdateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_3

    const/16 v0, 0xc6c

    .line 25
    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->getLatest_version()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->isForceUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-direct {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->doForceUpdate(Lcom/weico/international/flux/model/UpdateConfig;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->isSilentMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-direct {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->doSilentUpdate(Lcom/weico/international/flux/model/UpdateConfig;)V

    goto :goto_0

    :cond_2
    const-string v0, "\u901a\u77e5\u7528\u6237\u66f4\u65b0"

    .line 36
    invoke-static {v0}, Lcom/weico/international/utility/LogUtil;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/weico/international/flux/Events$OpenAppEvent;

    invoke-virtual {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->checkApkExist(Lcom/weico/international/flux/model/UpdateConfig;)Z

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/weico/international/flux/Events$OpenAppEvent;-><init>(Lcom/weico/international/flux/model/UpdateConfig;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 27
    check-cast p1, Lcom/weico/international/flux/model/UpdateConfig;

    sput-object p1, Lcom/weico/international/WApplication;->needUpdate:Lcom/weico/international/flux/model/UpdateConfig;

    return-void
.end method

.method public final download(Lcom/weico/international/flux/model/UpdateConfig;Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;)Lcom/weico/international/manager/IDownloadManager;
    .locals 3
    .param p1    # Lcom/weico/international/flux/model/UpdateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lcom/weico/international/manager/ManagerFactory;->INSTANCE:Lcom/weico/international/manager/ManagerFactory;

    const-class v1, Lcom/weico/international/manager/IDownloadManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/weico/international/manager/ManagerFactory;->getManager(Ljava/lang/Class;Z)Lcom/weico/international/manager/IWeicoManager;

    move-result-object v0

    check-cast v0, Lcom/weico/international/manager/IDownloadManager;

    .line 95
    invoke-interface {v0, p2}, Lcom/weico/international/manager/IDownloadManager;->enableCallback(Lcom/weico/international/manager/IDownloadManager$IDownloadCallback;)Lcom/weico/international/manager/IDownloadManager;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p1}, Lcom/weico/international/other/UpdateDownloadManager;->generateApkPath(Lcom/weico/international/flux/model/UpdateConfig;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/weico/international/manager/IDownloadManager;->startDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final generateApkPath(Lcom/weico/international/flux/model/UpdateConfig;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/weico/international/flux/model/UpdateConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/weico/international/utility/Constant;->SD_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/weibosea"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/weico/international/flux/model/UpdateConfig;->getLatest_version()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "default"

    .line 42
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
