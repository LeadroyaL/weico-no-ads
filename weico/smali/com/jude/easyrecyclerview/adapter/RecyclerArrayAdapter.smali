.class public abstract Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$StateViewHolder;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$GridSpanSizeLookup;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemLongClickListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemClickListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnLoadMoreListener;,
        Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected footers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;",
            ">;"
        }
    .end annotation
.end field

.field protected isFullSpan:Z

.field private mContext:Landroid/content/Context;

.field protected mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

.field protected mItemClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemClickListener;

.field protected mItemLongClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemLongClickListener;

.field private final mLock:Ljava/lang/Object;

.field private mNotifyOnChange:Z

.field protected mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    .line 74
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    .line 74
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[TT;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    .line 74
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    .line 93
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->init(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method private createSpViewByType(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 5

    .line 587
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    .line 588
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 589
    invoke-interface {v1, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 591
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 592
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 594
    :cond_1
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 595
    :goto_0
    iget-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 596
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    .line 601
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 602
    invoke-interface {v1, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 604
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 605
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 607
    :cond_4
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    .line 608
    :goto_1
    iget-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    .line 609
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 107
    sget-boolean v0, Lcom/jude/easyrecyclerview/EasyRecyclerView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "EasyRecyclerView"

    .line 108
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public OnBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;I)V
    .locals 1

    .line 685
    invoke-virtual {p0, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->setData(Ljava/lang/Object;I)V

    return-void
.end method

.method public abstract OnCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;
.end method

.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->addData(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 339
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 343
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 344
    :cond_3
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    .line 345
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "add notifyItemInserted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation


if-eqz p1, :goto_old
invoke-interface {p1},Ljava/util/Collection;->isEmpty()Z
move-result v0
if-nez v0, :goto_old
invoke-interface {p1},Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:loop_start
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :goto_old
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Lcom/weico/international/model/sina/Status;
if-eqz v2, :loop_start
check-cast v1, Lcom/weico/international/model/sina/Status;
invoke-virtual {v1}, Lcom/weico/international/model/sina/Status;->getViewType()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
const-string v4, "ccttff"
invoke-static {v4,v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v1}, Lcom/weico/international/model/sina/Status;->getText()Ljava/lang/String;
move-result-object v3
invoke-static {v4,v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
iget-boolean v2,v1,Lcom/weico/international/model/sina/Status;->isUVEAd:Z
invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v3
invoke-static {v4,v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
if-nez v2,:remove
goto :loop_start
:remove
invoke-interface {v0},Ljava/util/Iterator;->remove()V
const-string v4, "ccttff"
const-string v3, "remove it!"
invoke-static {v4,v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :loop_start



    :goto_old


    .line 354
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 355
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    invoke-interface {v0, v2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->addData(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 356
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    .line 361
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 362
    :goto_2
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 363
    :cond_4
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_5

    .line 364
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    .line 365
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAll notifyItemRangeInserted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    array-length v2, p1

    :goto_0
    invoke-interface {v0, v2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->addData(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 376
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 379
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    .line 381
    :cond_3
    array-length v1, p1

    .line 382
    :goto_2
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 383
    :cond_4
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_5

    .line 384
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    .line 385
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAll notifyItemRangeInserted "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public addFooter(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 174
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 175
    invoke-virtual {p0, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->addFooter(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    :goto_0
    return-void

    .line 173
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ItemView can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addFooter(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    return-void

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ItemView can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeader(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 147
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 148
    invoke-virtual {p0, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->addHeader(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ItemView can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeader(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "ItemView can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaders(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 157
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ItemView list can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 505
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->clear()V

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 508
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 510
    :cond_1
    iget-boolean v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeRemoved(II)V

    .line 511
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear notifyItemRangeRemoved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 508
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public createMoreView()V
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->reCreateView()V

    return-void
.end method

.method public disableFullSpan()V
    .locals 1

    const/4 v0, 0x0

    .line 549
    iput-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->isFullSpan:Z

    return-void
.end method

.method public easyOnBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p2, v0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public getAllData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataUsedInStore()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    return-object v0
.end method

.method public getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jude/easyrecyclerview/adapter/DefaultEventDelegate;

    invoke-direct {v0, p0}, Lcom/jude/easyrecyclerview/adapter/DefaultEventDelegate;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;)V

    iput-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    return-object v0
.end method

.method public getFooter(I)Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    return-object p1
.end method

.method public getFooterCount()I
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeader(I)Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    return-object p1
.end method

.method public getHeaderCount()I
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 735
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 708
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getViewType(I)I

    move-result p1

    return p1
.end method

.method public getPosition(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 745
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public insert(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 434
    :cond_0
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, p2

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemInserted(I)V

    .line 435
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert notifyItemRangeInserted "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 432
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public insertAll(Ljava/util/Collection;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 464
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 465
    :goto_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 466
    :cond_1
    iget-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    .line 467
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertAll notifyItemRangeInserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 463
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public insertAll([Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 448
    :cond_0
    array-length p1, p1

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz v0, :cond_1

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 450
    :cond_1
    iget-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeInserted(II)V

    .line 451
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertAll notifyItemRangeInserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 447
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyMyObserverChange()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    :cond_0
    return-void
.end method

.method public obtainGridSpanSizeLookUp(I)Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$GridSpanSizeLookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter<",
            "TT;>.GridSpanSize",
            "Lookup;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$GridSpanSizeLookup;

    invoke-direct {v0, p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$GridSpanSizeLookup;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;I)V

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 51
    check-cast p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->onBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    check-cast p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->onBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;I)V
    .locals 2

    .line 670
    iget-object v0, p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setId(I)V

    .line 671
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    iget-object p1, p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;->onBindView(Landroid/view/View;)V

    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 677
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-ltz v0, :cond_1

    .line 678
    iget-object p2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;

    iget-object p1, p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p2, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;->onBindView(Landroid/view/View;)V

    return-void

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->OnBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 654
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->easyOnBindViewHolder(Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;
    .locals 1

    .line 618
    invoke-direct {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->createSpViewByType(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 620
    new-instance p1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$StateViewHolder;

    invoke-direct {p1, p0, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$StateViewHolder;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;Landroid/view/View;)V

    return-object p1

    .line 623
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->OnCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;

    move-result-object p1

    .line 626
    iget-object p2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mItemClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemClickListener;

    if-eqz p2, :cond_1

    .line 627
    iget-object p2, p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$3;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 635
    :cond_1
    iget-object p2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mItemLongClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemLongClickListener;

    if-eqz p2, :cond_2

    .line 636
    iget-object p2, p1, Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$4;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;Lcom/jude/easyrecyclerview/adapter/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-object p1
.end method

.method public pauseMore()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->pauseLoadMore()V

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You should invoking setLoadMore() first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    .line 324
    instance-of v0, p1, Lcom/jude/easyrecyclerview/EasyRecyclerView$EasyDataObserver;

    if-eqz v0, :cond_0

    .line 325
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    goto :goto_0

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :goto_0
    return-void
.end method

.method public remove(I)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 494
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 496
    :cond_0
    iget-boolean v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRemoved(I)V

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove notifyItemRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 494
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 479
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 480
    :cond_0
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRemoved(I)V

    .line 481
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove notifyItemRemoved "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->log(Ljava/lang/String;)V

    .line 483
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllFooter()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 191
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public removeAllHeader()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, v1, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public removeFooter(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 230
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->footers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    invoke-virtual {p0, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeHeader(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0, v0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeMoreView()V
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->removeView()V

    return-void
.end method

.method public resumeMore()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {v0}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->resumeLoadMore()V

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You should invoking setLoadMore() first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setError(I)V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setErrorMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V

    return-void
.end method

.method public setError(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setErrorMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V

    return-void
.end method

.method public setError(Landroid/view/View;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setErrorMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V

    return-void
.end method

.method public setError(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setErrorMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnErrorListener;)V

    return-void
.end method

.method public setItem(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)V"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    if-ne p1, v0, :cond_2

    .line 396
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 397
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->addData(I)V

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    :cond_1
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 403
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->addAll(Ljava/util/Collection;)V

    return-void

    :catchall_0
    move-exception p1

    .line 403
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnLoadMoreListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    new-instance v1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$1;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnLoadMoreListener;)V

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V

    return-void
.end method

.method public setMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V

    return-void
.end method

.method public setMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnLoadMoreListener;)V
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    new-instance v1, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$2;

    invoke-direct {v1, p0, p2}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$2;-><init>(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnLoadMoreListener;)V

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V

    return-void
.end method

.method public setMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnMoreListener;)V

    return-void
.end method

.method public setMyItem(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    return-void
.end method

.method public setNoMore(I)V
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setNoMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V

    return-void
.end method

.method public setNoMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setNoMore(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V

    return-void
.end method

.method public setNoMore(Landroid/view/View;)V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setNoMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V

    return-void
.end method

.method public setNoMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V
    .locals 1

    .line 291
    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->getEventDelegate()Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->setNoMore(Landroid/view/View;Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnNoMoreListener;)V

    return-void
.end method

.method public setNotifyOnChange(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemClickListener;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mItemClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemLongClickListener;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mItemLongClickListener:Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$OnItemLongClickListener;

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mObjects:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-boolean p1, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mNotifyOnChange:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 523
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stopMore()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->mEventDelegate:Lcom/jude/easyrecyclerview/adapter/EventDelegate;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/jude/easyrecyclerview/adapter/EventDelegate;->stopLoadMore()V

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "You should invoking setLoadMore() first"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateHeader(ILcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter$ItemView;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0, p1}, Lcom/jude/easyrecyclerview/adapter/RecyclerArrayAdapter;->notifyItemChanged(I)V

    return-void
.end method
